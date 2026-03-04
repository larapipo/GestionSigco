UNIT UCarteraCheques;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, ImgList, ActnList,
  Db, DBClient, Provider, Grids, ExtCtrls, DBGrids, JvDBGrid, JvExDBGrids, FMTBcd, SqlExpr, Mask, JvExMask,
  JvToolEdit, JvBaseEdits, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, Vcl.DBCtrls,
  System.ImageList;
TYPE
  TFormCarteraCheques = CLASS(TForm)
    DSPCarteraChe: TDataSetProvider;
    pnBase: TPanel;
    ActionList1: TActionList;
    Aceptar: TAction;
    ImageList1: TImageList;
    CDSCarteraChe: TClientDataSet;
    CDSCarteraCheMUESTRABANCO: TStringField;
    CDSCarteraCheFIRMANTE: TStringField;
    CDSCarteraCheNUMERO: TIntegerField;
    CDSCarteraCheID_CHEQUE_TER: TIntegerField;
    CDSCarteraCheID_CAJA: TIntegerField;
    CDSCarteraCheID_MOV_CAJA: TIntegerField;
    CDSCarteraCheID_FPAGO: TIntegerField;
    CDSCarteraCheID_BANCO: TIntegerField;
    CDSCarteraCheORIGEN: TStringField;
    CDSCarteraCheDESTINO: TStringField;
    CDSCarteraCheDISPONIBLE: TStringField;
    CDSCarteraCheID_MOV_CAJA_EGRESOS: TIntegerField;
    CDSCarteraCheID_CUENTA_CAJA: TIntegerField;
    CDSCarteraCheID_CUENTA_BCO_DEPOSITADO: TIntegerField;
    CDSCarteraCheMONEDA: TIntegerField;
    CDSCarteraCheCUIT: TStringField;
    CDSCarteraCheSUCURSAL_BCO: TStringField;
    CDSCarteraCheNRO_CTA: TStringField;
    DSCarteraChe: TDataSource;
    edCartera: TJvCalcEdit;
    edSeleccionado: TJvCalcEdit;
    Label1: TLabel;
    Label2: TLabel;
    QCarteraCheOLD: TFDQuery;
    btLoteCheques: TBitBtn;
    btAbortar: TBitBtn;
    CDSCarteraCheE_CHECK: TStringField;
    CDSCarteraCheNOMBRE: TStringField;
    CDSCarteraCheNRO_CUENTA: TStringField;
    CDSCarteraCheFECHA_EMISION: TSQLTimeStampField;
    CDSCarteraCheFECHA_COBRO: TSQLTimeStampField;
    CDSCarteraCheFECHA_ENTRADA: TSQLTimeStampField;
    CDSCarteraCheFECHA_SALIDA: TSQLTimeStampField;
    QCarteraCheDBX: TFDQuery;
    QCarteraCheDBXID_CHEQUE_TER: TIntegerField;
    QCarteraCheDBXID_CAJA: TIntegerField;
    QCarteraCheDBXID_MOV_CAJA: TIntegerField;
    QCarteraCheDBXID_FPAGO: TIntegerField;
    QCarteraCheDBXID_BANCO: TIntegerField;
    QCarteraCheDBXNUMERO: TIntegerField;
    QCarteraCheDBXFECHA_EMISION: TSQLTimeStampField;
    QCarteraCheDBXFECHA_COBRO: TSQLTimeStampField;
    QCarteraCheDBXFECHA_ENTRADA: TSQLTimeStampField;
    QCarteraCheDBXFECHA_SALIDA: TSQLTimeStampField;
    QCarteraCheDBXORIGEN: TStringField;
    QCarteraCheDBXDESTINO: TStringField;
    QCarteraCheDBXUNIDADES: TFloatField;
    QCarteraCheDBXIMPORTE: TFloatField;
    QCarteraCheDBXDISPONIBLE: TStringField;
    QCarteraCheDBXFIRMANTE: TStringField;
    QCarteraCheDBXCOTIZACION: TFloatField;
    QCarteraCheDBXID_MOV_CAJA_EGRESOS: TIntegerField;
    QCarteraCheDBXID_CUENTA_CAJA: TIntegerField;
    QCarteraCheDBXID_CUENTA_BCO_DEPOSITADO: TIntegerField;
    QCarteraCheDBXMONEDA: TIntegerField;
    QCarteraCheDBXSALDO_UNIDADES: TFloatField;
    QCarteraCheDBXSALDO_IMPORTE: TFloatField;
    QCarteraCheDBXCUIT: TStringField;
    QCarteraCheDBXSUCURSAL_BCO: TStringField;
    QCarteraCheDBXNRO_CTA: TStringField;
    QCarteraCheDBXE_CHECK: TStringField;
    QCarteraCheDBXID_CTA_CAJA_BCO: TIntegerField;
    QCarteraCheDBXMUESTRABANCO: TStringField;
    QCarteraCheDBXID_CUENTA: TIntegerField;
    QCarteraCheDBXNOMBRE: TStringField;
    QCarteraCheDBXNRO_CUENTA: TStringField;
    CDSCarteraCheUNIDADES: TFloatField;
    CDSCarteraCheSALDO_UNIDADES: TFloatField;
    CDSCarteraCheSALDO_IMPORTE: TFloatField;
    CDSCarteraCheIMPORTE: TFloatField;
    CDSCarteraCheCOTIZACION: TFloatField;
    CDSCarteraCheID_CTA_CAJA_BCO: TIntegerField;
    CDSCarteraCheID_CUENTA: TIntegerField;
    pnEChek: TPanel;
    Label4: TLabel;
    Label3: TLabel;
    cxDBTextEdit2: TDBEdit;
    cxDBTextEdit1: TDBEdit;
    QCarteraCheDBXMUESTRABANCO_ECHECK: TStringField;
    QCarteraCheDBXMUESTRANROCTA_ECHECK: TStringField;
    CDSCarteraCheMUESTRABANCO_ECHECK: TStringField;
    CDSCarteraCheMUESTRANROCTA_ECHECK: TStringField;
    dbgCheques: TDBGrid;
    Label5: TLabel;
    edElegidos: TJvCalcEdit;
    QCarteraCheDBXMUESTRATIPOCOMPROB: TStringField;
    QCarteraCheDBXMUESTRACLASECOMPROB: TStringField;
    QCarteraCheDBXMUESTRANROCOMPROBANTE: TStringField;
    QCarteraCheDBXMUESTRAIDCOMPROBANTE: TIntegerField;
    QCarteraCheDBXMUESTRANOMBRECOMPROB: TStringField;
    CDSCarteraCheMUESTRATIPOCOMPROB: TStringField;
    CDSCarteraCheMUESTRACLASECOMPROB: TStringField;
    CDSCarteraCheMUESTRANROCOMPROBANTE: TStringField;
    CDSCarteraCheMUESTRAIDCOMPROBANTE: TIntegerField;
    CDSCarteraCheMUESTRANOMBRECOMPROB: TStringField;
    Label6: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    PROCEDURE FormCreate(Sender: TObject);
