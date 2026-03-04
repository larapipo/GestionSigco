unit UVtaPorVendedorDiaria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvDBLookup, StdCtrls, ComCtrls, ExtCtrls, DB,
  Provider, DBClient, JvGradient, Grids, DBGrids, ActnList, Buttons, Mask,
   IniFiles, frxClass, frxDBSet, JvExMask, JvToolEdit,Printers,
  DateUtils,FMTBcd, SqlExpr, Menus, JvBaseEdits, JvExDBGrids, JvDBGrid,DBXCommon,
  System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  AdvOfficeButtons, AdvGroupBox, JvFormPlacement, JvComponentBase, JvAppStorage,
  JvAppIniStorage, frCoreClasses;

type
  TFormVtaVendedorDiaria = class(TForm)
    pnPrincipal: TPanel;
    pnCabecera: TPanel;
    Label1: TLabel;
    dbcSucursal: TJvDBLookupCombo;
    Label2: TLabel;
    dbcVendedor: TJvDBLookupCombo;
    pnPie: TPanel;
    ActionList1: TActionList;
    Buscar: TAction;
    DSVendedores: TDataSource;
    DSSucursal: TDataSource;
    btBuscar: TBitBtn;
    btSalir: TBitBtn;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    Salir: TAction;
    DSVta: TDataSource;
    CDSVta: TClientDataSet;
    DSPVta: TDataSetProvider;
    frDBVta: TfrxDBDataset;
    frxReport: TfrxReport;
    Desde: TJvDateEdit;
    CDSVtaTIPOCPBTE: TStringField;
    CDSVtaCLASECPBTE: TStringField;
    CDSVtaLETRAFAC: TStringField;
    CDSVtaNROCPBTE: TStringField;
    CDSVtaCODIGO: TStringField;
    CDSVtaRAZONSOCIAL: TStringField;
    CDSVtaVENDEDOR: TStringField;
    CDSVtaMUESTRAVENDEDOR: TStringField;
    CDSVtaZONA: TIntegerField;
    CDSVtaSUCURSAL: TIntegerField;
    CDSVtaCONDICIONVTA: TIntegerField;
    CDSVtaDENOMINACION: TStringField;
    CDSVtaANULADO: TStringField;
    CDSVtaTOTALCALCULADO: TFloatField;
    DSCaja: TDataSource;
    dbcCaja: TJvDBLookupCombo;
    Label3: TLabel;
    upCambiaFecha: TUpDown;
    Anular: TAction;
    CDSVtaID_FC: TIntegerField;
    PopupMenu1: TPopupMenu;
    Anular1: TMenuItem;
    VerCpbte: TAction;
    N1: TMenuItem;
    VerCpbte1: TMenuItem;
    edTotal: TJvCalcEdit;
    dbgVta: TJvDBGrid;
    QSucursal: TFDQuery;
    QSucursalCODIGO: TIntegerField;
    QSucursalDETALLE: TStringField;
    QSucursalDIRECCION: TStringField;
    QSucursalLOCALIDAD: TStringField;
    QSucursalTELEFONO1: TStringField;
    QSucursalTELEFONO2: TStringField;
    QSucursalRECARGO: TFloatField;
    QVendedor: TFDQuery;
    QVta: TFDQuery;
    CDSVtaTOTAL: TFloatField;
    QCaja_: TFDQuery;
    chbFecha: TAdvOfficeCheckBox;
    chEstado: TAdvOfficeCheckBox;
    CDSVtaINF_X: TStringField;
    spAnularFactura: TFDStoredProc;
    QMarcarX: TFDQuery;
    MarcarX: TAction;
    btFiltroCpbte: TButton;
    rgInformeX: TAdvOfficeRadioGroup;
    DesmarcarX: TAction;
    QDesmarcarX: TFDQuery;
    DesmarcarX1: TMenuItem;
    N2: TMenuItem;
    MarcarX1: TMenuItem;
    CDSVtaNRO_Z: TIntegerField;
    CDSVtaID_CAJA: TIntegerField;
    CDSVtaID_CUENTA_CAJA: TIntegerField;
    CDSRub: TClientDataSet;
    frDBRub: TfrxDBDataset;
    DSRub: TDataSource;
    CDSRubTOTAL_CALCULADO: TFloatField;
    CDSRubTOTAL: TFloatField;
    CDSRubTIPOCPBTE: TStringField;
    CDSRubANULADO: TStringField;
    QRub: TFDQuery;
    DSPRub: TDataSetProvider;
    CDSRubDETALLE_RUBRO: TStringField;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    JvFormStorage: TJvFormStorage;
    CDSVtaFECHAVTA: TSQLTimeStampField;
    CDSVtaFECHAVTO: TSQLTimeStampField;
    CDSRubFECHAVTA: TSQLTimeStampField;
    CDSVtaFACTURA_ELECTRONICA: TStringField;
    frDBCaja: TfrxDBDataset;
    DSPCaja: TDataSetProvider;
    CDSCaja: TClientDataSet;
    CDSCajaID_CAJA: TIntegerField;
    CDSCajaID_CUENTA_CAJA: TIntegerField;
    CDSCajaSALDO_INCIAL: TFloatField;
    CDSCajaESTADO: TIntegerField;
    CDSCajaNUMEROCAJA: TIntegerField;
    CDSCajaMUESTRACTACAJA: TStringField;
    CDSCajaFECHA_INCIO: TSQLTimeStampField;
    CDSCajaFECHA_CIERRE: TSQLTimeStampField;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    chbPreview: TAdvOfficeCheckBox;
    chbConDetalle: TAdvOfficeCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure pnPieDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CDSVtaCalcFields(DataSet: TDataSet);
    procedure chEstadoClick(Sender: TObject);
    procedure upCambiaFechaClick(Sender: TObject; Button: TUDBtnType);
    procedure AnularExecute(Sender: TObject);
    procedure dbgVtaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure chbFechaClick(Sender: TObject);
    procedure VerCpbteExecute(Sender: TObject);
    procedure dbgVtaTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure CDSVtaINF_XGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure MarcarXExecute(Sender: TObject);
    procedure btFiltroCpbteClick(Sender: TObject);
    procedure DesmarcarXExecute(Sender: TObject);
    procedure rgInformeXClick(Sender: TObject);
    procedure CDSRubCalcFields(DataSet: TDataSet);
    procedure BuscarExecute(Sender: TObject);
    procedure dbcCajaChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    PrListados,PrDefault:Integer;
    VtaIni,ArchivoIni:TIniFile;
    Vendedor:String;
    PrNomListados,PrListadoDefecto:String;
    Iva21,Iva0,Iva105:Extended;
    Sucursal,Caja:Integer;
    procedure Sumar;
  end;

