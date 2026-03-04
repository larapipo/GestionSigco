unit UArchivosAxum;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  AdvUtil, Vcl.Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid,System.StrUtils,IniFiles,
  VirtualUi_SDK;

type
  TFormAxum = class(TFormABMBase)
    PageControl1: TPageControl;
    pagClientes: TTabSheet;
    pnClientes: TPanel;
    pnPie: TPanel;
    dbgClientes: TDBAdvGrid;
    QClientes: TFDQuery;
    DSClientes: TDataSource;
    btExportarCSV: TButton;
    pagArticulos: TTabSheet;
    pagStock: TTabSheet;
    Panel2: TPanel;
    dbgArticulos: TDBAdvGrid;
    QArticulos: TFDQuery;
    DSArticulos: TDataSource;
    btClientes: TButton;
    btArticulos: TButton;
    QStock: TFDQuery;
    DSStock: TDataSource;
    Panel3: TPanel;
    btStock: TButton;
    dbgStock: TDBAdvGrid;
    SaveDialog: TSaveDialog;
    QStockCODART: TStringField;
    QStockSTOCKINI: TFloatField;
    QStockSTOCKMIN: TFloatField;
    QClientesCODIGO: TStringField;
    QClientesRAZON_SOCIAL: TStringField;
    QClientesDIRECCION: TStringField;
    QClientesZONA: TStringField;
    QClientesVENDEDOR: TStringField;
    QClientesTELEFONO: TStringField;
    QClientesORDEN: TIntegerField;
    QClientesRAMO: TIntegerField;
    QClientesLOCALIDAD: TStringField;
    QClientesCOBRAIB: TIntegerField;
    QClientesCONDIVA: TIntegerField;
    QClientesTABLABONIF: TIntegerField;
    QClientesTOPEVENTA: TIntegerField;
    QClientesMARGEN: TIntegerField;
    QClientesPERCEPID: TIntegerField;
    QClientesCUIT: TStringField;
    QClientesEMAIL: TStringField;
    QClientesCONDICIONPAGO: TStringField;
    QClientesCOORDENADAS: TStringField;
    QClientesHABILITACION: TIntegerField;
    QClientesESFOCO: TIntegerField;
    QClientesSEGMENTACION: TStringField;
    QClientesCODIGOPOSTAL: TStringField;
    QClientesPAIS: TStringField;
    QClientesPROVINCIA: TStringField;
    QClientesCIUDAD: TStringField;
    QClientesLISTASASELECCIONAR: TStringField;
    QClientesIVATASACERO: TIntegerField;
    QClientesMINVENTA: TIntegerField;
    QArticulosCODIGO: TStringField;
    QArticulosLISTA1: TFloatField;
    QArticulosLISTA2: TFloatField;
    QArticulosLISTA3: TFloatField;
    QArticulosLISTA4: TFloatField;
    QArticulosLISTA5: TFloatField;
    QArticulosDESCRIPCION: TStringField;
    QArticulosLINEA: TStringField;
    QArticulosRUBRO: TStringField;
    QArticulosCAPACIDAD: TIntegerField;
    QArticulosPACK: TFloatField;
    QArticulosIMPUESTOSINT: TFloatField;
    QArticulosTOPEDESC: TIntegerField;
    QArticulosCOSTO: TFloatField;
    QArticulosCODIGOIVA: TIntegerField;
    QArticulosCODBARRA: TStringField;
    QArticulosCODBARRAPACK: TIntegerField;
    QArticulosMARCA: TStringField;
    QArticulosPESO: TIntegerField;
    QArticulosPROVEEDOR: TStringField;
    QArticulosIVATASACERO: TIntegerField;
    QArticulosGRUPO: TStringField;
    pagPedidos: TTabSheet;
    Panel4: TPanel;
    sgPedidos: TAdvStringGrid;
    Panel5: TPanel;
    OpenDialog1: TOpenDialog;
    QClientesLISTA: TIntegerField;
    btBuscarPedidos: TButton;
    btImportarPedidos: TBitBtn;
    QStockCODIGODEPOSITO: TIntegerField;
    Label47: TLabel;
    edPathListados: TEdit;
    spPathListados: TSpeedButton;
    chHostLocal: TCheckBox;
    procedure btClientesClick(Sender: TObject);
    procedure btArticulosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btStockClick(Sender: TObject);
    procedure btExportarCSVClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgStockGetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: string);
    procedure dbgClientesSaveCell(Sender: TObject; ACol, ARow: Integer;
      var Value: string);
    procedure dbgArticulosSaveCell(Sender: TObject; ACol, ARow: Integer;
      var Value: string);
    procedure dbgStockSaveCell(Sender: TObject; ACol, ARow: Integer;
      var Value: string);
    procedure btBuscarPedidosClick(Sender: TObject);
    procedure btImportarPedidosClick(Sender: TObject);
    procedure QStockAfterOpen(DataSet: TDataSet);
    procedure spPathListadosClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    SucursalComprobante,
    IDComprobante,Deposito :Integer;
    procedure AgregarCabNP(codigo:string;Nro:String;Vendedor:String);
    procedure AgregarDetNP(Codigo:string;Cantidad:String);
    function DepositoVendedor(Codigo:String):Integer;
  end;

