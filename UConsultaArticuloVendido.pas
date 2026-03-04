UNIT UConsultaArticuloVendido;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Provider, Db, DBClient, Grids,
  ImgList, ToolWin, ComCtrls, StdCtrls,
   Mask, DBCtrls, ExtCtrls, Buttons, DBGrids, JvExDBGrids, JvDBGrid, FMTBcd, SqlExpr, JvExMask, JvToolEdit,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

TYPE
  TFormArticulosVendidos = CLASS(TForm)
    ImageList1: TImageList;
    Panel1: TPanel;
    Label1: TLabel;
    edNombre: TEdit;
    cbPorCliente: TCheckBox;
    btSalir: TBitBtn;
    DSConsulta: TDataSource;
    JvDBGrid1: TJvDBGrid;
    ceCliente: TJvComboEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    QConsulta: TFDQuery;
    QClientes: TFDQuery;
    QClientesNOMBRE: TStringField;
    QClientesRAZON_SOCIAL: TStringField;
    QClientesCODIGO: TStringField;
    QClientesNRO_DE_CUIT: TStringField;
    QClientesDIRECCION_COMERCIAL: TStringField;
    QClientesTELEDISCADO: TStringField;
    QConsultaTIPOCPBTE: TStringField;
    QConsultaNROCPBTE: TStringField;
    QConsultaCODIGOARTICULO: TStringField;
    QConsultaDETALLE: TStringField;
    QConsultaUNITARIO_TOTAL: TFloatField;
    QConsultaCOSTO_TOTAL: TFloatField;
    QConsultaRAZONSOCIAL: TStringField;
    QConsultaCODIGO: TStringField;
    QConsultaID_CABFAC: TIntegerField;
    QConsultaFECHAVTA: TSQLTimeStampField;
    PROCEDURE FormClose(Sender: TObject; VAR Action: TCloseAction);
    PROCEDURE FormCreate(Sender: TObject);
    PROCEDURE FormDestroy(Sender: TObject);
    PROCEDURE FormShow(Sender: TObject);
    procedure cbPorClienteClick(Sender: TObject);
    procedure btSalirClick(Sender: TObject);
    procedure ceClienteButtonClick(Sender: TObject);
    procedure JvDBGrid1TitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    CodigoCliente: STRING;
   // NombreCliente:String;
    CodigoArticulo: STRING;
    { Public declarations }
  END;

VAR
  FormArticulosVendidos: TFormArticulosVendidos;

IMPLEMENTATION

{$R *.DFM}

USES UMuestraCpbteCtaCteVta,UDMain_FD, UBuscadorClientes;



PROCEDURE TFormArticulosVendidos.FormClose(Sender: TObject;
  VAR Action: TCloseAction);
BEGIN
  Action := caFree;
END;

PROCEDURE TFormArticulosVendidos.FormCreate(Sender: TObject);
BEGIN
  AutoSize := False;
  cbPorCliente.Checked:=True;
END;

PROCEDURE TFormArticulosVendidos.FormDestroy(Sender: TObject);
BEGIN
  FormArticulosVendidos := NIL;
END;

procedure TFormArticulosVendidos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key=VK_ESCAPE then
   btSalir.Click;

end;

procedure TFormArticulosVendidos.FormResize(Sender: TObject);
begin
  if FormArticulosVendidos<>nil then
    if FormArticulosVendidos.Width<>773 then
      FormArticulosVendidos.Width:=773;
    
end;

PROCEDURE TFormArticulosVendidos.FormShow(Sender: TObject);
BEGIN
  QConsulta.Close;
  QConsulta.SQL.Text:='';
  QConsulta.SQL.Text:=
    'select d.tipocpbte,d.nrocpbte,d.fechavta,d.codigoarticulo,d.detalle,d.unitario_total,d.costo_total,'+
      'c.razonsocial,c.codigo,d.id_cabfac from FcVtaDet D '+
      'left join FcVtaCab C on c.id_fc= d.id_cabFac '+
      'where d.codigoarticulo='+''''+CodigoArticulo+''''+' and c.Codigo='+''''+codigoCliente+''''+' and d.tipocpbte in (''FO'',''FC'') '+
      'order By d.fechavta desc,d.Detalle ';
  QConsulta.Open;
  ceCliente.Text := CodigoCliente;
  edNombre.Text  := QConsultaRAZONSOCIAL.Value;
