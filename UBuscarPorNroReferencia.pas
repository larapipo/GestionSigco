unit UBuscarPorNroReferencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, StrUtils;

type
  TFormBuscarPorNroReferenica = class(TForm)
    Panel1: TPanel;
    edNumero: TEdit;
    Label1: TLabel;
    btOk: TBitBtn;
    btEscape: TBitBtn;
    QRempCheque: TFDQuery;
    QPresupuestos: TFDQuery;
    QOrdenPago: TFDQuery;
    QRecibos: TFDQuery;
    QTransFondos: TFDQuery;
    QRtoVta: TFDQuery;
    QComp: TFDQuery;
    QCompVta: TFDQuery;
    QRecepCab: TFDQuery;
    QRecepCabTIPOCPBTE: TStringField;
    procedure btOkClick(Sender: TObject);
    procedure btEscapeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edNumeroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FId:Integer;
    FTipo:String;
    FCompraVta:String;
  public
    { Public declarations }
    function  SeparaTipo(Text: string; var Tipo:string; var Nro: integer):boolean;
  published
    property Id:Integer Read Fid write Fid;
    property Tipo:String Read FTipo write FTipo;
    property CompraVta:String Read FCompraVta write FCompraVta;
  end;

var
  FormBuscarPorNroReferenica: TFormBuscarPorNroReferenica;

implementation

{$R *.dfm}
uses UDMain_FD;

function  TFormBuscarPorNroReferenica.SeparaTipo(Text: string; var Tipo:string; var Nro: integer):boolean;
var
  TCV, TNum:  string;    Aux, i: integer;
begin
  i     :=  0;
  TCV   :=  Tipo;
  TNum  :=  Text;
  while (i<4) and (Not TryStrToInt(TNum,Aux)) do
    begin
      TCV   :=  Trim(UpperCase(LeftStr(Text,i)));
      TNum  :=  Trim(RightStr(Text, Length(Text)-i));
      i     :=  i+1;
    end;

  if i<4 then
    begin
     Nro    :=  Aux;
     Tipo   :=  TCV;
     Result :=  true;
    end
  else
    begin
      Nro     := -1;
      Tipo    :=  '';
      Result  :=  False;
    end;
end;

procedure TFormBuscarPorNroReferenica.btOkClick(Sender: TObject);
var
  Text: string;
  QConsulta:TFDQuery;
