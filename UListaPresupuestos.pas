unit UListaPresupuestos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Provider, DBClient, StdCtrls, Buttons, Mask, Grids,
  ExtCtrls, ActnList, Menus, ComCtrls,Librerias, JvExControls,
  JvGradient, JvToolEdit, JvExMask, FMTBcd, SqlExpr, System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Vcl.DBGrids, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormListaPresupuestos = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edNombreCliente: TEdit;
    btVerCC: TBitBtn;
    CDSClientes: TClientDataSet;
    DSPClientes: TDataSetProvider;
    DSPresu: TDataSource;
    DSPPresu: TDataSetProvider;
    ActionList1: TActionList;
    TraerPreupuestos: TAction;
    VerComprobante: TAction;
    BuscarCliente: TAction;
    CDSPresu: TClientDataSet;
    CDSPresuID_PR: TIntegerField;
    CDSPresuCLASECPBTE: TStringField;
    CDSPresuNROCPBTE: TStringField;
    BitBtn2: TBitBtn;
    Salir: TAction;
    PopupMenu1: TPopupMenu;
    VerComprobante1: TMenuItem;
    UpDown1: TUpDown;
    JvGradient1: TJvGradient;
    ceCliente: TJvComboEdit;
    desde: TJvDateEdit;
    hasta: TJvDateEdit;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
    CDSClientesRAZON_SOCIAL: TStringField;
    CDSClientesDIRECCION_PARTICULAR: TStringField;
    CDSClientesDIRECCION_COMERCIAL: TStringField;
    CDSClientesTELEFONO_PARTICULAR: TStringField;
    CDSClientesTELEFONO_COMERCIAL_1: TStringField;
    CDSClientesTELEFONO_COMERCIAL_2: TStringField;
    CDSClientesTELEFONO_CELULAR: TStringField;
    CDSClientesID_COD_POSTAL: TIntegerField;
    CDSClientesCPOSTAL: TStringField;
    CDSClientesLOCALIDAD: TStringField;
    CDSClientesCONDICION_IVA: TIntegerField;
    CDSClientesEMITE_REMITO: TStringField;
    CDSClientesEMITE_FACTURA: TStringField;
    CDSClientesNRO_DE_CUIT: TStringField;
    CDSClientesACTIVO: TStringField;
    CDSClientesLIMITE_CREDITO: TFMTBCDField;
    CDSClientesSALDOINICIAL: TFMTBCDField;
    CDSClientesOBSERVACIONES: TMemoField;
    CDSClientesFECHAULTIMACOMPRA: TSQLTimeStampField;
    CDSClientesFECHAALTA: TSQLTimeStampField;
    CDSClientesSUCURSAL: TIntegerField;
    CDSClientesZONA: TIntegerField;
    CDSClientesVENDEDOR: TStringField;
    CDSClientesULTIMOPAGO: TSQLTimeStampField;
    CDSClientesLISTAPRECIOS: TIntegerField;
    CDSClientesFECHANACIMIENTO: TSQLTimeStampField;
    CDSClientesTIPODOCUMENTO: TSmallintField;
    CDSClientesNRODOCUMENTO: TStringField;
    CDSClientesCORREOELECTRONICO: TStringField;
    CDSClientesID_FACTURAPORDEFECTO: TIntegerField;
    CDSClientesID_FACTURACONTADOPORDEFECTO: TIntegerField;
    CDSClientesID_NOTADEBITOPORDEFECTO: TIntegerField;
    CDSClientesID_NOTACREDITOPORDEFECTO: TIntegerField;
    CDSClientesID_TIKETPORDEFECTO: TIntegerField;
    CDSClientesPERCIBIR_IB: TStringField;
    CDSClientesINSCRIPTO_MULTICONVENIO: TStringField;
    CDSClientesFECHA_VENCIMI_DDJJ_MULTI: TSQLTimeStampField;
    CDSClientesCONTACTO: TStringField;
    CDSClientesTELEFONO_CONTACTO: TStringField;
    CDSClientesCOBRADOR: TStringField;
    CDSClientesCATEGORIA: TIntegerField;
    CDSClientesLONGITUD: TStringField;
    CDSClientesLATITUD: TStringField;
    CDSClientesDIRECCION_CALLE: TStringField;
    CDSClientesDIRECCION_NUMERO: TStringField;
    CDSClientesDIRECCION_PISO: TStringField;
    CDSClientesDIRECCION_DEPTO: TStringField;
    CDSClientesDEUDAMAYOR30: TStringField;
    CDSClientesMUESTRATELEDISCADO: TStringField;
    CDSClientesMUESTRAVENDEDOR: TStringField;
    CDSClientesMUESTRACOBRADOR: TStringField;
    CDSClientesTIPOABONO: TStringField;
    CDSClientesFECHA_INCIO_FC_ABONO: TSQLTimeStampField;
    CDSClientesMES_ABONOANUAL: TIntegerField;
    QPresup: TFDQuery;
    CDSPresuTOTAL: TFloatField;
    DBGrid1: TDBGrid;
    CDSPresuFECHAVTA: TSQLTimeStampField;
    procedure BuscarClienteExecute(Sender: TObject);
    procedure TraerPreupuestosExecute(Sender: TObject);
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure VerComprobanteExecute(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListaPresupuestos: TFormListaPresupuestos;

implementation

uses UDMain_FD, UPresupuesto_2, DMPresupuesto, UBuscadorClientes;
{$R *.DFM}

procedure TFormListaPresupuestos.BuscarClienteExecute(Sender: TObject);
begin
  IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''+','+'''I'''; // Act+Inac+Judiciales
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
    BEGIN
      ceCliente.Text :=FormBuscadorClientes.Codigo;
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value := FormBuscadorClientes.Codigo;
      CDSClientes.Open;
      IF NOT (CDSClientes.eof) THEN
        BEGIN
          edNombreCliente.Text := CDSClientesNOMBRE.Value;
          TraerPreupuestos.Execute;
          ceCliente.SetFocus;
          ceCliente.SelectAll;
        END;
    END;
end;

procedure TFormListaPresupuestos.TraerPreupuestosExecute(Sender: TObject);
begin
  if (Hasta.Date>=Desde.Date) Then
     begin
       CDSPresu.Close;
       CDSPresu.Params.ParamByName('desde').Value:=Desde.Date;
       CDSPresu.Params.ParamByName('hasta').Value:=hasta.Date;
       CDSPresu.Params.ParamByName('Codigo').Value:=ceCliente.Text;
       CDSPresu.Open;
     end
  else
    ShowMessage('La fecha HASTA debe ser mayor o igual a DESDE');

  //
end;

procedure TFormListaPresupuestos.ceClienteKeyPress(Sender: TObject;
  var Key: Char);
VAR
  Dato: STRING;
BEGIN
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value := Dato;
      CDSClientes.Open;
      IF NOT(CDSClientes.eof) THEN
        begin
          edNombreCliente.Text := CDSClientesNOMBRE.Value;
          TraerPreupuestos.Execute;
          ceCliente.SetFocus;
          ceCliente.SelectAll;
        END;
    END;
END;

procedure TFormListaPresupuestos.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  AutoSize:=True;

  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(y,m));
