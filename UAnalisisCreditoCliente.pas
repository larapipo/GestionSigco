unit UAnalisisCreditoCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db,
  Buttons, ToolWin, ComCtrls, ExtCtrls, DBClient, Provider, Librerias,
  JvComponentBase, JvExControls, JvGradient, JvFormPlacement, JvLabel,
  JvDBControls, JvExMask, JvToolEdit, FMTBcd, SqlExpr, JvBaseEdits,
  JvAppStorage, JvAppIniStorage, Vcl.ImgList, System.Actions, Vcl.ActnList,
  Vcl.Mask, Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, System.ImageList;

type
  TFormAnalisisCreditoCliente = class(TFormABMBase)
    edNombreCliente: TEdit;
    BuscarCliente: TAction;
    DSPClientes: TDataSetProvider;
    CDSClientes: TClientDataSet;
    Label6: TLabel;
    pnSecundario: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    UpDown1: TUpDown;
    ceCliente: TJvComboEdit;
    QSaldoInicial: TSQLQuery;
    QSaldoFinal: TSQLQuery;
    QVentas: TSQLQuery;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
    CDSClientesRAZON_SOCIAL: TStringField;
    RxLabel4: TJvLabel;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel5: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel7: TJvLabel;
    RxLabel8: TJvLabel;
    RxLabel10: TJvLabel;
    RxLabel11: TJvLabel;
    RxLabel9: TJvLabel;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    ceInicial: TJvCalcEdit;
    ceFinal: TJvCalcEdit;
    ceSaldoMedio: TJvCalcEdit;
    ceRotacion: TJvCalcEdit;
    ceVentas: TJvCalcEdit;
    ceDuracion: TJvCalcEdit;
    ceDias: TJvCalcEdit;
    procedure BuscarClienteExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ceClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAnalisisCreditoCliente: TFormAnalisisCreditoCliente;

implementation

uses UDMain_FD, UBuscadorClientes;
{$R *.DFM}

procedure TFormAnalisisCreditoCliente.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''+','+'''I'''; // Act+Inac+Judiciales
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
    BEGIN
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value := FormBuscadorClientes.Codigo;
      CDSClientes.Open;
      IF NOT (CDSClientes.eof) THEN
        BEGIN
          ceSaldoMedio.Value  :=0;
          ceInicial.Value     :=0;
          ceFinal.Value       :=0;
          ceDias.Value        :=0;
          ceRotacion.Value    :=0;
          ceDuracion.Value    :=0;
          ceCliente.Text       := FormBuscadorClientes.Codigo;
          edNombreCliente.Text := CDSClientesNOMBRE.Value;
          ceCliente.SetFocus;
          ceCliente.SelectAll;
        END;
    END;

end;

procedure TFormAnalisisCreditoCliente.BuscarExecute(Sender: TObject);
begin
 // inherited;
  if ceCliente.Text<>'' Then
    begin
      ceSaldoMedio.Value  :=0;
      ceInicial.Value     :=0;
      ceFinal.Value       :=0;
      ceDias.Value        :=0;
      ceRotacion.Value    :=0;
      ceDuracion.Value    :=0;
      QSaldoInicial.Close;
      QVentas.Close;
      QSaldoFinal.Close;
      QSaldoInicial.ParamByName('codigo').Value :=ceCliente.Text;
      QSaldoInicial.ParamByName('fecha').Value  :=desde.Date;
      QSaldoFinal.ParamByName('codigo').Value   :=ceCliente.Text;
      QSaldoFinal.ParamByName('fecha').Value    :=hasta.Date;
      QVentas.ParamByName('codigo').Value       :=ceCliente.Text;
      QVentas.ParamByName('desde').Value        :=desde.Date;
      QVentas.ParamByName('hasta').Value        :=hasta.Date;
      QSaldoInicial.Open;
      QSaldoFinal.OPen;
      QVentas.Open;
      if Not(QVentas.IsEmpty) Then
        ceVentas.Value   :=QVentas.Fields[1].Value;
      if (QSaldoInicial.Fields[0].AsString<>'') Then
        ceInicial.Value    :=QSaldoInicial.Fields[0].Value
      else
        ceInicial.Value    :=0;

      if (QSaldoFinal.Fields[0].AsString<>'') Then
        ceFinal.Value      :=QSaldoFinal.Fields[0].Value
      else
        ceFinal.Value      :=0;
      ceDias.Value       :=hasta.Date-Desde.Date;
      ceSaldoMedio.Value :=(ceInicial.Value+ceFinal.value)/2;
      if ceSaldoMedio.Value>0 Then
        ceRotacion.Value   :=ceVentas.Value/ceSaldoMedio.Value;
      if ceRotacion.Value>0 Then
        ceDuracion.Value :=ceDias.Value/ceRotacion.Value;
   end;
// else
//    ShowMessage('No se ingreso un cliente');
end;

procedure TFormAnalisisCreditoCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormAnalisisCreditoCliente.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAnalisisCreditoCliente:=nil;
end;

procedure TFormAnalisisCreditoCliente.ceClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var dato:String;
begin
  inherited;
  IF Key = vk_return THEN
    BEGIN
     // key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value := Dato;
      CDSClientes.Open;
      IF NOT (CDSClientes.eof) THEN
        begin
          ceSaldoMedio.Value  :=0;
          ceInicial.Value     :=0;
          ceFinal.Value       :=0;
          ceDias.Value        :=0;
          ceRotacion.Value    :=0;
          ceDuracion.Value    :=0;
          edNombreCliente.Text := CDSClientesNOMBRE.Value;
        end;
      ceCliente.SetFocus;
      ceCliente.SelectAll;
    END;


end;

procedure TFormAnalisisCreditoCliente.FormShow(Sender: TObject);
VAR y,m,d:word;
begin
  inherited;
   DecodeDate(date,y,m,d);
  if m=1 Then
    begin
      m:=12;y:=y-1;
    end
  else
    m:=m-1;
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Desde.SetFocus;
end;


procedure TFormAnalisisCreditoCliente.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
 var d,m,y:word;
begin
  inherited;
  DecodeDate(Desde.Date,y,m,d);
  if Button=btnext Then
    if m=12 Then
      begin
        m:=1;y:=y+1;
      end
    else
      m:=m+1
  else
    if Button=btPrev Then
      if m=1 Then
        begin
          m:=12;y:=y-1;
        end
      else
        m:=m-1;

  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  //TraerCtaCte.Execute;

end;

end.