var
  FormVtaVendedorDiaria: TFormVtaVendedorDiaria;

implementation

uses  UDMain_FD,UFacturaCtdo_2, UTiketVta, UFactura_2,
  UFiltroComprobantesVenta;
{$R *.dfm}

procedure TFormVtaVendedorDiaria.Sumar;
var CDSClone:TClientDataSet;
Total:Extended;
begin
  edTotal.Value:=0;
  Iva21  :=0;
  Iva0   :=0;
  Iva105 :=0;
  CDSVta.First;
  CDSVta.DisableControls;
  while Not(CDSVta.Eof) do
    begin
      edTotal.Value:=edTotal.Value+CDSVtaTOTALCALCULADO.AsFloat;
//      if CDSVtaTASA.AsInteger=21 then
//        Iva21:=Iva21+CDSVtaTOTALCALCULADO.AsFloat;
//      if CDSVtaTASA.AsInteger=0 then
//        Iva0:=Iva0+CDSVtaTOTALCALCULADO.AsFloat;
//      if CDSVtaTASA.AsInteger=10 then
//        Iva105:=Iva105+CDSVtaTOTALCALCULADO.AsFloat;


      CDSVta.Next;
    end;
  CDSVta.First;
  CDSVta.EnableControls;
end;

procedure TFormVtaVendedorDiaria.AnularExecute(Sender: TObject);
begin
  if CDSVtaFACTURA_ELECTRONICA.Value='S' then
    raise Exception.Create('Factura Electronica, no se puede anular....');


  if MessageDlg('Esta por hacer una anulacion, esta seguro...?',mtConfirmation,mbYesNo,0)=mrYes then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        spAnularFactura.Close;
        spAnularFactura.ParamByName('id').Value:=CDSVtaID_FC.Value;
        spAnularFactura.ExecProc;
        DMMain_FD.fdcGestion.Commit;
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No se pudo anular el Cpbte...');
      end;
    end;
  Buscar.Execute;  