var
  FormAxum: TFormAxum;

implementation

uses UDMain_FD, DMNPedidoCliente, UNotaPedidoCliente, UBuscadorTipoCpbte,
     UBuscadorDepositos, UBuscaDirectorio;
{$R *.dfm}

function TFormAxum.DepositoVendedor(Codigo:String):Integer;
var Q:TFDQuery;
begin
  Q:=TFdquery.Create(nil);
  Q.Connection:=DMMain_FD.fdcGestion;
  Q.SQL.Text:='select coalesce( p.deposito,-1) from personal p where p.codigo=:codigo';
  Q.ParamByName('codigo').AsString:=Codigo;
  Q.Open;
  Result:=Q.Fields[0].Value;
  Q.Close;
  FreeAndNil(q);
end;

procedure TFormAxum.AgregarCabNP(codigo:string;Nro:String;Vendedor:String);

begin
  with DatosNPedidoClientes DO
  begin
    FormNotaPedidoCliente.SucursalPorDefecto :=SucursalComprobante;
    FormNotaPedidoCliente.DepositoPorDefecto :=DepositoVendedor(Vendedor);
    if FormNotaPedidoCliente.DepositoPorDefecto<=0 then
      FormNotaPedidoCliente.DepositoPorDefecto :=Deposito;
    //CDSNotaPedidoCabSUCURSAL.Value           :=SucursalComprobante;
    CDSNotaPedidoCabID_TIPOCOMPROBANTESetText(CDSNotaPedidoCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante));
    CDSNotaPedidoCabCODIGOSetText(CDSNotaPedidoCabCODIGO,Codigo);
    CDSNotaPedidoCabLDRSetText(CDSNotaPedidoCabLDR,'0');
//    CDSNotaPedidoCabNOMBRE.Value       := DatosPresupuesto.CDSPresuCabNOMBRE.Value;
//    CDSNotaPedidoCabRAZONSOCIAL.Value  := DatosPresupuesto.CDSPresuCabRAZONSOCIAL.Value;
//    CDSNotaPedidoCabCUIT.Value         := DatosPresupuesto.CDSPresuCabCUIT.Value;
//    CDSNotaPedidoCabTIPOIVA.Value      := DatosPresupuesto.CDSPresuCabTIPOIVA.Value;
//    CDSNotaPedidoCabDIRECCION.Value    := DatosPresupuesto.CDSPresuCabDIRECCION.Value;
//    CDSNotaPedidoCabLOCALIDAD.Value    := DatosPresupuesto.CDSPresuCabLOCALIDAD.Value;
//    CDSNotaPedidoCabCPOSTAL.Value    := DatosPresupuesto.CDSPresuCabCPOSTAL.Value;


 //   CDSNotaPedidoCabCONDICIONVTASetText(CDSNotaPedidoCabCONDICIONVTA, DatosPresupuesto. CDSPresuCabCONDICIONVTA.AsString);

    CDSNotaPedidoCabIMPRESO.Value     :='N';
    CDSNotaPedidoCabOBSERVACION1.Value:= 'Pedido App Nro:'+Nro;
    CDSNotaPedidoCabOBSERVACION2.Value:= '';

   // CDSNotaPedidoCabZONA.Value        :=  -1;//DatosPresupuesto.CDSPresuCabZONA.Value;

    CDSNotaPedidoCabPRESUPUESTO_ID.Value       := -1;
    CDSNotaPedidoCabPRESUPUESTO_NROCPBTE.Value := '';
    CDSNotaPedidoCabVENDEDORSetText(CDSNotaPedidoCabVENDEDOR, Vendedor);
    CDSNotaPedidoCabUSUARIO.Value     :=DMMain_FD.UsuarioActivo;
  end;
