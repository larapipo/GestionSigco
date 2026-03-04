unit WooCommerceAPI;

interface

uses
  System.SysUtils, System.Classes, REST.Types, REST.Client,
  REST.Authenticator.Basic, REST.Response.Adapter, System.JSON;

type
  TWooCommerceResponse = record
    Status: Integer;
    Content: String;
    Total: Integer;
    TotalPages: Integer;
  end;

  TWooCommerceAPI = class(TComponent)
  private
    FRESTClient: TRESTClient;
    FRESTResponseDataSetAdapter: TRESTResponseDataSetAdapter;
    FUser: string;
    FSecret: string;
    FStoreURL: string;
    FVersion: string;
    function DoRequest(Method: TRESTRequestMethod;
      const AEndPoint, ABody: string): TWooCommerceResponse;
  public
    constructor Create(const AStoreURL, AUser, ASecret: string); overload;
    constructor Create(const AStoreURL, AUser, ASecret,
      AVersion: string); overload;
    destructor Destroy; override;
    function Get(const AEndPoint: string): TWooCommerceResponse;
    function Post(const AEndPoint, ABody: string): TWooCommerceResponse;
    function Put(const AEndPoint, ABody: string): TWooCommerceResponse;
    function Delete(const AEndPoint: string): TWooCommerceResponse;
    property Adapter: TRESTResponseDataSetAdapter
      read FRESTResponseDataSetAdapter;
  end;

implementation

constructor TWooCommerceAPI.Create(const AStoreURL, AUser, ASecret: string);
begin
  Create(AStoreURL, AUser, ASecret, 'wc/v3');
end;

constructor TWooCommerceAPI.Create(const AStoreURL, AUser, ASecret,
  AVersion: string);
begin
  FUser     := AUser;
  FSecret   := ASecret;
  FStoreURL := AStoreURL;
  if not AVersion.IsEmpty then
    FVersion := AVersion
  else
    FVersion := 'wc/v3';

  FRESTClient                            := TRESTClient.Create(FStoreURL + '/wp-json/' + FVersion);
  FRESTClient.Authenticator              := THTTPBasicAuthenticator.Create(FUser, FSecret);
  FRESTResponseDataSetAdapter            := TRESTResponseDataSetAdapter.Create(nil);
  FRESTResponseDataSetAdapter.AutoUpdate := False;
end;

destructor TWooCommerceAPI.Destroy;
begin
  try
    FRESTResponseDataSetAdapter.Response := nil;
  finally
    FRESTResponseDataSetAdapter.Active := false;
    FRESTResponseDataSetAdapter.Dataset := nil;
    FRESTResponseDataSetAdapter.Free;

    FRESTClient.Authenticator.Free;
    FRESTClient.Free;
  end;
end;

function TWooCommerceAPI.DoRequest(Method: TRESTRequestMethod;
  const AEndPoint, ABody: string): TWooCommerceResponse;

  function getHeaderValue(header: string): string;
  var
    pos: Integer;
  begin
    pos := header.IndexOf('=');
    if (pos <> -1) then
    begin
      Result := header.Substring(pos + 1);
    end;
  end;

var
  FRESTRequest: TRESTRequest;
  FRESTResponse: TRESTResponse;
begin
  FRESTRequest := TRESTRequest.Create(nil);
  FRESTResponse := TRESTResponse.Create(nil);
  try
    FRESTResponse.ContentEncoding := 'UTF-8';
    FRESTRequest.Client           := FRESTClient;
    FRESTRequest.Response         := FRESTResponse;
    try
      FRESTResponseDataSetAdapter.Response := nil;
    finally
      FRESTResponseDataSetAdapter.Active := false;
    end;

    Result.Total          := 0;
    Result.TotalPages     := 0;
    FRESTRequest.Method   := Method;
    FRESTRequest.Resource := AEndPoint;
    if (ABody <> string.Empty) AND ((Method = TRESTRequestMethod.rmPOST) OR
      (Method = TRESTRequestMethod.rmPUT)) then
    begin
      FRESTRequest.AddBody(ABody, TRESTContentType.ctAPPLICATION_JSON);
    end;
    try
      try
        FRESTRequest.Execute;
      except
        // Handling host offline exception
      end;
    finally
      Result.Status := FRESTResponse.StatusCode;
      try
        Result.Content := FRESTResponse.JSONValue.ToString;
      except
        Result.Content := FRESTResponse.Content;
      end;

      try
        if (Method = TRESTRequestMethod.rmGET) and
          (FRESTResponse.StatusCode = 200) then
        begin
          // FRESTResponseDataSetAdapter.ResponseJSON := TRESTResponseJSON.Create(self, FRESTResponse.JSONValue, true);
          FRESTResponseDataSetAdapter.Response       := FRESTResponse;
          FRESTResponseDataSetAdapter.StringFieldSize:= 1000;
          FRESTResponseDataSetAdapter.Active         := true;
        end
        else
          FRESTResponseDataSetAdapter.ResponseJSON := nil;
      except
        FRESTResponseDataSetAdapter.ResponseJSON := nil;
      end;

      for var s in FRESTResponse.Headers do
      begin
        try
          var
          key := s.Substring(0, s.IndexOf('='));

          if (key = 'X-WP-TotalPages') then
            Result.TotalPages := getHeaderValue(s).ToInteger
          else if (key = 'X-WP-Total') then
            Result.Total := getHeaderValue(s).ToInteger;
        except
        end;
      end;
    end;
  finally
    // FRESTResponseDataSetAdapter.Response:=nil;
    FRESTResponse.Free;
    FRESTRequest.Free;
  end;
end;

function TWooCommerceAPI.Get(const AEndPoint: string): TWooCommerceResponse;
begin
  Result := DoRequest(TRESTRequestMethod.rmGET, AEndPoint, '');
end;

function TWooCommerceAPI.Post(const AEndPoint, ABody: string)
  : TWooCommerceResponse;
begin
  Result := DoRequest(TRESTRequestMethod.rmPOST, AEndPoint, ABody);
end;

function TWooCommerceAPI.Put(const AEndPoint, ABody: string)
  : TWooCommerceResponse;
begin
  Result := DoRequest(TRESTRequestMethod.rmPUT, AEndPoint, ABody);
end;

function TWooCommerceAPI.Delete(const AEndPoint: string): TWooCommerceResponse;
begin
  Result := DoRequest(TRESTRequestMethod.rmDELETE, AEndPoint, '');
end;

end.