//    procedure dbgChequesTitleBtnClick(Sender: TObject; ACol: Integer;
//      Field: TField);
    procedure dbgChequesDblClick(Sender: TObject);
    procedure dbgChequesKeyPress(Sender: TObject; var Key: Char);
//    procedure dbgChequesDrawDataCell(Sender: TObject; const Rect: TRect;
//      Field: TField; State: TGridDrawState);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CDSCarteraCheAfterOpen(DataSet: TDataSet);
    procedure btLoteChequesClick(Sender: TObject);
    procedure btAbortarClick(Sender: TObject);
    procedure CDSCarteraCheAfterScroll(DataSet: TDataSet);
    procedure CDSCarteraCheE_CHECKGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure FormResize(Sender: TObject);
    procedure dbgChequesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgChequesTitleClick(Column: TColumn);
    procedure dbgChequesCellClick(Column: TColumn);
  private
    { Private declarations }
  public
    Aceptado: Boolean;
    procedure Sumar;
    { Public declarations }
  END;

VAR
  FormCarteraCheques: TFormCarteraCheques;

IMPLEMENTATION

uses UDMain_FD;

{$R *.DFM}

procedure TFormCarteraCheques.Sumar;
var
P:TBookmark;
  I: Integer;
begin
  edCartera.Value      := 0;
  edSeleccionado.Value := 0;
  p:=CDSCarteraChe.GetBookmark;
  CDSCarteraChe.First;
  CDSCarteraChe.DisableControls;
  while Not(CDSCarteraChe.Eof) do
    begin
      if CDSCarteraCheDISPONIBLE.Value='S' then
        edCartera.Value:=edCartera.Value+CDSCarteraCheSALDO_IMPORTE.AsFloat
      else
        if CDSCarteraCheDISPONIBLE.Value='N' then
          edSeleccionado.Value:=edSeleccionado.Value+CDSCarteraCheIMPORTE.AsFloat;
       CDSCarteraChe.Next;
    end;
  CDSCarteraChe.GotoBookmark(p);
  CDSCarteraChe.FreeBookmark(p);
  CDSCarteraChe.EnableControls;
  //for I := 0 to dbgCheques.SelCount do
