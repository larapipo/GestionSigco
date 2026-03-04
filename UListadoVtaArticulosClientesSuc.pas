unit UListadoVtaArticulosClientesSuc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, ComCtrls,   StdCtrls, Mask, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, Provider, DB, DBClient, JvComponentBase, 
  ImgList,   ActnList,
  JvExControls, JvGradient, Buttons, ToolWin,Librerias, ExtCtrls, frxClass,
  frxDBSet,    DataExport, DataToXLS, 
  frxExportText, frxExportRTF, frxExportXLS, frxExportPDF, JvFormPlacement,
  JvLabel, JvDBControls, JvDBLookup, JvAppStorage, JvAppIniStorage,
  System.Actions, Vcl.Samples.Spin,VirtualUI_SDK, Data.FMTBcd, JvToolEdit,
  JvExMask, Data.SqlExpr, CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, AdvOfficeButtons, frxExportBaseDialog, System.ImageList,
  frCoreClasses;

type
  TFormListadoVtaArticulosClienteSuc = class(TFormABMBase)
    CDSVtas: TClientDataSet;
    DSPVta: TDataSetProvider;
    DSVtas: TDataSource;
    DSPEmpresa: TDataSetProvider;
    frVta: TfrxReport;
    frDBEmpresa: TfrxDBDataset;
    DSSucursal: TDataSource;
    CDSVtasRUBRO_STK: TStringField;
    CDSVtasDETALLE_RUBRO: TStringField;
    CDSVtasSUBRUBRO_STK: TStringField;
    CDSVtasDETALLE_SUBRUBRO: TStringField;
    CDSVtasCODIGOARTICULO: TStringField;
    CDSVtasDETALLE: TStringField;
    DSVtaPorCliente: TDataSource;
    DSPVtaPorCliente: TDataSetProvider;
    CDSVtaPorCliente: TClientDataSet;
    pcVentas: TPageControl;
    pag1: TTabSheet;
    pag2: TTabSheet;
    dbgVta: TJvDBGrid;
    dbgVtaCliente: TJvDBGrid;
    frxVtas: TfrxDBDataset;
    frxVtasClientes: TfrxDBDataset;
    btVtas: TBitBtn;
    btVta_Cliente: TBitBtn;
    frxPDFExport1: TfrxPDFExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    DataToXLSVtas: TDataToXLS;
    DataToXLSVtasClientes: TDataToXLS;
    btExcel: TBitBtn;
    BitBtn1: TBitBtn;
    SaveDialog: TSaveDialog;
    CDSEmpresa: TClientDataSet;
    CDSEmpresaNOMBRE: TStringField;
    CDSEmpresaACTIVIDAD: TStringField;
    CDSEmpresaDIRECCION: TStringField;
    CDSEmpresaLOCALIDAD: TStringField;
    CDSEmpresaCORREO: TStringField;
    CDSEmpresaTELEFONO1: TStringField;
    CDSEmpresaTELEFONO2: TStringField;
    CDSEmpresaCUIT: TStringField;
    CDSEmpresaCONDICIONIVA: TStringField;
    CDSEmpresaNRO_AGTE_RET_INGBRUTOS: TStringField;
    CDSEmpresaLOGO: TBlobField;
    CDSEmpresaCPOSTAL: TStringField;
    CDSEmpresaNRO_AGTE_RET_GANANCIA: TStringField;
    CDSEmpresaAG_RET_GANANCIA: TStringField;
    CDSEmpresaAG_RET_ING_BRUTOS: TStringField;
    CDSEmpresaAG_PERCEPCION_ING_BRUTOS: TStringField;
    CDSEmpresaTASA_PERCEPCION_IB: TFMTBCDField;
    CDSEmpresaMINO_IMP_PERCEP_IB: TFMTBCDField;
    CDSEmpresaPROVINCIA: TIntegerField;
    DSPSucursal: TDataSetProvider;
    CDSSucursal: TClientDataSet;
    CDSVtaPorClienteNOMBRE: TStringField;
    CDSVtaPorClienteRUBRO_STK: TStringField;
    CDSVtaPorClienteDETALLE_RUBRO: TStringField;
    CDSVtaPorClienteSUBRUBRO_STK: TStringField;
    CDSVtaPorClienteCODIGOARTICULO: TStringField;
    CDSVtaPorClienteDETALLE: TStringField;
    pnPie: TPanel;
    rgModo: TRadioGroup;
    JvGradient3: TJvGradient;
    Panel2: TPanel;
    Label1: TLabel;
    ceCliente: TJvComboEdit;
    edNombreCliente: TEdit;
    desde: TJvDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    hasta: TJvDateEdit;
    RxLabel3: TJvLabel;
    cbSucursal: TJvDBLookupCombo;
    lbEstado: TLabel;
    Button1: TButton;
    SpinButton1: TSpinButton;
    QSucursal: TFDQuery;
    QClientes: TFDQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    QClientesNOMBRE_COMPLETO: TStringField;
    QClientesRAZON_SOCIAL: TStringField;
    QVtas: TFDQuery;
    CDSVtasCANTIDAD: TFloatField;
    CDSVtasPRECIO_PROMEDIO: TFloatField;
    CDSVtasTOTAL_VTA: TFloatField;
    CDSVtasTOTAL_VTA_PROMEDIO: TFloatField;
    QVtaPorCliente: TFDQuery;
    CDSVtaPorClienteCANTIDAD: TFloatField;
    CDSVtaPorClienteTOTAL_VTA: TFloatField;
    CDSVtaPorClientePRECIO_PROMEDIO: TFloatField;
    CDSVtaPorClienteTOTAL_VTA_FINAL: TFloatField;
    CDSVtaPorClientePRECIO_PROMEDIO_FINAL: TFloatField;
    CDSVtaPorClienteTOTAL_VTA_PROMEDIO: TFloatField;
    CDSVtaPorClienteTOTAL_PROMEDIO_FINAL: TFloatField;
    chbTodos: TAdvOfficeCheckBox;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSSucursalDIRECCION: TStringField;
    CDSSucursalLOCALIDAD: TStringField;
    CDSSucursalTELEFONO1: TStringField;
    CDSSucursalTELEFONO2: TStringField;
    CDSSucursalRECARGO: TFloatField;
    CDSSucursalAPLICA_PERCEPCION_IIBB: TStringField;
    CDSSucursalGENERA_XML_COMUN: TStringField;
    CDSSucursalHOST: TStringField;
    CDSSucursalCERTIFICADO_ELEC: TStringField;
    CDSSucursalCUIT: TStringField;
    CDSSucursalRAZONSOCIAL: TStringField;
    QClientesSUCURSAL: TIntegerField;
    QClientesACTIVO: TStringField;
    CDSVtaPorClienteCLIENTE: TStringField;
    CDSVtaPorClienteDETALLE_SUBRUBRO: TStringField;
    CDSEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormShow(Sender: TObject);
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure ceClienteButtonClick(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgVtaTitleBtnClick(Sender: TObject; ACol: Integer; Field: TField);
    procedure ceClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbgVtaClienteTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure btVtasClick(Sender: TObject);
    procedure btVta_ClienteClick(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure chbTodosClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpinButton1DownClick(Sender: TObject);
    procedure SpinButton1UpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoVtaArticulosClienteSuc: TFormListadoVtaArticulosClienteSuc;

implementation

uses UBuscadorClientes, UDMain_FD, UFiltroComprobantesVenta;

{$R *.dfm}

procedure TFormListadoVtaArticulosClienteSuc.btVta_ClienteClick(Sender: TObject);
begin
  inherited;
  frVta.PrintOptions.Printer:=PrNomListados;
  frVta.SelectPrinter;
  frVta.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoVtasClienteCantidades.fr3');
  frVta.Variables['desde']   :=''''+Desde.Text+'''';
  frVta.Variables['hasta']   :=''''+Hasta.Text+'''';
  frVta.Variables['Sucursal']:=''''+cbSucursal.Text+'''';
  frVta.ShowReport;
end;

procedure TFormListadoVtaArticulosClienteSuc.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  if NOT (CDSVtaPorCliente.IsEmpty) THEN
    BEGIN
      SaveDialog.FileName:='VentasCliente_Rubro_SubRubro';
      SaveDialog.DefaultExt:='XLS';

      SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

      if SaveDialog.Execute Then
        begin
          DataToXLSVtasClientes.SaveToFile(SaveDialog.FileName) ;
          if VirtualUI.Active then
            VirtualUI.DownloadFile(SaveDialog.FileName);
        end;
    END
  ELSE
    ShowMessage('No hay datos visibles');

end;

procedure TFormListadoVtaArticulosClienteSuc.btExcelClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  if NOT (CDSVtas.IsEmpty) THEN
    BEGIN
      SaveDialog.FileName:='VentasRubro_SubRubro';
      SaveDialog.DefaultExt:='XLS';

      SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' Then
          begin
            DataToXLSVtas.SaveToFile(SaveDialog.FileName);

            if VirtualUI.Active then
              VirtualUI.DownloadFile(SaveDialog.FileName);
        end;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormListadoVtaArticulosClienteSuc.btVtasClick(Sender: TObject);
begin
  inherited;
  frVta.PrintOptions.Printer:=PrNomListados;
  frVta.SelectPrinter;
  frVta.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoVtasCantidades.fr3');
  frVta.Variables['desde']   :=''''+Desde.Text+'''';
  frVta.Variables['hasta']   :=''''+Hasta.Text+'''';
  frVta.Variables['Sucursal']:=''''+cbSucursal.Text+'''';
  frVta.ShowReport;
end;

procedure TFormListadoVtaArticulosClienteSuc.BuscarExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor:=crHourGlass;

  if (rgModo.ItemIndex=0) or (rgModo.ItemIndex=1) then
    begin

      sbEstado.SimpleText:='Iniciando Consulta Vtas...';
      Application.ProcessMessages;
      CDSVtas.Close;
      CDSVtas.IndexDefs.Clear;
      CDSVtas.IndexFieldNames:='';
      CDSVtas.Params.ParamByName('desde').Value:=desde.Date;
      CDSVtas.Params.ParamByName('hasta').Value:=hasta.Date;
      if chbTodos.Checked=False then
        begin
          if ceCliente.Text<>'' then
            CDSVtas.Params.ParamByName('codigo').Value:=ceCliente.Text
          else
           CDSVtas.Params.ParamByName('codigo').Value:='******';
        end
      else
        if chbTodos.Checked=True then
           CDSVtas.Params.ParamByName('codigo').Value:='******';


      CDSVtas.Params.ParamByName('sucursal').Value:=cbSucursal.KeyValue;
      CDSVtas.Open;

      sbEstado.SimpleText:='';
      Application.ProcessMessages;
    end;

  if (rgModo.ItemIndex=0) or (rgModo.ItemIndex=2) then
    begin
      sbEstado.SimpleText:='Iniciando Consulta Vtas x Clientes...';
      Application.ProcessMessages;

      CDSVtaPorCliente.Close;
      CDSVtaPorCliente.IndexDefs.Clear;
      CDSVtaPorCliente.IndexFieldNames:='';
      CDSVtaPorCliente.Params.ParamByName('desde').Value:=desde.Date;
      CDSVtaPorCliente.Params.ParamByName('hasta').Value:=hasta.Date;
      if chbTodos.Checked=False then
        begin
          if ceCliente.Text<>'' then
            CDSVtaPorCliente.Params.ParamByName('codigo').Value:=ceCliente.Text
          else
            CDSVtaPorCliente.Params.ParamByName('codigo').Value:='******';
        end
      else
        if chbTodos.Checked=True then
          CDSVtaPorCliente.Params.ParamByName('codigo').Value:='******';

      CDSVtaPorCliente.Params.ParamByName('sucursal').Value:=cbSucursal.KeyValue;
      CDSVtaPorCliente.Open;
    end;

  sbEstado.SimpleText:='';
  Application.ProcessMessages;
  Screen.Cursor      :=crDefault;

  if rgModo.ItemIndex=2 then
    pcVentas.ActivePageIndex:=1;
  pcVentas.SetFocus;
  
end;

procedure TFormListadoVtaArticulosClienteSuc.Button1Click(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormFiltroCpbtes)) then
    FormFiltroCpbtes:=TFormFiltroCpbtes.Create(Self);
  FormFiltroCpbtes.ShowModal;
end;

procedure TFormListadoVtaArticulosClienteSuc.ceClienteButtonClick(
  Sender: TObject);
var aux:Real;
BEGIN
  IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''; // Act+Inac+Judiciales
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
  //QClientes.Close;
  //QClientes.Open;
  //IF wwBuscadorCliente.Execute THEN
    BEGIN
      ceCliente.Text :=FormBuscadorClientes.Codigo;
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := FormBuscadorClientes.Codigo;
      QClientes.Open;
      if DMMain_FD.ModificaSucursal=False Then
        begin
          if QClientesSUCURSAL.Value<>SucursalPorDefecto Then
            begin
              QClientes.Close;
              ceCliente.Text := '';
            end;
        end;
      IF NOT (QClientes.IsEmpty) THEN
        BEGIN
          edNombreCliente.Text := QClientesNOMBRE.Value;
          if QClientesACTIVO.Value='S' Then
            lbEstado.caption:='Cliente Activo'
          else
            if QClientesACTIVO.Value='N' Then
              lbEstado.caption:='Cliente Inactivo'
            else
              if QClientesACTIVO.Value='G' Then
                lbEstado.caption:='Gestion Judicial';
          Buscar.Execute;
        END;
    END;
end;

procedure TFormListadoVtaArticulosClienteSuc.ceClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if (key=vk_delete) or (Key=VK_back) Then
    begin
      ceCliente.Clear;
      edNombreCliente.Clear;
    end;
end;

procedure TFormListadoVtaArticulosClienteSuc.ceClienteKeyPress(Sender: TObject;
  var Key: Char);
var dato:string;
  begin
  inherited;
 IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := Dato;
      QClientes.Open;
      if DMMain_FD.ModificaSucursal=False Then
        begin
        //  ceCliente.Text := '';
          if QClientesSUCURSAL.Value<>SucursalPorDefecto Then
            begin
              QClientes.Close;
              ceCliente.Text := '';
            end;
        end;
      IF NOT(QClientes.IsEmpty) THEN
        begin
          edNombreCliente.Text := QClientesNOMBRE.Value;
          if QClientesACTIVO.Value='S' Then
            lbEstado.caption:=''
          else
            if QClientesACTIVO.Value='N' Then
              lbEstado.caption:='Cliente Inactivo'
            else
              if QClientesACTIVO.Value='G' Then
                lbEstado.caption:='Gestion Judicial';
          Buscar.Execute;
        end;
    END;
end;

procedure TFormListadoVtaArticulosClienteSuc.chbTodosClick(Sender: TObject);
begin
  inherited;
  if chbTodos.Checked then
    begin
      ceCliente.Enabled    := False;
      ceCliente.Color      := clBtnFace;
      ceCliente.Text       := '';
      edNombreCliente.Text := '';
    end
  else
    begin
      ceCliente.Enabled := True;
      ceCliente.Color   := clWhite;
    end;

end;

procedure TFormListadoVtaArticulosClienteSuc.dbgVtaClienteTitleBtnClick(
  Sender: TObject; ACol: Integer; Field: TField);
begin
  inherited;
  try
    Campo := Field.FieldName;
    with dbgVtaCliente.DataSource.DataSet as TClientDataSet do
      if IndexFieldNames <> Campo then
        IndexFieldNames := Campo // Ascendente
      else
      begin
        AddIndex(Campo, Campo, [], Campo); // Descendente
        IndexName := Campo;
      end;
  except // Para que no salte una excepción si la columna es un campo calculado.
  end;
//  CDSVtaPorCliente.IndexFieldNames:=Field.FieldName;
end;

procedure TFormListadoVtaArticulosClienteSuc.dbgVtaTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
  inherited;
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

//  CDSVtas.IndexFieldNames:=Field.FieldName;
end;

procedure TFormListadoVtaArticulosClienteSuc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSSucursal.Close;
  CDSEmpresa.Close;
  Action:=caFree;
end;

procedure TFormListadoVtaArticulosClienteSuc.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;

  CDSSucursal.Open;
  CDSEmpresa.Open;
  pcVentas.ActivePageIndex:=0;
  chbTodos.Checked     := True;
  ceCliente.Enabled    := False;
  ceCliente.Color      := clBtnFace;
  ceCliente.Text       := '';
  edNombreCliente.Text := '';
  cbSucursal.KeyValue  := SucursalPorDefecto;
  cbSucursal.Enabled   := DMMain_FD.ModificaSucursal;
end;

procedure TFormListadoVtaArticulosClienteSuc.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoVtaArticulosClienteSuc:=nil;
end;

procedure TFormListadoVtaArticulosClienteSuc.FormShow(Sender: TObject);
vaR M,D,A:Word;
begin
  inherited;
  DecodeDate(Date,A,M,D);
  Desde.Date:=EncodeDate(A,M,1);
  Hasta.Date:=EncodeDate(A,M,DaysInMonth(A,M))
end;

procedure TFormListadoVtaArticulosClienteSuc.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frVta.DesignReport;
end;

procedure TFormListadoVtaArticulosClienteSuc.SpinButton1DownClick(
  Sender: TObject);
var d,m,y:word;
begin
  DecodeDate(Desde.Date,y,m,d);
       if m=1 Then
        begin
          m:=12;y:=y-1;
        end
      else
        m:=m-1;

  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Buscar.Execute;
end;

procedure TFormListadoVtaArticulosClienteSuc.SpinButton1UpClick(
  Sender: TObject);
var d,m,y:word;
begin
  DecodeDate(Desde.Date,y,m,d);

    if m=12 Then
      begin
        m:=1;y:=y+1;
      end
    else
      m:=m+1;


  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Buscar.Execute;
end;

procedure TFormListadoVtaArticulosClienteSuc.UpDown1Click(Sender: TObject;
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
end;

end.