end;


procedure TFormVtaVendedorDiaria.btFiltroCpbteClick(Sender: TObject);
begin
 if Not(Assigned(FormFiltroCpbtes)) then
    FormFiltroCpbtes:=TFormFiltroCpbtes.Create(Self);
   FormFiltroCpbtes.ShowModal;
end;

procedure TFormVtaVendedorDiaria.BuscarExecute(Sender: TObject);
var Fecha:TDate;
begin
  Fecha:=EncodeDate(1900,1,1);
//  if dbcCaja.KeyValue>-1 then
//    Desde.Date:=dbcCaja.LookupSource.DataSet.FieldByName('FECHA_INCIO').AsDateTime;
  CDSVta.Close;
  CDSVta.Params.ParamByName('Zeta').AsInteger     := -1;
  CDSVta.Params.ParamByName('Vendedor').AsString  := dbcVendedor.KeyValue;
  CDSVta.Params.ParamByName('Sucursal').AsInteger := dbcSucursal.KeyValue;
  CDSVta.Params.ParamByName('id_caja').AsInteger  := dbcCaja.KeyValue;
  CDSVta.Params.ParamByName('Desde').AsDate       := Desde.Date;
  CDSVta.Params.ParamByName('Hasta').AsDate       := Desde.Date;

  if dbcCaja.KeyValue = -1 then
    CDSVta.Params.ParamByName('id_cta_caja').AsInteger := -1 //dbcCaja.KeyValue
  else
    CDSVta.Params.ParamByName('id_cta_caja').AsInteger := dbcCaja.LookupSource.DataSet.FieldByName('id_cuenta_caja').AsInteger;
  case rgInformeX.ItemIndex of
    0:CDSVta.Params.ParamByName('InfX').AsString := '*';
    1:CDSVta.Params.ParamByName('InfX').AsString := 'S';
    2:CDSVta.Params.ParamByName('InfX').AsString := 'N';
  end;
  CDSVta.Open;

//  CDSVta.Filtered := False;
//  CDSVta.Filter   := 'FechaVta = '+''''+DateToStr(Desde.Date)+'''';
//  CDSVta.Filtered := chbFecha.Checked;

  CDSRub.Close;
  CDSRub.Params.ParamByName('Zeta').AsInteger       := -1;
  CDSRub.Params.ParamByName('Vendedor').AsString    := dbcVendedor.KeyValue;
  CDSRub.Params.ParamByName('Sucursal').AsInteger   := dbcSucursal.KeyValue;
  CDSRub.Params.ParamByName('id_caja').AsInteger    := dbcCaja.KeyValue;
  CDSRub.Params.ParamByName('Desde').AsDate         := Desde.Date;
  CDSRub.Params.ParamByName('Hasta').AsDate         := Desde.Date;

  if dbcCaja.KeyValue = -1 then
    CDSRub.Params.ParamByName('id_cta_caja').AsInteger := dbcCaja.KeyValue
  else
    CDSRub.Params.ParamByName('id_cta_caja').AsInteger := dbcCaja.LookupSource.DataSet.FieldByName('id_cuenta_caja').AsInteger;
  case rgInformeX.ItemIndex of
    0:CDSRub.Params.ParamByName('InfX').AsString:='*';
    1:CDSRub.Params.ParamByName('InfX').AsString:='S';
    2:CDSRub.Params.ParamByName('InfX').AsString:='N';
  end;

  dbgVta.Width:=dbgVta.Width+1;
  dbgVta.Width:=dbgVta.Width-1;

  CDSRub.Open;
  edTotal.Value:=0;
  Sumar;