//    begin
//
//    end;
end;

procedure TFormCarteraCheques.btAbortarClick(Sender: TObject);
begin
  Aceptado := False;
  Close;
end;

procedure TFormCarteraCheques.btLoteChequesClick(Sender: TObject);
begin
  if dbgCheques.SelectedRows.Count>=1 then
    Aceptado := True
  else
    Aceptado := False;
  Close;
end;

procedure TFormCarteraCheques.CDSCarteraCheAfterOpen(DataSet: TDataSet);
begin
  dbgCheques.Width:=dbgCheques.Width-1;
  dbgCheques.Width:=dbgCheques.Width+1;
end;

procedure TFormCarteraCheques.CDSCarteraCheAfterScroll(DataSet: TDataSet);
begin
  if CDSCarteraChe.Active then
    if CDSCarteraCheE_CHECK.Value='S' then
      pnEChek.Visible:=True
    else
      pnEChek.Visible:=False;

end;

procedure TFormCarteraCheques.CDSCarteraCheE_CHECKGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if Sender.AsString='S' then
    Text:='*'
  else
    Text:='';
end;

procedure TFormCarteraCheques.dbgChequesCellClick(Column: TColumn);
var Suma:Extended;
I:Integer;
begin
  Suma:=0;
  For i:= 0 to dbgCheques.SelectedRows.Count-1 do
    begin
      {$IF CompilerVersion < 24}
        dbgCheques.DataSource.DataSet.GotoBookmark(Pointer(dbgCheques.SelectedRows.Items[i]));
      {$ELSE}
        dbgCheques.DataSource.DataSet.GotoBookmark((dbgCheques.SelectedRows.Items[i]));
      {$ENDIF}
      Suma:=Suma+dbgCheques.DataSource.DataSet.FieldByName('SAldo_importe').AsFloat;
    end;
 edElegidos.Value:=Suma;
end;

procedure TFormCarteraCheques.dbgChequesDblClick(Sender: TObject);
begin
 IF dbgCheques.DataSource.DataSet.FieldByName('Disponible').Value = 'S' THEN
    BEGIN
      dbgCheques.SelectedRows.CurrentRowSelected:=True;;
      Aceptado := True;
    END
  else
    Aceptado := False;
  Close;

end;

procedure TFormCarteraCheques.dbgChequesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 if CDSCarteraCheE_CHECK.AsString='S' then
    begin
      dbgCheques.Canvas.Font.Color := clGreen;
     // dbgCheques.Canvas.Font.Style := [fsBold];
    end
  else
    begin
      dbgCheques.Canvas.Font.Color := clDefault;
      dbgCheques.Canvas.Font.Style := [];
    end;

  IF CDSCarteraChe.FieldByName('Disponible').Value = 'N' THEN
    dbgCheques.Canvas.Font.Style := dbgCheques.Canvas.Font.Style + [fsStrikeout]
  ELSE
    dbgCheques.Canvas.Font.Style := dbgCheques.Canvas.Font.Style - [fsStrikeOut];

   dbgCheques.DefaultDrawColumnCell(Rect, DataCol,Column,State);
