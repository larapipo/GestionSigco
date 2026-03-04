unit UControlMovCtaCteVta_detalle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, Provider, DBClient, DB, SqlExpr,
  JvComponentBase, JvFormPlacement, ImgList, ActnList,
  ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls,
  ToolWin, ExtCtrls, Mask, JvExMask, JvToolEdit,DateUtils, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, DBXCommon, JvAppStorage, JvAppIniStorage,
  System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, System.ImageList;

type
  TFormControlMovCtaVta_Detalles = class(TFormABMBase)
    QMovimiento: TFDQuery;
    CDSMovimiento: TClientDataSet;
    DSPMovimiento: TDataSetProvider;
    DSMovimiento: TDataSource;
    CDSMovimientoID_FC: TIntegerField;
    CDSMovimientoFECHAVTA: TSQLTimeStampField;
    CDSMovimientoTIPOCPBTE: TStringField;
    CDSMovimientoCLASECPBTE: TStringField;
    CDSMovimientoLETRAFAC: TStringField;
    CDSMovimientoSUCFAC: TStringField;
    CDSMovimientoNUMEROFAC: TStringField;
    CDSMovimientoCODIGO: TStringField;
    CDSMovimientoNOMBRE: TStringField;
    CDSMovimientoTOTAL: TFloatField;
    CDSMovimientoANULADO: TStringField;
    CDSMovimientoFECHAMOV: TSQLTimeStampField;
    CDSMovimientoVENCIMIENTOMOV: TSQLTimeStampField;
    CDSMovimientoDETALLEMOV: TStringField;
    CDSMovimientoTOTALMOV: TFloatField;
    CDSMovimientoCONTROL: TFloatField;
    UpDown1: TUpDown;
    chbPorDia: TCheckBox;
    Hasta: TJvDateEdit;
    Desde: TJvDateEdit;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    dbgMov: TJvDBGrid;
    Label1: TLabel;
    SPModificar: TFDStoredProc;
    ToolButton1: TToolButton;
    BitBtn1: TBitBtn;
    ReAsignar: TAction;
    VerComprobante: TAction;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure dbgMovTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure ReAsignarExecute(Sender: TObject);
    procedure dbgMovDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure VerComprobanteExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormControlMovCtaVta_Detalles: TFormControlMovCtaVta_Detalles;

implementation

uses UDMain_FD, UFactura_2;

{$R *.dfm}

procedure TFormControlMovCtaVta_Detalles.BuscarExecute(Sender: TObject);
begin
//  inherited;
  CDSMovimiento.Close;
  CDSMovimiento.IndexDefs.Clear;
  CDSMovimiento.IndexName:='';
  CDSMovimiento.Params.ParamByName('Codigo').Value :='******';
  CDSMovimiento.Params.ParamByName('desde').Value  :=Desde.Date;
  CDSMovimiento.Params.ParamByName('hasta').Value  :=Hasta.Date;
  CDSMovimiento.Open;

end;

procedure TFormControlMovCtaVta_Detalles.dbgMovDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;

  if CDSMovimientoANULADO.Value='S' Then
    dbgMov.Canvas.Font.Color :=clRed;

  if (Trunc(CDSMovimientoCONTROL.AsFloat*1000)<>0) Then
    dbgMov.Canvas.Font.Style :=[fsBold]
  else
    dbgMov.Canvas.Font.Style :=[];



  if gdSelected	in state Then
    begin
      dbgMov.Canvas.brush.Color :=clBlue;
      dbgMov.Canvas.Font.Color  :=clWhite;
    end;

  dbgMov.DefaultDrawColumnCell(Rect,DataCol,Column,State);


end;

procedure TFormControlMovCtaVta_Detalles.dbgMovTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var Campo:String;
begin
  try
    Campo := Field.FieldName;
    with dbgMov.DataSource.DataSet as TClientDataSet do
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

procedure TFormControlMovCtaVta_Detalles.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormControlMovCtaVta_Detalles.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormControlMovCtaVta_Detalles.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
end;

procedure TFormControlMovCtaVta_Detalles.FormDestroy(Sender: TObject);
begin
  inherited;
   FormControlMovCtaVta_Detalles:=nil;
end;

procedure TFormControlMovCtaVta_Detalles.FormResize(Sender: TObject);
begin
  inherited;
  if FormControlMovCtaVta_Detalles<>nil then
    if FormControlMovCtaVta_Detalles.Width<>993 then
      FormControlMovCtaVta_Detalles.Width:=993;


end;

procedure TFormControlMovCtaVta_Detalles.FormShow(Sender: TObject);
VAR y,m,d:word;
begin
  inherited;
  DecodeDate(Date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
end;

procedure TFormControlMovCtaVta_Detalles.ReAsignarExecute(Sender: TObject);
var i:integer;
begin
  inherited;
  sbEstado.SimpleText:='';
  Application.ProcessMessages;
  for i := 0 to dbgMov.SelectedRows.Count - 1 do
    begin
      {$IF CompilerVersion < 24}
        dbgMov.DataSource.DataSet.GotoBookmark(Pointer(dbgMov.SelectedRows.Items[i]));
      {$ELSE}
        dbgMov.DataSource.DataSet.GotoBookmark((dbgMov.SelectedRows.Items[i]));
      {$ENDIF}

      DMMain_FD.fdcGestion.StartTransaction;
      sbEstado.SimpleText:='Registro:'+CDSMovimientoTIPOCPBTE.Value+'-'+
                                       CDSMovimientoCLASECPBTE.Value+'-'+
                                       CDSMovimientoLETRAFAC.Value+'-'+
                                       CDSMovimientoSUCFAC.Value+'-'+
                                       CDSMovimientoNUMEROFAC.Value;
      Application.ProcessMessages;

      try
        SPModificar.Close;
        SPModificar.Params.ParamByName('id').AsInteger:=CDSMovimientoID_FC.AsInteger;
        SPModificar.ExecProc;
        DMMain_FD.fdcGestion.Commit;
        SPModificar.Close;
      except
        DMMain_FD.fdcGestion.Rollback;
      end;
    end;
  sbEstado.SimpleText:='Finalizado...';
  dbgMov.UnselectAll;
  Application.ProcessMessages;
end;

procedure TFormControlMovCtaVta_Detalles.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
 var d,m,y:word;
begin
  if chbPorDia.Checked=False then
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
      Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
    end
  else
    begin
      if Button=btnext Then
        Desde.Date:=IncDay(Desde.Date,1)
      else
        if Button=btPrev Then
         Desde.Date:=IncDay(Desde.Date,-1);
       Hasta.Date:=Desde.Date;

    end;
  BUSCAR.Execute;
end;

procedure TFormControlMovCtaVta_Detalles.VerComprobanteExecute(Sender: TObject);
begin
  inherited;
  if nOT(CDSMovimiento.IsEmpty) then
    begin
      IF NOT (Assigned(FormCpbte_2)) THEN
        FormCpbte_2   := TFormCpbte_2.Create(self);
      FormCpbte_2.DatoNew   := CDSMovimientoID_FC.AsString;
      FormCpbte_2.TipoCpbte := CDSMovimientoTIPOCPBTE.AsString;
      FormCpbte_2.Recuperar.Execute;
      FormCpbte_2.Show;
    end
end;

end.