end;


procedure TFormVtaVendedorDiaria.CDSRubCalcFields(DataSet: TDataSet);
begin
  CDSRubTOTAL_CALCULADO.Value:=CDSRubTOTAL.AsFloat;
  if CDSRubTIPOCPBTE.Value='NC' then
    CDSRubTOTAL_CALCULADO.Value:=CDSRubTOTAL.AsFloat*-1;
  if CDSRubANULADO.Value='S' then
    CDSRubTOTAL_CALCULADO.Value:=0;

end;

procedure TFormVtaVendedorDiaria.CDSVtaCalcFields(DataSet: TDataSet);
begin
  CDSVtaTOTALCALCULADO.Value:=CDSVtaTOTAL.AsFloat;
  if CDSVtaTIPOCPBTE.Value='NC' then
    CDSVtaTOTALCALCULADO.Value:=CDSVtaTOTAL.AsFloat*-1;
  if CDSVtaANULADO.Value='S' then
    CDSVtaTOTALCALCULADO.Value:=0;

end;

procedure TFormVtaVendedorDiaria.CDSVtaINF_XGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if CDSVtaINF_X.Value='S' then
    Text:='*'
  else
    Text:='';
end;

procedure TFormVtaVendedorDiaria.chbFechaClick(Sender: TObject);
begin
  if CDSVta.Active=True then
    begin
      CDSVta.Filtered:=False;
      CDSVta.Filter:='FechaVta = '+''''+DateToStr(Desde.Date)+'''';
      CDSVta.Filtered:=chbFecha.Checked;

      CDSRub.Filtered:=False;
      CDSRub.Filter:='FechaVta = '+''''+DateToStr(Desde.Date)+'''';
      CDSRub.Filtered:=chbFecha.Checked;

      Sumar;
    end;
end;

procedure TFormVtaVendedorDiaria.chEstadoClick(Sender: TObject);
begin
  CDSCaja.Close;
  if (chEstado.Checked=False) then
    CDSCaja.Params.ParamByName('Estado').Value:=0
  else
    CDSCaja.Params.ParamByName('Estado').Value:=1;
  CDSCaja.Open;
  Buscar.Execute;
end;

procedure TFormVtaVendedorDiaria.dbcCajaChange(Sender: TObject);
begin
  if dbcCaja.KeyValue>-1 then
    Desde.Date:=dbcCaja.LookupSource.DataSet.FieldByName('FECHA_INCIO').AsDateTime;
  Buscar.Execute;
end;

procedure TFormVtaVendedorDiaria.dbgVtaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 if CDSVtaANULADO.Value='S' then
    dbgVta.Canvas.Font.Style:=[fsStrikeOut]
  else
    dbgVta.Canvas.Font.Style:=[];
  dbgVta.DefaultDrawColumnCell(Rect,DataCol,Column,state);
end;

procedure TFormVtaVendedorDiaria.dbgVtaTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:String;
begin
// para el uso en DBGrid, ordenar or columna
 try
    Campo := Field.FieldName;
    with dbgVta.DataSource.DataSet as TClientDataSet do
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

