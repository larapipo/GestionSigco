unit UListadoFcPorVendedor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db, StdCtrls, Mask, Data.FMTBcd, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.Menus, DataExport, DataToXLS, frxClass, frxDBSet, Datasnap.DBClient,
  Datasnap.Provider, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  Vcl.ComCtrls, JvBaseEdits, JvToolEdit, JvExMask, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, JvAppStorage, JvAppIniStorage,
  Data.SqlExpr, JvComponentBase, JvFormPlacement, Vcl.ImgList, System.Actions,
  Vcl.ActnList, JvLabel, JvDBControls, JvExControls, JvGradient, Vcl.Buttons,
  Vcl.ToolWin, Vcl.ExtCtrls,DateUtils, VirtualUI_SDK, DBXCommon,
  System.ImageList, frCoreClasses;

type
  TFormFacturaPorVendedor = class(TFormABMBase)
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    edNombreVendedor: TEdit;
    BuscaVendedores: TAction;
    DSFacVta: TDataSource;
    DSPFacVta: TDataSetProvider;
    CDSFacVta: TClientDataSet;
    CDSFacVtaTIPOCPBTE: TStringField;
    CDSFacVtaCLASECPBTE: TStringField;
    CDSFacVtaNROCPBTE: TStringField;
    CDSFacVtaCODIGO: TStringField;
    CDSFacVtaNOMBRE: TStringField;
    CDSFacVtaID_FC: TIntegerField;
    CDSFacVtaALiquidar: TFloatField;
    frFacPorVendedor: TfrxReport;
    Imprimir: TAction;
    btImprimir: TBitBtn;
    frDBDFacVta: TfrxDBDataset;
    VerComprobante: TAction;
    UpDown1: TUpDown;
    CDSFacVtaVENDEDOR: TStringField;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    ceVendedor: TJvComboEdit;
    CDSPersonal: TClientDataSet;
    CDSPersonalNOMBRE: TStringField;
    DSPPersonal: TDataSetProvider;
    CDSFacVtaTOTALNETO: TFloatField;
    CDSBuscaPersonal: TClientDataSet;
    CDSBuscaPersonalNOMBRE: TStringField;
    CDSBuscaPersonalCODIGO: TStringField;
    DSPBuscaPersonal: TDataSetProvider;
    edTotal: TJvCalcEdit;
    edTotalNeto: TJvCalcEdit;
    edComision: TJvCalcEdit;
    ToolButton1: TToolButton;
    btExportarXLS: TBitBtn;
    DataToXLS: TDataToXLS;
    SaveDialog: TSaveDialog;
    CambiarVendedor: TAction;
    PopupMenu1: TPopupMenu;
    CambiarVendedor1: TMenuItem;
    CDSFacVtaTOTAL_REC: TFloatField;
    CDSFacVtaTOTALNETO_REC: TFloatField;
    QFacVta: TFDQuery;
    QFacVtaID_FC: TIntegerField;
    QFacVtaTIPOCPBTE: TStringField;
    QFacVtaCLASECPBTE: TStringField;
    QFacVtaNROCPBTE: TStringField;
    QFacVtaCODIGO: TStringField;
    QFacVtaNOMBRE: TStringField;
    QFacVtaVENDEDOR: TStringField;
    QFacVtaTOTAL: TFloatField;
    QFacVtaTOTALNETO: TFloatField;
    QFacVtaCOMSIONVENDEDOR: TFloatField;
    CDSFacVtaTOTAL: TFloatField;
    CDSFacVtaCOMSIONVENDEDOR: TFloatField;
    QFacVtaFECHAVTA: TSQLTimeStampField;
    CDSFacVtaFECHAVTA: TSQLTimeStampField;
    dbgFacturas: TDBGrid;
    CDSPersonalCOMISION: TFloatField;
    procedure BuscaVendedoresExecute(Sender: TObject);
    procedure ceVendedorKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure CDSFacVtaCalcFields(DataSet: TDataSet);
    procedure ImprimirExecute(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure VerComprobanteExecute(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure btExportarXLSClick(Sender: TObject);
    procedure CambiarVendedorExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure dbgFacturasMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnPrincipalMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormResize(Sender: TObject);
    procedure dbgFacturasTitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  procedure Sumar;

  end;

var
  FormFacturaPorVendedor: TFormFacturaPorVendedor;

implementation

uses UMuestraCpbteCtaCteVta,DMBuscadoresForm,
     UCambioVendedor,UDMain_FD, UFactura_2, UFacturaCtdo_2, UTiketVta;

{$R *.DFM}

procedure TFormFacturaPorVendedor.Sumar;
VAR Aux1,Aux2,Aux3:Real;
p: TBookmark;
begin
  Aux1:=0;
  Aux2:=0;
  p:=CDSFacVta.GetBookmark;
  CDSFacVta.First;
  CDSFacVta.DisableControls;
  while Not(CDSFacVta.Eof) do
    begin
      Aux1:=Aux1+CDSFacVtaALiquidar.Value;
      Aux2:=Aux2+CDSFacVtaTOTALNETO_REC.AsFloat;
      Aux3:=Aux3+CDSFacVtaTOTAL_REC.AsFloat;
      CDSFacVta.Next;
    end;
  CDSFacVta.EnableControls;
  CDSFacVta.GotoBookmark(p);
  CDSFacVta.FreeBookmark(p);
  edTotal.Value    :=Aux3;
  edTotalNeto.Value:=Aux2;
  edComision.Value :=Aux1;

  end;


procedure TFormFacturaPorVendedor.BuscaVendedoresExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaPersonal.Close;
  CDSBuscaPersonal.Open;
  ComBuscadorBase.Execute;
  if ComBuscadorBase.rOk THEN
    BEGIN
      ceVendedor.Text :=ComBuscadorBase.Id;
      CDSPersonal.Close;
      CDSPersonal.Params.ParamByName('codigo').Value := ComBuscadorBase.Id;
      CDSPersonal.Open;
      IF NOT (CDSPersonal.IsEmpty) THEN
        BEGIN
          edNombreVendedor.Text := CDSPersonalNOMBRE.Value;
          Buscar.Execute;
          ceVendedor.SetFocus;
          ceVendedor.SelectAll;
        END;
    END;
  CDSBuscaPersonal.Close;
end;

procedure TFormFacturaPorVendedor.ceVendedorKeyPress(Sender: TObject; var Key: Char);
var dato:string;
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceVendedor.Text))) + ceVendedor.Text;
      ceVendedor.Text := Dato;
      CDSPersonal.Close;
      CDSPersonal.Params.ParamByName('codigo').Value := Dato;
      CDSPersonal.Open;
      IF NOT (CDSPersonal.IsEmpty) THEN
        edNombreVendedor.Text := CDSPersonalNOMBRE.Value;
      CDSPersonal.Close;
      Buscar.Execute;
      ceVendedor.SetFocus;
      ceVendedor.SelectAll;
    END;