begin
  QConsulta:=TFDQuery.Create(nil);
  QConsulta.Connection:=DMMain_FD.fdcGestion;

  Text  := Trim(EdNumero.text);
  if (Text <>'') and (SeparaTipo(Text,FCompraVta,FId)) then          /// SEPARA EL TIPO "X/XX" de la referencia numerica (EJ: PR55132=> TIPO:'PR' NUMERO: 55132)
   begin
     if (FCompraVta='NC') then FCompraVta   :='V';

     if FCompraVta='C' then
       begin
         QComp.Close;
         QComp.ParamByName('id').Value:=FId;
         QComp.Open;
         FTipo:=QComp.Fields[0].AsString;
         QComp.Close;
       end
     else
       if (FCompraVta='V') then
         begin
           QCompVta.Close;
           QCompVta.ParamByName('id').Value:=FId;
           QCompVta.Open;
           FTipo:=QCompVta.Fields[0].AsString;
           QCompVta.Close;
         end
       else
         if FCompraVta='R' then
           begin
             QRtoVta.Close;
             QRtoVta.ParamByName('id').Value:=FId;
             QRtoVta.Open;
             FTipo:=QRtoVta.Fields[0].AsString;
             QRtoVta.Close;
         end
       else
         if FCompraVta='O' then
           begin
             QOrdenPago.Close;
             QOrdenPago.ParamByName('id').Value:=FId;
             QOrdenPago.Open;
             FTipo:=QOrdenPago.Fields[0].AsString;
             QOrdenPago.Close;
           end
         else
           if FCompraVta='E' then
             begin
               QRecibos.Close;
               QRecibos.ParamByName('id').Value:=FId;
               QRecibos.Open;
               FTipo:=QRecibos.Fields[0].AsString;
               QRecibos.Close;
             end
           else
             if FCompraVta='X' then
               begin
                 QTransFondos.Close;
                 QTransFondos.ParamByName('id').Value:=FId;
                 QTransFondos.Open;
                 FTipo:=QTransFondos.Fields[0].AsString;
                 QTransFondos.Close;
               end
             else
               if FCompraVta='H' then
                 begin
                   QRempCheque.Close;
                   QRempCheque.ParamByName('id').Value:=FId;
                   QRempCheque.Open;
                   FTipo:=QRempCheque.Fields[0].AsString;
                   QRempCheque.Close;
                 end
               else
                 if FCompraVta='PR' then
                   begin
                     QPresupuestos.Close;
                     QPresupuestos.ParamByName('id').Value:=FId;
                     QPresupuestos.Open;
                     FTipo:=QPresupuestos.Fields[0].AsString;
                     QPresupuestos.Close;
                   end
                 else
                   if FCompraVta='OT' then
                     begin
                       QConsulta.Close;
                       QConsulta.Open('select o.tipocpbte from ordentrabajocab o where o.id_ot='+IntToStr(Fid)+'');
                       FTipo:=QConsulta.Fields[0].AsString;
                     end
                   else
                     if FCompraVta='nv' then
                       begin
                         QConsulta.Close;
                         QConsulta.Open('select n.id from notaventacab n where n.id='+IntToStr(Fid)+'');
                         if QConsulta.Fields[0].AsString<>'' then
                           FTipo:='nv'
                         else
                           FTipo:='';
                       end
                     else
                      if FCompraVta='PC' then
                        begin
                          QConsulta.Close;
                          QConsulta.Open('select f.tipocpbte from NPEDIDOCAB_CLIENTE f where f.id = '+IntToStr(Fid)+'');
                          FTipo:=QConsulta.Fields[0].AsString;
                        end
                      else
                        if FCompraVta='OC' then
                        begin
                          QConsulta.Close;
                          QConsulta.Open('select f.tipocpbte from ordencompracab f where f.id_oc ='+IntToStr(Fid)+'');
                          FTipo:=QConsulta.Fields[0].AsString;
                        end
                      else
                        if FCompraVta='RM' then
                          begin
                            QConsulta.Close;
                            QConsulta.Open('select rc.tipocpbte from recepmercacab rc where rc.id_recmer = '+IntToStr(Fid)+'');
                            FTipo:=QConsulta.Fields[0].AsString;
                          end
                        else
                          if FCompraVta='TX' then
                          begin
                            QConsulta.Close;
                            QConsulta.Open('select rc.tipocpbte from trancab rc where rc.id_trcab = '+IntToStr(Fid)+'');
                            FTipo:=QConsulta.Fields[0].AsString;
                          end;


     if FTipo='' then FId:=-1;
   end
  else
   Fid:=-1;
  QConsulta.Close;
  FreeAndNil(QConsulta);

  ModalResult:= mrOk;
end;

procedure TFormBuscarPorNroReferenica.btEscapeClick(Sender: TObject);
begin
  ModalResult := mrCancel;
  FId:=-1;
end;

procedure TFormBuscarPorNroReferenica.edNumeroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key=VK_RETURN) then
    btOkClick(Sender)
  else
    if (Key=VK_ESCAPE) then
       btEscapeClick(Sender);
end;

procedure TFormBuscarPorNroReferenica.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormBuscarPorNroReferenica.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormBuscarPorNroReferenica.FormDestroy(Sender: TObject);
begin
  FormBuscarPorNroReferenica:=nil;
end;

procedure TFormBuscarPorNroReferenica.FormShow(Sender: TObject);
begin
  EdNumero.SetFocus;
end;

end.