procedure TFormVtaVendedorDiaria.DesmarcarXExecute(Sender: TObject);
var
i:Integer;
begin
  for I := 0 to dbgVta.SelectedRows.Count-1 do
    begin
      {$IF CompilerVersion < 24}
        dbgVta.DataSource.DataSet.GotoBookmark(Pointer(dbgVta.SelectedRows.Items[i]));
      {$ELSE}
        dbgVta.DataSource.DataSet.GotoBookmark((dbgVta.SelectedRows.Items[i]));
      {$ENDIF}


      QDesMarcarX.Close;
      QdESMarcarX.ParamByName('id').Value:=CDSVtaID_FC.Value;
      QdESMarcarX.ExecSQL;
      QdESMarcarX.Close;
    end;
  dbgVta.UnselectAll;
  Buscar.Execute;
end;

procedure TFormVtaVendedorDiaria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  VtaIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_vtaporvendedor.ini');
  //*************************************************************
  VtaIni.WriteInteger('Vta', 'sucursal',dbcSucursal.KeyValue);
  VtaIni.WriteString('Vta', 'vendedor', dbcVendedor.KeyValue);
  VtaIni.WriteString('Vta', 'Caja', dbcCaja.KeyValue);

  VtaIni.WriteBool('impresion','detalle',chbConDetalle.Checked);
  VtaIni.WriteBool('impresion','preview',chbPreview.Checked);
  VtaIni.WriteBool('Vta','Fecha',chbFecha.Checked);

  VtaIni.Free;

  Action:=caFree;
end;

procedure TFormVtaVendedorDiaria.FormCreate(Sender: TObject);
begin
  AutoSize := False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  VtaIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_vtaporvendedor.ini');
  //*************************************************************
  sucursal                  := VtaIni.ReadInteger('Vta', 'sucursal', -1);
  vendedor                  := VtaIni.ReadString('Vta', 'vendedor', '******');
  caja                      := VtaIni.ReadInteger('Vta','caja',-1);
  chbConDetalle.Checked     := VtaIni.ReadBool('impresion','detalle',False);
  chbPreview.Checked        := VtaIni.ReadBool('impresion','preview',False);
  chbFecha.Checked          := VtaIni.ReadBool('vta','Fecha',False);

  VtaIni.Free;

  ArchivoIni       := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.NombreIni);
  //Impresoras
  PrListados       := ArchivoIni.ReadInteger('Impresoras', 'Listados', printer.PrinterIndex);
  PrNomListados    := ArchivoIni.ReadString('Impresoras', 'Listados', '');
  PrListadoDefecto := ArchivoIni.ReadString('Impresoras', 'ListadoDefecto','N');

  ArchivoIni.Free;


  QSucursal.Open;
  QVendedor.Open;
  Desde.Date           := Date;
  dbcSucursal.KeyValue := Sucursal;
  dbcVendedor.KeyValue := Vendedor;
  dbcCaja.KeyValue     := Caja;
  CDSCaja.Close;
  if (chEstado.Checked=False) then
    CDSCaja.Params.ParamByName('Estado').Value:=0
  else
    CDSCaja.Params.ParamByName('Estado').Value:=1;
  CDSCaja.Open;

  Buscar.Execute;
end;

procedure TFormVtaVendedorDiaria.FormDestroy(Sender: TObject);
begin
  FormVtaVendedorDiaria:=nil;
end;

procedure TFormVtaVendedorDiaria.FormResize(Sender: TObject);
begin
  if FormVtaVendedorDiaria<>nil then
    if FormVtaVendedorDiaria.Width<>586 then
      FormVtaVendedorDiaria.Width:=586;



end;

procedure TFormVtaVendedorDiaria.FormShow(Sender: TObject);
begin
  Desde.SetFocus;
end;