end;

procedure TFormAxum.AgregarDetNP(Codigo:string;Cantidad:String);
Var UnitarioTotal,Precio,coef:Real;
begin
  inherited;
  with DatosNPedidoClientes DO
    begin
      CDSNotaPedidoDet.Append;
      CDSNotaPedidoDetDESGLOZAIVA.Value        := CDSNotaPedidoCabDESGLOZAIVA.Value;
      CDSNotaPedidoDetDEPOSITO.Value           := CDSNotaPedidoCabDeposito.Value;
      CDSNotaPedidoDetCLASECPBTE.Value         := CDSNotaPedidoCabCLASECPBTE.Value;
      CDSNotaPedidoDetTIPOCPBTE.Value          := CDSNotaPedidoCabTIPOCPBTE.Value;
      CDSNotaPedidoDetCODIGOARTICULOSetText(CDSNotaPedidoDetCODIGOARTICULO,Codigo);
      CDSNotaPedidoDetCANTIDAD_PEDIDIASetText(CDSNotaPedidoDetCANTIDAD_PEDIDIA,Cantidad);
      CDSNotaPedidoDetCANTIDAD_ENTREGADASetText(CDSNotaPedidoDetCANTIDAD_ENTREGADA,Cantidad);

      //CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat := (DatosPresupuesto.CDSPresuDetUNITARIO_GRAVADO.AsFloat/DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat)* DatosPresupuesto.CDSPresuCabMONEDA_CPBTE_COTIZACION.AsFloat;
      //CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat  := (DatosPresupuesto.CDSPresuDetUNITARIO_EXENTO.AsFloat/DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat)* DatosPresupuesto.CDSPresuCabMONEDA_CPBTE_COTIZACION.AsFloat;

      //CDSNotaPedidoDetDescuento.Value          := DatosPresupuesto.CDSPresuDetDESCUENTO.Value;

      UnitarioTotal                            := CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat + CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat;

      //if DatosPresupuesto.CDSPresuCabDESGLOZAIVA.Value='N' Then
      //  UnitarioTotal:= CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat + DatosPresupuesto.CDSPresuDetIVA_UNITARIO.AsFloat + CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat;;


//      if DatosPresupuesto.wwCDSPresuCabDESGLOZAIVA.Value='N' Then
  //       CDSNotaPedidoDetUNITARIO_TOTALSetText(CDSNotaPedidoDetUNITARIO_TOTAL,FloatToStr(UnitarioTotal*(1+DatosPresupuesto.wwCDSPresuDetIVA_TASA.Value/100)))
 //      else
    //   CDSNotaPedidoDetUNITARIO_TOTALSetText(CDSNotaPedidoDetUNITARIO_TOTAL,FloatToStr(UnitarioTotal));

      CDSNotaPedidoDetUNITARIO_TOTALSetText(CDSNotaPedidoDetUNITARIO_TOTAL,FloatToStr(UnitarioTotal));

      CDSNotaPedidoDet.Post;
    end;
end;


procedure TFormAxum.btExportarCSVClick(Sender: TObject);
var
  Loc:TPoint;
  FP :TFindParams;
begin
  inherited;
  case PageControl1.ActivePageIndex of
    0:begin
        Loc := Point(-1,-1);
        Fp := [fnMatchRegular, fnAutoGoto];

        SaveDialog.FileName      := 'Clientes';
        dbgClientes.Delimiter    := ',';
        dbgClientes.AlwaysQuotes := True;
        dbgClientes.CSVTrimSpaces:= True;
          begin
            dbgClientes.SaveToCSV(edPathListados.Text+'\Clientes'+'.csv',true);
          end;
      end;
    1:begin
        SaveDialog.FileName       := 'Articulos';
        dbgArticulos.Delimiter    := ',';
        dbgArticulos.AlwaysQuotes := True;
        dbgArticulos.SaveToCSV(edPathListados.Text+'\Articulos'+'.csv',False);
      end;
    2:begin
        SaveDialog.FileName   := 'stock';
        dbgStock.Delimiter    := ',';
        dbgStock.AlwaysQuotes := True;
      //  if SaveDialog.Execute then
          dbgStock.SaveToCSV(edPathListados.Text+'\stock'+'.csv');
      end;

  end;