end;

procedure TFormFacturaPorVendedor.dbgFacturasMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  sbEstado.SimpleText:='Btn Derch. cambia Vendedor';
end;


procedure TFormFacturaPorVendedor.dbgFacturasTitleClick(Column: TColumn);
var Campo:String;
begin
  inherited;
 try
    Campo := Column.FieldName;// Field.FieldName;
    with dbgFacturas.DataSource.DataSet as TClientDataSet do
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

procedure TFormFacturaPorVendedor.DSBaseStateChange(Sender: TObject);
begin
 // inherited;

end;

procedure TFormFacturaPorVendedor.FormCreate(Sender: TObject);
begin
  inherited;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  AutoSize:=False;
end;

procedure TFormFacturaPorVendedor.FormDestroy(Sender: TObject);
begin
  inherited;
  FormFacturaPorVendedor:=nil;
end;

procedure TFormFacturaPorVendedor.FormResize(Sender: TObject);
begin
  inherited;
  if FormFacturaPorVendedor<>nil then
    if FormFacturaPorVendedor.width<>776 then
      FormFacturaPorVendedor.Width:=776;

end;

procedure TFormFacturaPorVendedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormFacturaPorVendedor.FormShow(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  DecodeDate(date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,System.DateUtils.DaysInMonth(Desde.Date));
  Desde.SetFocus;
end;

procedure TFormFacturaPorVendedor.btExportarXLSClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSFacVta.IsEmpty) THEN
    BEGIN
      SaveDialog.FileName:='FacturasPorVendedor';
      SaveDialog.DefaultExt:='XLS';

      if VirtualUI.Active then
        SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' then
          begin
            if VirtualUI.Active then
              DataToXLS.SaveToFile(SaveDialog.FileName)
            else
              DataToXLS.SaveToFile(SaveDialog.FileName);

            if VirtualUI.Active then
               VirtualUI.DownloadFile(SaveDialog.FileName);
          end;
    END
  ELSE
    ShowMessage('No hay datos visibles')
end;

procedure TFormFacturaPorVendedor.BuscarExecute(Sender: TObject);
begin
  if ceVendedor.Text<>'' Then
    begin
      CDSFacVta.Close;
      CDSFacVta.IndexDefs.Clear;
      CDSFacVta.IndexName:='';
      CDSFacVta.Params.ParamByName('codigo').Value:=ceVendedor.Text;
      CDSFacVta.Params.ParamByName('Desde').AsDate:=Desde.Date;
      CDSFacVta.Params.ParamByName('Hasta').AsDate:=Hasta.Date;
      CDSFacVta.Open;
      sumar;
    end;
end;

