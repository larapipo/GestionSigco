unit UControlAsignaVendedor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Grids, DBClient, Provider, Db, StdCtrls,
  ActnList,  Buttons, ToolWin, ComCtrls, ExtCtrls,
  Librerias, DBCtrls, JvComponentBase,
  ImgList, JvExControls, JvGradient, DBGrids, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, JvExDBGrids, JvDBGrid, SqlExpr, DBXCommon, JvExMask, JvToolEdit,
  JvAppStorage, JvAppIniStorage, System.Actions, Vcl.Mask, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormAsignacionVendedor = class(TFormABMBase)
    Label2: TLabel;
    Label3: TLabel;
    DSFacVta: TDataSource;
    DSPFacVta: TDataSetProvider;
    VerComprobante: TAction;
    Label1: TLabel;
    UpDown1: TUpDown;
    chbSinVendedor: TCheckBox;
    CDSFacVta: TClientDataSet;
    CDSFacVtaID_FC: TIntegerField;
    CDSFacVtaTIPOCPBTE: TStringField;
    CDSFacVtaCLASECPBTE: TStringField;
    CDSFacVtaNROCPBTE: TStringField;
    CDSFacVtaCODIGO: TStringField;
    CDSFacVtaNOMBRE: TStringField;
    CDSFacVtaVENDEDOR: TStringField;
    dbgFacturas: TJvDBGrid;
    Desde: TJvDateEdit;
    hasta: TJvDateEdit;
    QFacVta: TFDQuery;
    QVend: TFDQuery;
    QVendNOMBRE: TStringField;
    QVendCODIGO: TStringField;
    CDSVendedor: TClientDataSet;
    DSPVendedor: TDataSetProvider;
    QFacVtaID_FC: TIntegerField;
    QFacVtaFECHAVTA: TSQLTimeStampField;
    QFacVtaTIPOCPBTE: TStringField;
    QFacVtaCLASECPBTE: TStringField;
    QFacVtaNROCPBTE: TStringField;
    QFacVtaCODIGO: TStringField;
    QFacVtaNOMBRE: TStringField;
    QFacVtaVENDEDOR: TStringField;
    QFacVtaTOTAL: TFloatField;
    CDSFacVtaTOTAL: TFloatField;
    CDSFacVtaFECHAVTA: TSQLTimeStampField;
    DSVendedor: TDataSource;
    CDSVendedorNOMBRE: TStringField;
    CDSVendedorCODIGO: TStringField;
    CDSFacVtaMUESTRAVENDEDOR: TStringField;
    procedure BuscarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure VerComprobanteExecute(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure chbSinVendedorClick(Sender: TObject);
    procedure dbgFacturasColEnter(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure dbgFacturasTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAsignacionVendedor: TFormAsignacionVendedor;

implementation

uses UMuestraCpbteCtaCteVta,UDMain_FD;

{$R *.DFM}

procedure TFormAsignacionVendedor.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSVendedor.Close;
  CDSVendedor.Open;
  CDSFacVta.Close;
  CDSFacVta.IndexDefs.Clear;
  CDSFacVta.IndexName       :='';
  CDSFacVta.IndexFieldNames :='';
  CDSFacVta.CommandText     :='';
  if chbSinVendedor.Checked Then
    CDSFacVta.CommandText:= 'select id_fc,fechavta,tipocpbte,clasecpbte,nrocpbte,codigo, '+
                            'nombre, vendedor,Total  from FcVtaCab '+
                            'where ((vendedor is null) or (vendedor=''''))  and '+
                            'fechavta between :desde and :hasta and '+
                            'anulado<>''S'' and  (liquidada=''N'' or (liquidada is null)) '+
                            'order by fechavta,tipocpbte,nrocpbte'
  else
    CDSFacVta.CommandText:= 'select id_fc,fechavta,tipocpbte,clasecpbte,nrocpbte,codigo, '+
                            'nombre, vendedor,Total  from FcVtaCab '+
                            'where '+
                            'fechavta between :desde and :hasta and '+
                            'anulado<>''S'' and  (liquidada=''N'' or (liquidada is null)) '+
                            'order by fechavta,tipocpbte,nrocpbte';

  CDSFacVta.Params.ParamByName('Desde').AsDate:=Desde.Date;
  CDSFacVta.Params.ParamByName('Hasta').AsDate:=Hasta.Date;
  CDSFacVta.Open;
end;

procedure TFormAsignacionVendedor.FormShow(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  DecodeDate(date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Buscar.Execute;
  Desde.SetFocus;
end;

procedure TFormAsignacionVendedor.ConfirmaExecute(Sender: TObject);
begin
 // inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    CDSFacVta.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
  end;
  Buscar.Execute;
end;

procedure TFormAsignacionVendedor.dbgFacturasColEnter(Sender: TObject);
begin
  inherited;
 if dbgFacturas.SelectedIndex<4 Then
    dbgFacturas.SelectedIndex:=4;
end;

procedure TFormAsignacionVendedor.dbgFacturasTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:string;
begin
  inherited;
// para el uso en DBGrid, ordenar or columna
  try
    Campo := Field.FieldName;
    if Field.FieldKind=fkLookup then campo:=Field.KeyFields;
    begin
      with dbgFacturas.DataSource.DataSet as TClientDataSet do
        if IndexFieldNames <> Campo then
          IndexFieldNames := Campo // Ascendente
        else
          begin
            AddIndex(Campo, Campo, [], Campo); // Descendente
            IndexName := Campo;
          end;
    end;
  except // Para que no salte una excepción si la columna es un campo calculado.
  end;
end;

procedure TFormAsignacionVendedor.DSBaseStateChange(Sender: TObject);
begin
 // inherited;

end;

procedure TFormAsignacionVendedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
  CDSVendedor.Close;
  CDSFacVta.Close;
end;

procedure TFormAsignacionVendedor.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize  :=False;
  CDSVendedor.Open;
end;

procedure TFormAsignacionVendedor.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAsignacionVendedor:=nil;
end;

procedure TFormAsignacionVendedor.FormResize(Sender: TObject);
begin
  inherited;
  if FormAsignacionVendedor<>nil then
    if FormAsignacionVendedor.Width<>779 then
      FormAsignacionVendedor.Width:=779;
end;

procedure TFormAsignacionVendedor.VerComprobanteExecute(Sender: TObject);
begin
  inherited;
  if (CDSFacVtaTIPOCPBTE.AsString='FC') or
     (CDSFacVtaTIPOCPBTE.AsString='FO') or
     (CDSFacVtaTIPOCPBTE.AsString='ND') Then
    begin
      IF NOT (Assigned(FormMuestraCpbteCtaCteVta)) THEN
        FormMuestraCpbteCtaCteVta    := TFormMuestraCpbteCtaCteVta.Create(Application);
      FormMuestraCpbteCtaCteVta.id   := CDSFacVtaID_FC.Value;
      FormMuestraCpbteCtaCteVta.Tipo := CDSFacVtaTIPOCPBTE.AsString;
      FormMuestraCpbteCtaCteVta.ShowModal;
    end;

end;

procedure TFormAsignacionVendedor.UpDown1Click(Sender: TObject;
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
  Buscar.Execute;
  //  Desde.SetFocus;
end;

procedure TFormAsignacionVendedor.chbSinVendedorClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

end.