end;

//procedure TFormCarteraCheques.dbgChequesDrawDataCell(Sender: TObject;
//  const Rect: TRect; Field: TField; State: TGridDrawState);
//begin

//  if CDSCarteraCheE_CHECK.AsString='S' then
//    begin
//      dbgCheques.Canvas.Font.Color := clGreen;
//      dbgCheques.Canvas.Font.Style := [fsBold];
//    end
//  else
//    begin
//      dbgCheques.Canvas.Font.Color := clDefault;
//      dbgCheques.Canvas.Font.Style := [];
//    end;
//
//  IF CDSCarteraChe.FieldByName('Disponible').Value = 'N' THEN
//    dbgCheques.Canvas.Font.Style := dbgCheques.Canvas.Font.Style + [fsStrikeout]
//  ELSE
//    dbgCheques.Canvas.Font.Style := dbgCheques.Canvas.Font.Style - [fsStrikeOut];
//
//
//  dbgCheques.DefaultDrawDataCell(Rect, Field, State);

//end;

procedure TFormCarteraCheques.dbgChequesKeyPress(Sender: TObject;
  var Key: Char);
begin
IF Key = #13 THEN
    BEGIN
      IF dbgCheques.DataSource.DataSet.FieldByName('Disponible').Value = 'S' THEN
        BEGIN
          Aceptado := True;
          Close;
        END
      ELSE
        BEGIN
          Aceptado := False;
          ShowMessage('Cheque no disponible....!!!!');
        END;
    END
  ELSE IF Key = #27 THEN
    BEGIN
      Aceptado := False;
      Close;
    END;
end;

//procedure TFormCarteraCheques.dbgChequesTitleBtnClick(Sender: TObject;
//  ACol: Integer; Field: TField);
//var campo:string;
//begin
//  try
//    Campo := Field.FieldName;
//    with dbgCheques.DataSource.DataSet as TClientDataSet do
//      if IndexFieldNames <> Campo then
//        IndexFieldNames := Campo // Ascendente
//      else
//      begin
//        AddIndex(Campo, Campo, [], Campo); // Descendente
//        IndexName := Campo;
//      end;
//  except // Para que no salte una excepción si la columna es un campo calculado.
//  end;
//
//end;

procedure TFormCarteraCheques.dbgChequesTitleClick(Column: TColumn);
var campo:string;
begin
  try
    Campo := Column.FieldName;
    with dbgCheques.DataSource.DataSet as TClientDataSet do
      if IndexFieldNames <> Campo then
        IndexFieldNames := Campo // Ascendente
      else
      begin
        AddIndex(Campo, Campo, [], Campo); // Descendente
        IndexName := Campo;
      end;
  except // Para que no salte una excepción si la columna es un campo calculado.
  end;

end;

procedure TFormCarteraCheques.FormActivate(Sender: TObject);
begin
  CDSCarteraChe.IndexFieldNames:='';
  CDSCarteraChe.IndexDefs.Clear;
  if FormCarteraCheques.Visible then
    dbgCheques.SetFocus;
   Sumar;
end;

procedure TFormCarteraCheques.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 // CDSCarteraChe.IndexFieldNames:='';
 // CDSCarteraChe.IndexDefs.Clear;
end;

PROCEDURE TFormCarteraCheques.FormCreate(Sender: TObject);
BEGIN
  AutoSize := False;
  if CDSCarteraChe.Active=False then
    begin
      CDSCarteraChe.IndexDefs.Clear;
      CDSCarteraChe.IndexFieldNames:='';
    end;
END;

procedure TFormCarteraCheques.FormResize(Sender: TObject);
begin
  if FormCarteraCheques<>nil then
    if FormCarteraCheques.Width<>963 then
      FormCarteraCheques.Width:=963;

end;

procedure TFormCarteraCheques.FormShow(Sender: TObject);
begin
  CDSCarteraChe.IndexDefs.Clear;
  CDSCarteraChe.IndexFieldNames:='Fecha_Cobro';
  edSeleccionado.Value         :=0;
end;

END.