procedure TFormVtaVendedorDiaria.ImprimirExecute(Sender: TObject);
begin
  if Not(CDSVta.IsEmpty) Then
    begin
      CDSRub.IndexFieldNames:='DETALLE_RUBRO';

      if chbConDetalle.Checked then
         frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoVtasVendedorDia.fr3')
      else
         frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoVtasVendedorDia_SD.fr3');

      frxReport.PrintOptions.Printer:=PrNomListados;
      frxReport.SelectPrinter;

      frxReport.Variables['Fecha']     :=''''+FormatDateTime('dd/mm/yyyy',Desde.Date)+'''';
      frxReport.Variables['Vendedor']  :=''''+dbcVendedor.Text+'''';
      frxReport.Variables['Sucursal']  :=''''+dbcSucursal.Text+'''';
      frxReport.Variables['iva21']     :=''''+FormatFloat('0.00',Iva21)+'''';
      frxReport.Variables['iva105']    :=''''+FormatFloat('0.00',Iva105)+'''';
      frxReport.Variables['iva0']      :=''''+FormatFloat('0.00',Iva0)+'''';

      frxReport.PrintOptions.ShowDialog:=True;
      if chbPreview.Checked then
        begin
          frxReport.ShowReport;
        end
      else
        begin
         frxReport.PrintOptions.ShowDialog:=False;
         frxReport.Print;
        end;
      IF  MessageDlg('Marcar Registros Como Impresos?', mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
        MarcarX.Execute;

    end
  else ShowMessage('No Hay datos para Listar......');

end;

procedure TFormVtaVendedorDiaria.MarcarXExecute(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass;
  CDSVta.First;
  while not(CDSvta.Eof) do
    begin
      QMarcarX.Close;
      QMarcarX.ParamByName('id').Value:=CDSVtaID_FC.Value;
      QMarcarX.ExecSQL;
      QMarcarX.Close;
      CDSVta.Next;
    end;
  Screen.Cursor:=crDefault;

end;

procedure TFormVtaVendedorDiaria.pnPieDblClick(Sender: TObject);
begin
  frxReport.DesignReport;
end;

procedure TFormVtaVendedorDiaria.rgInformeXClick(Sender: TObject);
begin
  Buscar.Execute;
end;

procedure TFormVtaVendedorDiaria.SalirExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormVtaVendedorDiaria.upCambiaFechaClick(Sender: TObject;
  Button: TUDBtnType);
begin
  if Button=btNext then
    Desde.Date:=IncDay(Desde.Date,1)
  else
    Desde.Date:= IncDay(Desde.Date,-1);

 Buscar.Execute;
    //  CDSVta.Filtered:=False;
//  CDSVta.Filter:='FechaVta = '+''''+DateToStr(Desde.Date)+'''';
//  CDSVta.Filtered:=chbFecha.Checked;


end;

procedure TFormVtaVendedorDiaria.VerCpbteExecute(Sender: TObject);
begin
  if CDSVtaTIPOCPBTE.Value='FO' then
    begin
      IF NOT (Assigned(FormCpbteCtdo_2)) THEN
        FormCpbteCtdo_2   := TFormCpbteCtdo_2.Create(self);
      FormCpbteCtdo_2.DatoNew   := CDSVtaID_FC.AsString;
      FormCpbteCtdo_2.TipoCpbte := CDSVtaTIPOCPBTE.AsString;
      FormCpbteCtdo_2.Recuperar.Execute;
      FormCpbteCtdo_2.Show;
    end
  else
    if CDSVtaTIPOCPBTE.Value='TK' then
      begin
        IF NOT (Assigned(FormTicketVta)) THEN
          FormTicketVta   := TFormTicketVta.Create(self);
        FormTicketVta.DatoNew   := CDSVtaID_FC.AsString;
        FormTicketVta.TipoCpbte := CDSVtaTIPOCPBTE.AsString;
        FormTicketVta.Recuperar.Execute;
        FormTicketVta.Show;
      end
    else
      if CDSVtaTIPOCPBTE.Value='NC' then
        begin
          IF NOT (Assigned(FormCpbte_2)) THEN
            FormCpbte_2   := TFormCpbte_2.Create(self);
          FormCpbte_2.DatoNew   := CDSVtaID_FC.AsString;
          FormCpbte_2.TipoCpbte := CDSVtaTIPOCPBTE.AsString;
          FormCpbte_2.Recuperar.Execute;
          FormCpbte_2.Show;
        end;

end;

end.