end;

procedure TFormAxum.btClientesClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  QClientes.Close;
  QClientes.Open;
  for I := 0 to QClientes.FieldCount-1 do
    begin
      QClientes.Fields[I].DisplayLabel:= LowerCase(QClientes.Fields[I].DisplayLabel);
      dbgClientes.AutoSizeCol(I,5);
    end;
end;

procedure TFormAxum.btImportarPedidosClick(Sender: TObject);
var
  I              : Integer;
  CodigoFlag     : string;
  Cont,Renglones : Integer;
  Vendedor:String;
begin
  inherited;
  if (sgPedidos.RowCount>0) then
    begin
      if Not(Assigned(FormBuscadorTipoCpbte)) then
        FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
      FormBuscadorTipoCpbte.TipoCpbte1 := 'PC';
      FormBuscadorTipoCpbte.TipoCpbte2 := '';
      FormBuscadorTipoCpbte.TipoCpbte3 := '';
      FormBuscadorTipoCpbte.CV         := 'V';
      FormBuscadorTipoCpbte.Sucursal   := DMMain_FD.SucursalPorDef;
      FormBuscadorTipoCpbte.ShowModal;
      Renglones           := FormBuscadorTipoCpbte.QTipoCpbteLINEAS_DETALLE.Value;
      SucursalComprobante := FormBuscadorTipoCpbte.Sucursal;
      IDComprobante       := FormBuscadorTipoCpbte.Id_Cpbte;
      if (FormBuscadorTipoCpbte.ModalResult=mrok) Then
        begin
       //  flag:=DatosNPedidoClientes.HayParaFacturar(DatosNPedidoClientes.CDSNotaPedidoDet);
          if Not(Assigned(FormBuscadorDepositos)) then
            FormBuscadorDepositos:=TFormBuscadorDepositos.Create(Application);
          FormBuscadorDepositos.Deposito:= DMMain_FD.DepositoPorSucursal(SucursalComprobante);
          FormBuscadorDepositos.ShowModal;
          if (FormBuscadorDepositos.ModalResult=mrok) Then
            begin
              Deposito    := FormBuscadorDepositos.Deposito;
              if Not(Assigned(FormNotaPedidoCliente)) Then
                FormNotaPedidoCliente:=TFormNotaPedidoCliente.Create(self);
              Cont:=1;

              CodigoFlag:='';
              for I := 0 to sgPedidos.RowCount-1 do
                begin
                  Vendedor:=AnsiRightStr('000000'+sgPedidos.Cells[4,I],6);

                  if (sgPedidos.Cells[0,I]<>'') and (sgPedidos.Cells[0,I]<>CodigoFlag) then
                    begin
                      FormNotaPedidoCliente.Agregar.Execute;
                      AgregarCabNP(sgPedidos.Cells[1,I],sgPedidos.Cells[0,I],vendedor);
                      CodigoFlag := sgPedidos.Cells[0,I];
                    end;
                  if (sgPedidos.Cells[2,I]<>'') and (StrToFloat(sgPedidos.Cells[2,I])>0) Then
                    AgregarDetNP(sgPedidos.Cells[2,I],sgPedidos.Cells[3,I]);

                  if (sgPedidos.Cells[0,I+1]<>CodigoFlag) then
                    FormNotaPedidoCliente.Confirma.Execute;
                end;

              if FormNotaPedidoCliente.DSBase.State in [dsInsert] then
                FormNotaPedidoCliente.Confirma.Execute;
            end;
        end;
    end
  else
    ShowMessage('No hay cantidades Generar la Nota de Pedido.....!!!');

end;