END;

procedure TFormArticulosVendidos.JvDBGrid1DblClick(Sender: TObject);
begin
  IF NOT (Assigned(FormMuestraCpbteCtaCteVta)) THEN
    FormMuestraCpbteCtaCteVta    := TFormMuestraCpbteCtaCteVta.Create(Application);
  FormMuestraCpbteCtaCteVta.id   := QConsultaID_CABFAC.Value;
  FormMuestraCpbteCtaCteVta.Tipo := QConsultaTIPOCPBTE.AsString;
  FormMuestraCpbteCtaCteVta.ShowModal;
end;

procedure TFormArticulosVendidos.JvDBGrid1TitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
  if QConsulta.IndexFieldNames=Field.FieldName then
    QConsulta.IndexFieldNames:= Field.FieldName +':D'
  else
    QConsulta.IndexFieldNames:= Field.FieldName;

end;



procedure TFormArticulosVendidos.cbPorClienteClick(Sender: TObject);
begin
  if cbPorCliente.Checked Then
    begin
      ceCliente.Enabled:=True;
      ceCliente.Color:=clWindow;
      QConsulta.Close;
      QConsulta.SQL.Text:='';
      QConsulta.SQL.Text:=
      'select d.tipocpbte,d.nrocpbte,d.fechavta,d.codigoarticulo,d.detalle,d.unitario_total,d.costo_total,'+
          'c.razonsocial,c.codigo,d.id_cabfac from FcVtaDet D '+
          'left join FcVtaCab C on c.id_fc= d.id_cabFac '+
          'where d.codigoarticulo='+''''+CodigoArticulo+''''+' and c.Codigo='+''''+codigoCliente+''''+' and d.tipocpbte in (''FO'',''FC'') '+
          'order By d.fechavta desc,d.Detalle ';
    end
  else
    begin
      ceCliente.Enabled:=False;
      ceCliente.Color  :=clBtnFace;
      QConsulta.Close;
      QConsulta.SQL.Text:='';
      QConsulta.SQL.Text:=
      'select d.tipocpbte,d.nrocpbte,d.fechavta,d.codigoarticulo,d.detalle,d.unitario_total,d.costo_total,'+
          'c.razonsocial,c.codigo,d.id_cabfac from FcVtaDet D '+
          'left join FcVtaCab C on c.id_fc= d.id_cabFac '+
          'where d.codigoarticulo='+''''+CodigoArticulo+''''+' and d.tipocpbte in (''FO'',''FC'') '+
          'order By d.fechavta desc,d.Detalle ';
    end;
   QConsulta.Open;
end;

procedure TFormArticulosVendidos.btSalirClick(Sender: TObject);
begin
  QClientes.Close;
  QConsulta.Close;
  Close;
end;

procedure TFormArticulosVendidos.ceClienteButtonClick(Sender: TObject);
begin
  IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''+','+'''I'''; // Act+Inac+Judiciales
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
    begin
      QClientes.Close;
      QClientes.ParamByName('codigo').AsString:=FormBuscadorClientes.Codigo;
      QClientes.Open;
      IF QClientesCODIGO.AsString<>'' THEN
        BEGIN
          edNombre.Text    :=QClientesNOMBRE.Value;
          ceCliente.Text   :=QClientesCODIGO.Value;
          CodigoCliente    :=QClientesCODIGO.Value;
          QConsulta.Close;
          QConsulta.SQL.Text:='';
          QConsulta.SQL.Text:=
          'select d.tipocpbte,d.nrocpbte,d.fechavta,d.codigoarticulo,d.detalle,d.unitario_total,d.costo_total,'+
              'c.razonsocial,c.codigo,d.id_cabfac from FcVtaDet D '+
              'left join FcVtaCab C on c.id_fc= d.id_cabFac '+
              'where d.codigoarticulo='+''''+CodigoArticulo+''''+' and c.Codigo='+''''+codigoCliente+''''+' and d.tipocpbte in (''FO'',''FC'') '+
                'order By d.fechavta desc,d.Detalle ';
          QConsulta.Open;
        END;
    end;
end;


END.