procedure TFormFacturaPorVendedor.CambiarVendedorExecute(Sender: TObject);
begin
  if Not(Assigned(FormCambioVendedor)) then
    FormCambioVendedor :=TFormCambioVendedor.Create(Self);
  FormCambioVendedor.VendedorOld :=CDSFacVtaVENDEDOR.Value;
  FormCambioVendedor.ShowModal;
  if FormCambioVendedor.ModalResult=mrOk then
    begin
      CDSFacVta.Edit;
      CDSFacVtaVENDEDOR.Value:=FormCambioVendedor.VendedorNew;
      CDSFacVta.Post;
      DMMain_FD.fdcGestion.StartTransaction;
      try
        CDSFacVta.ApplyUpdates(0);
        DMMain_FD.fdcGestion.Commit;
      Except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No se pudo cambiar el vendedor....');
      end;
    end;
  Buscar.Execute;//  CDSFacVta.Refresh;
end;

procedure TFormFacturaPorVendedor.CDSFacVtaCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSFacVtaTOTAL_REC.AsFloat    :=CDSFacVtaTOTAL.AsFloat;
  CDSFacVtaTOTALNETO_REC.AsFloat:=CDSFacVtaTOTALNETO.AsFloat;
  if CDSFacVtaTIPOCPBTE.Value='NC' then
    begin
      CDSFacVtaTOTAL_REC.AsFloat    :=CDSFacVtaTOTAL.AsFloat*-1;
      CDSFacVtaTOTALNETO_REC.AsFloat:=CDSFacVtaTOTALNETO.AsFloat*-1;
    end;
  CDSFacVtaALiquidar.Value:= CDSFacVtaTOTALNETO_REC.AsFloat *
                             CDSFacVtaCOMSIONVENDEDOR.AsFloat * 0.01;
end;

procedure TFormFacturaPorVendedor.ImprimirExecute(Sender: TObject);
begin
  inherited;
  frFacPorVendedor.LoadFromFile(DMMain_FD.PathReportesLst+'\FacPorVendedor.fr3');
  frFacPorVendedor.Variables['nombre']:=''''+edNombreVendedor.Text+'''';
  frFacPorVendedor.Variables['codigo']:=''''+ceVendedor.Text+'''';
  frFacPorVendedor.Variables['desde']:=''''+Desde.Text+'''';
  frFacPorVendedor.Variables['hasta']:=''''+hasta.Text+'''';
  frFacPorVendedor.ShowReport;
  ceVendedor.SetFocus;
  ceVendedor.SelectAll;
end;

procedure TFormFacturaPorVendedor.Panel1DblClick(Sender: TObject);
begin
  inherited;
  frFacPorVendedor.DesignReport;
end;

procedure TFormFacturaPorVendedor.pnPrincipalMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  sbEstado.SimpleText:='';
end;

procedure TFormFacturaPorVendedor.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frFacPorVendedor.DesignReport;
end;

procedure TFormFacturaPorVendedor.VerComprobanteExecute(Sender: TObject);
begin
  inherited;
  if (CDSFacVtaTIPOCPBTE.AsString='FC') or
     (CDSFacVtaTIPOCPBTE.AsString='NC') or
     (CDSFacVtaTIPOCPBTE.AsString='ND') Then
    begin
      IF NOT (Assigned(FormCpbte_2)) THEN
        FormCpbte_2    := TFormCpbte_2.Create(Application);
      FormCpbte_2.DatoNew   := CDSFacVtaID_FC.AsString;
      FormCpbte_2.TipoCpbte := CDSFacVtaTIPOCPBTE.AsString;
      FormCpbte_2.Recuperar.Execute;
      FormCpbte_2.Show;
    end
  else
    if (CDSFacVtaTIPOCPBTE.AsString='FO') Then
      begin
        IF NOT (Assigned(FormCpbteCtdo_2)) THEN
          FormCpbteCtdo_2 := TFormCpbteCtdo_2.Create(Application);
        FormCpbteCtdo_2.DatoNew   := CDSFacVtaID_FC.AsString;
        FormCpbteCtdo_2.TipoCpbte := CDSFacVtaTIPOCPBTE.AsString;
        FormCpbteCtdo_2.Recuperar.Execute;
        FormCpbteCtdo_2.Show;
      end
    else
      if (CDSFacVtaTIPOCPBTE.AsString='TK') Then
        begin
          IF NOT (Assigned(FormTicketVta)) THEN
            FormTicketVta := TFormTicketVta.Create(Application);
          FormTicketVta.DatoNew   := CDSFacVtaID_FC.AsString;
          FormTicketVta.TipoCpbte := CDSFacVtaTIPOCPBTE.AsString;
          FormTicketVta.Recuperar.Execute;
          FormTicketVta.Show;
        end;



end;

procedure TFormFacturaPorVendedor.UpDown1Click(Sender: TObject;
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
  Hasta.Date:=EncodeDate(y,m,System.DateUtils.DaysInMonth(Desde.Date));
  Buscar.Execute;
  //  Desde.SetFocus;
end;

end.