procedure TFormAxum.btArticulosClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  QArticulos.Close;
  QArticulos.Open;
  for I := 0 to QArticulos.FieldCount-1 do
    begin
      QArticulos.Fields[I].DisplayLabel:= LowerCase(QArticulos.Fields[I].DisplayLabel);
      dbgArticulos.AutoSizeCol(I,5);
    end;
end;

procedure TFormAxum.btStockClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  QStock.Close;
  QStock.Open;
  for I := 0 to QStock.FieldCount-1 do
    begin
      QStock.Fields[I].DisplayLabel:= LowerCase(QStock.Fields[I].DisplayLabel);
      dbgStock.AutoSizeCol(I,5);
    end;
end;

procedure TFormAxum.btBuscarPedidosClick(Sender: TObject);
  var i:Integer;
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=True;

  if chHostLocal.Checked then
    VirtualUI.StdDialogs:=False;

  OpenDialog1.InitialDir:=edPathListados.Text;
  if OpenDialog1.Execute then
  sgPedidos.LoadFromCSV(OpenDialog1.FileName);
  for I := 0 to sgPedidos.ColCount -1 do
    begin
      sgPedidos.AutoSizeCol(I,5);
    end;
  sgPedidos.AddRow;
end;

procedure TFormAxum.dbgArticulosSaveCell(Sender: TObject; ACol, ARow: Integer;
  var Value: string);
begin
  inherited;
  Value:=Trim(AnsiReplaceStr(Value,#9,''));
  Value:=Trim(AnsiReplaceStr(Value,#10,''));
  Value:=Trim(AnsiReplaceStr(Value,#13,''));
end;

procedure TFormAxum.dbgClientesSaveCell(Sender: TObject; ACol, ARow: Integer;
  var Value: string);
begin
  inherited;
  Value:=Trim(AnsiReplaceStr(Value,#9,''));
  Value:=Trim(AnsiReplaceStr(Value,#10,''));
  Value:=Trim(AnsiReplaceStr(Value,#13,''));
end;

procedure TFormAxum.dbgStockGetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aSuffix: string);
begin
  inherited;
 // case acol of
//    1,2:AStyle:=ssFinancial;

//  end;
end;

procedure TFormAxum.dbgStockSaveCell(Sender: TObject; ACol, ARow: Integer;
  var Value: string);
begin
  inherited;
  Value:=Trim(AnsiReplaceStr(Value,#9,''));
  Value:=Trim(AnsiReplaceStr(Value,#10,''));
  Value:=Trim(AnsiReplaceStr(Value,#13,''));
end;

procedure TFormAxum.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  ArchivoIni      := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ArchivosAxum.ini');
//  ArchivoINI.WriteString('Empresa', 'Numero', edEmpresa.Text);
  ArchivoINI.WriteString('Listado', 'Path', edPathListados.Text);
  ArchivoIni.Free;
  Action:=TCloseAction.caFree;
end;

procedure TFormAxum.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  ArchivoIni          := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ArchivosAxum.ini');
//  edEmpresa.Text      := ArchivoINI.ReadString('Empresa', 'Numero', '');
  edPathListados.Text := ArchivoINI.ReadString('Listado', 'Path', '');

  ArchivoIni.Free;
  AutoSize   :=False;
  PageControl1.ActivePageIndex:=0;
end;

procedure TFormAxum.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAxum:=nil;
end;

procedure TFormAxum.PageControl1Change(Sender: TObject);
begin
  inherited;
  btExportarCSV.Visible:=Not(PageControl1.ActivePageIndex=3);
end;

procedure TFormAxum.QStockAfterOpen(DataSet: TDataSet);
var i:integer;
begin
  inherited;
   for I := 0 to QStock.FieldCount-1 do
    begin
      QStock.Fields[I].DisplayLabel:= LowerCase(QStock.Fields[I].DisplayLabel);
      dbgStock.AutoSizeCol(I,5);
    end;
end;

procedure TFormAxum.spPathListadosClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscaDirectorio)) Then
    FormBuscaDirectorio:=TFormBuscaDirectorio.Create(Application);
  FormBuscaDirectorio.ShowModal;
  if FormBuscaDirectorio.ModalResult=mrOk Then
    edPathListados.Text :=FormBuscaDirectorio.Directorio
  else
    edPathListados.Text :='';
end;

end.
