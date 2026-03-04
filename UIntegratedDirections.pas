unit UIntegratedDirections;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VCL.TMSFNCTypes, VCL.TMSFNCUtils,
  VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, Vcl.StdCtrls,
  VCL.TMSFNCWebBrowser, VCL.TMSFNCCustomControl, VCL.TMSFNCMaps,
  VCL.TMSFNCGoogleMaps, Vcl.ExtCtrls;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    TMSFNCGoogleMaps1: TTMSFNCGoogleMaps;
    TMSFNCWebBrowser1: TTMSFNCWebBrowser;
    Label1: TLabel;
    edAPIKey: TEdit;
    Label2: TLabel;
    edOrigin: TEdit;
    Label3: TLabel;
    edDestination: TEdit;
    Label4: TLabel;
    cbTravelMode: TComboBox;
    Label5: TLabel;
    btShowDirections: TButton;
    btClearDirections: TButton;
    Label6: TLabel;
    lbDescription: TLabel;
    lbDuration: TLabel;
    lbDistance: TLabel;
    Label7: TLabel;
    cbColor: TComboBox;
    procedure edAPIKeyChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TMSFNCGoogleMaps1RetrievedDirectionsData(Sender: TObject;
      AEventData: TTMSFNCMapsEventData;
      ADirectionsData: TTMSFNCGoogleMapsDirectionsData);
    procedure btShowDirectionsClick(Sender: TObject);
    procedure btClearDirectionsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    htmlstyle: string;
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.btClearDirectionsClick(Sender: TObject);
begin
  btShowDirections.Enabled := True;
  TMSFNCGoogleMaps1.ClearDirections;
  TMSFNCWebBrowser1.LoadHTML(htmlstyle);
  lbDescription.Caption := '';
  lbDistance.Caption := '';
  lbDuration.Caption := '';
  edOrigin.Text := '';
  edDestination.Text := '';
end;

procedure TForm4.btShowDirectionsClick(Sender: TObject);
var
  color: TTMSFNCGraphicsColor;
begin
  if (edOrigin.Text <> '') and (edDestination.Text <> '') then
  begin
    if cbColor.ItemIndex = 0 then
      color := gcBlue
    else
      color := gcRed;

    btShowDirections.Enabled := False;
    TMSFNCGoogleMaps1.AddDirections(edOrigin.Text, edDestination.Text, True, True, color, 2, 1, TTMSFNCGoogleMapsDirectionsTravelMode(cbTravelMode.ItemIndex));
  end
  else
    ShowMessage('Please fill in the Origin and Destination fields first.');
end;

procedure TForm4.edAPIKeyChange(Sender: TObject);
begin
  TMSFNCGoogleMaps1.BeginUpdate;
  TMSFNCGoogleMaps1.APIKey := edAPIKey.Text;
  TMSFNCGoogleMaps1.EndUpdate;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  htmlstyle := '<style>' +
        'body {font-family: Arial, sans-serif; font-size: 0.9em; background-color: #F0F0F0;} ' +
        'ol { list-style: none; counter-reset: item} ' +
        'li { counter-increment: item; margin-bottom: 5px;} ' +
        'li:before { margin-right: 10px;  margin-bottom: 10px; padding: 5px; content: counter(item); border-radius: 50%; background-color: gray; width: 1.5em; display: inline-block; color: white; text-align: center;} ' +
        '</style>';
  TMSFNCWebBrowser1.LoadHTML(htmlstyle);
  lbDistance.Caption := '';
  lbDuration.Caption := '';
end;

procedure TForm4.TMSFNCGoogleMaps1RetrievedDirectionsData(Sender: TObject;
  AEventData: TTMSFNCMapsEventData;
  ADirectionsData: TTMSFNCGoogleMapsDirectionsData);
var
  I, J: Integer;
  html: string;
begin
  btShowDirections.Enabled := True;
  lbDescription.Caption := '';
  lbDistance.Caption := '';
  lbDuration.Caption := '';
  html := htmlstyle;

  if Length(ADirectionsData.Routes) > 0 then
  begin
    lbDescription.Caption := ADirectionsData.Routes[0].Name;

    for I := 0 to Length(ADirectionsData.Routes[0].Legs) - 1 do
    begin
      lbDuration.Caption := IntToStr(Round(ADirectionsData.Routes[0].Legs[I].Duration / 60)) + ' min';
      lbDistance.Caption := FormatFloat('0', ADirectionsData.Routes[0].Legs[I].Distance / 1000) + ' km';

      html := html + '<ol>';

      for J := 0 to Length(ADirectionsData.Routes[0].Legs[I].Steps) - 1 do
      begin
        html := html +
          '<li><b>' + FormatFloat('0.00', ADirectionsData.Routes[0].Legs[I].Steps[J].Distance / 1000) + ' km | ' +
          IntToStr(Round(ADirectionsData.Routes[0].Legs[I].Steps[J].Duration / 60)) + ' min </b><br>' +
          ADirectionsData.Routes[0].Legs[I].Steps[J].Instructions + '<br><br></li>';
      end;

      html := html + '</ol>';
    end;
  end
  else
    ShowMessage('Directions could not be calculated for the provided Origin and Destination values.');

  TMSFNCWebBrowser1.LoadHTML(html);
end;

end.