//  Desde.Date := IncMonth(Hasta.Date,(-1*RangoFechas))+1;

  Desde.Date := IncMonth(Hasta.Date,(-1));
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(y,m))+1;


end;

procedure TFormListaPresupuestos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (Assigned(FormPresupuesto_2)) Then
    FormPresupuesto_2.Close;
  Action:=caFree;
end;

procedure TFormListaPresupuestos.FormDestroy(Sender: TObject);
begin
  FormListaPresupuestos:=nil;
end;

procedure TFormListaPresupuestos.SalirExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormListaPresupuestos.VerComprobanteExecute(Sender: TObject);
begin
  if not(Assigned(FormPresupuesto_2)) Then
    FormPresupuesto_2:=TFormPresupuesto_2.Create(Application);
  begin
    DatosPresupuesto.CDSPresuCab.close;
    DatosPresupuesto.CDSPresuCab.Params.ParamByName('id').Value := CDSPresuID_PR.Value;
    DatosPresupuesto.CDSPresuCab.Open;
    if DatosPresupuesto.CDSPresuCabNETOGRAV2.AsFloat>0 Then
       DatosPresupuesto.Var_TasaIVA:=(((DatosPresupuesto.CDSPresuCabTOTAL.AsFloat - DatosPresupuesto.CDSPresuCabNETOGRAV2.AsFloat) *100) / DatosPresupuesto.CDSPresuCabNETOGRAV2.AsFloat)
    else
       DatosPresupuesto.Var_TasaIVA:=0;
    DatosPresupuesto.CDSPresuDet.Close;
    DatosPresupuesto.CDSPresuDet.Params.ParamByName('id').Value := CDSPresuID_PR.Value;
    DatosPresupuesto.CDSPresuDet.Open;
    DatosPresupuesto.CDSImpuestos.Close;
    DatosPresupuesto.CDSImpuestos.Params.ParamByName('id').Value:= CDSPresuID_PR.Value;
    DatosPresupuesto.CDSImpuestos.Open;
    FormPresupuesto_2.pnPrincipal.Enabled:=True;
    FormPresupuesto_2.pcDetallePresupuesto.Enabled:=True;
    FormPresupuesto_2.DBGrillaDetalle.Enabled:=True;
//    FormPresupuesto_2.Show;
  end;

end;

procedure TFormListaPresupuestos.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
 var d,m,y:word;
begin
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
  if ceCliente.Text<>'' Then
    TraerPreupuestos.Execute;

end;

end.