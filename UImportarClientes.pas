unit UImportarClientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, StdCtrls, DB, DBClient, ComCtrls, Grids, DBGrids,
  Gauges, JvComponentBase, ImgList, ActnList, JvExControls, JvGradient, Buttons,
  ToolWin, ExtCtrls, JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr,
  JvExDBGrids, JvDBGrid, Datasnap.Provider, JvAppStorage, JvAppIniStorage,
  System.Actions, CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Mask, JvExMask, JvToolEdit,IniFiles, System.ImageList;

type
  TFormImportarClientes = class(TFormABMBase)
    gbMarca: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    lbMarcaNuevos: TLabel;
    lbMarcasModificados: TLabel;
    Label3: TLabel;
    lbMarcasTotales: TLabel;
    BitBtn1: TBitBtn;
    Importar: TAction;
    CDSClientesXML: TClientDataSet;
    DSPCllientes: TDataSetProvider;
    OpenDialog: TOpenDialog;
    CDSLdrXML: TClientDataSet;
    DSPLdr: TDataSetProvider;
    DSClientesXML: TDataSource;
    DSLdrXML: TDataSource;
    btImportar: TBitBtn;
    ToolButton1: TToolButton;
    CDSClientes: TClientDataSet;
    CDSLdr: TClientDataSet;
    Progress: TGauge;
    QBuscaCliente: TSQLQuery;
    edPrefijo: TEdit;
    chModifica: TCheckBox;
    CDSLdrCODIGO_CLIENTE: TStringField;
    CDSLdrCODIGO_LDR: TIntegerField;
    CDSLdrNOMBRE: TStringField;
    CDSLdrDIRECCION: TStringField;
    CDSLdrCPOSTAL: TStringField;
    CDSCondVtaXML: TClientDataSet;
    DSCondVentaXML: TDataSource;
    DSPCondVenta: TDataSetProvider;
    CDSCondVenta: TClientDataSet;
    dbgClientes: TJvDBGrid;
    dbgLdr: TJvDBGrid;
    dbgCondVtas: TJvDBGrid;
    QCondVenta: TSQLQuery;
    QCondVentaCODIGOCLIENTE: TStringField;
    QCondVentaCODIGOPAGO: TIntegerField;
    QCondVentaDESCUENTO: TFMTBCDField;
    QCondVentaPOR_DEFECTO: TStringField;
    CDSCondVentaCODIGOCLIENTE: TStringField;
    CDSCondVentaCODIGOPAGO: TIntegerField;
    CDSCondVentaDESCUENTO: TFMTBCDField;
    CDSCondVentaPOR_DEFECTO: TStringField;
    Label4: TLabel;
    CDSLdrLOCALIDAD: TStringField;
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
    CDSClientesFRANQUICIA: TStringField;
    CDSClientesDIAS_MAYOR_30: TIntegerField;
    CDSClientesID_DEPOSITO_FRANQUICIA: TIntegerField;
    CDSClientesID_TRANSPORTE: TIntegerField;
    CDSClientesIMPRIME_SALDOFACTURA: TStringField;
    CDSClientesCORTAR_SERVICIO: TStringField;
    CDSClientesCON_PLANPAGO: TStringField;
    CDSClientesDIRECCION_POSTAL: TStringField;
    CDSClientesCALLE_1: TStringField;
    CDSClientesCALLE_2: TStringField;
    CDSClientesVENDER_DE_CTDO: TStringField;
    CDSClientesCORREOELECTRONICO_2: TStringField;
    CDSClientesPRESENTO_F8001: TStringField;
    CDSClientesDESDE_F8001: TSQLTimeStampField;
    CDSClientesHASTA_F8001: TSQLTimeStampField;
    CDSClientesID_TARJETACREDITO: TIntegerField;
    CDSClientesNRO_TARJETA_C: TStringField;
    CDSClientesNRO_SEG_TC: TStringField;
    CDSClientesID_BANCO: TIntegerField;
    CDSClientesNRO_CTA_BCO: TStringField;
    CDSClientesCODIGO_COORPORATIVO: TStringField;
    CDSClientesMUESTRACTACOORPORATIVA: TStringField;
    CDSClientesCUENTA_OPERATIVA: TStringField;
    CDSClientesTARJETA_CLIENTE: TStringField;
    CDSClientesVENCIMIENTO_TC: TSQLTimeStampField;
    CDSClientesFOTO: TBlobField;
    CDSClientesCON_MONITOREO: TStringField;
    CDSClientesCON_GPRS: TStringField;
    CDSClientesCON_HOSTING: TStringField;
    CDSClientesCOMUNITARIO: TStringField;
    CDSClientesID_PRESTADOR: TIntegerField;
    CDSClientesID_RECIBOPORDEFECTO: TIntegerField;
    CDSClientesNOMBRE_COMPLETO: TStringField;
    CDSClientesMES_ADICIONAL: TIntegerField;
    CDSClientesMES_SEMESTRAL: TIntegerField;
    CDSClientesMUESTRAIDGARANTE: TIntegerField;
    CDSClientesMOROSO: TStringField;
    CDSClientesPLANTILLA_CIVA: TStringField;
    CDSClientesOBSERVACIONES1: TStringField;
    CDSClientesOBSERVACIONES2: TStringField;
    CDSClientesAVISO: TStringField;
    CDSClientesRUBRO: TIntegerField;
    CDSClientesID_PLANTILLA: TIntegerField;
    CDSClientesENVIAR_CPTE_MAIL: TStringField;
    CDSClientesNRO_IP: TStringField;
    CDSClientesCHEQUES: TStringField;
    CDSClientesID_ADMINISTRACION: TIntegerField;
    Label22: TLabel;
    edDIrectorio: TJvDirectoryEdit;
    chbActualizaCliente: TCheckBox;
    chbActualizaLDR: TCheckBox;
    chbActualizaCond: TCheckBox;
    CDSLdrPROVINCIA: TIntegerField;
    procedure ImportarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dbgClientesTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbgLdrTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbgCondVtasTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure CDSCondVentaNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CDSClientesNewRecord(DataSet: TDataSet);
    procedure CDSClientesReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure CDSClientesPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure CancelarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImportarClientes: TFormImportarClientes;
  ArchiTxt:TextFile;
  I :Integer;
  s ,dato:String;
  Nuevos,Modificados:Integer;
  Cancelado:Boolean;
implementation

uses UDMain_FD, UBuscaDirectorio;

{$R *.DFM}

procedure TFormImportarClientes.ImportarExecute(Sender: TObject);
var
Nombre,codigo:String;
I:Integer;
begin
  inherited;
  CDSClientes.Open;
  CDSLdr.Open;
  Cancelado     := False;
  Nuevos        := 0;
  Modificados   := 0;
  Salir.Enabled :=False;
  Application.ProcessMessages;
  CDSClientesXML.First;
  Progress.MaxValue:=CDSClientesXML.RecordCount;
  Progress.Progress:=0;
  sbEstado.SimpleText:='Procesando Archivo de Clientes...';

  while not(CDSClientesXML.Eof) and (Cancelado=False) and chbActualizaCliente.Checked do
    begin
      //Inserto Los Clientes
      Progress.Progress:=Progress.Progress+1;
      For i:=0 to CDSClientesXML.FieldCount-1 do
        begin
          Nombre:=CDSClientesXML.Fields[i].FieldName;
          if Nombre='CODIGO' Then
            begin
              Codigo:=CDSClientesXML.Fields[i].AsString;
              if Trim(edPrefijo.Text)<>'' then
                system.Delete(Codigo,1,1);
              Codigo:=Trim(edPrefijo.Text)+Codigo;
              CDSClientesXML.Edit;
              CDSClientesXML.Fields[i].AsString:=Codigo;
              CDSClientesXML.Post;
              CDSClientes.Close;
              CDSClientes.Params.ParamByName('CODIGO').AsString := codigo;
              CDSClientes.Open;
              if CDSClientesXML.Fields[0].AsString<>'' Then
                begin
                  CDSClientes.Edit;
                  if chModifica.Checked then
                    Inc(Modificados);
                end
              else
                begin
                  CDSClientes.Insert;
                  Inc(Nuevos);
                end;
            end;
          Application.ProcessMessages;
          if (CDSClientes.FindField(Nombre)<>NIl) then
            CDSClientes.FieldByName(Nombre).Value:=CDSClientesXML.FieldByName(Nombre).Value;
        end;
      Application.ProcessMessages;
      For i:=0 to CDSClientes.FieldCount-1 do
        begin
          // Control de Campos Requeridos - Fields.Required
          if (CDSClientes.Fields[i].Required) and (CDSClientes.Fields[i].AsString='') then
            begin
              if (CDSClientes.Fields[i].DataType=ftString) then
                CDSClientes.Fields[i].Value:='N';
              if (CDSClientes.Fields[i].DataType=ftInteger) Then
                CDSClientes.Fields[i].Value:=-1;
              if (CDSClientes.Fields[i].DataType=ftFloat) Then
                CDSClientes.Fields[i].Value:=0;
              if (CDSClientes.Fields[i].DataType=ftFMTBcd) Then
                CDSClientes.Fields[i].Value:=0;
              if (CDSClientes.Fields[i].DataType=ftBCD) Then
                CDSClientes.Fields[i].Value:=0;
            end;

        end;

      if (chModifica.Checked=True) and (CDSClientes.State in [dsEdit]) Then
        begin
          CDSClientes.Post;
          CDSClientes.ApplyUpdates(0);
          Inc(Modificados);
        end
      else
        if (CDSClientes.State in [dsInsert]) Then
          begin
            For i:=0 to CDSClientes.FieldCount-1 do
              begin
               if (CDSClientes.Fields[i].Required) and (CDSClientes.Fields[i].AsString='') then
                 begin
                   if (CDSClientes.Fields[i].DataType=ftString) then
                     CDSClientes.Fields[i].Value:='N';
                   if (CDSClientes.Fields[i].DataType=ftInteger) Then
                     CDSClientes.Fields[i].Value:=-1;
                   if (CDSClientes.Fields[i].DataType=ftFloat) Then
                     CDSClientes.Fields[i].Value:=0;
                   if (CDSClientes.Fields[i].DataType=ftFMTBcd) Then
                     CDSClientes.Fields[i].Value:=0;
                   if (CDSClientes.Fields[i].DataType=ftBCD) Then
                     CDSClientes.Fields[i].Value:=0;
                 end;
              end;
            CDSClientes.Post;
            CDSClientes.ApplyUpdates(0);
            Inc(Nuevos);
          end;
      CDSClientesXML.Next;
    end;
  CDSClientes.Close;

  Nuevos     :=0;
  Modificados:=0;
  CDSLdrXML.First;
  Progress.Progress:=0;
  Progress.MaxValue:=CDSLdrXML.RecordCount;
  Application.ProcessMessages;
  CDSLdrXML.First;
  sbEstado.SimpleText:='Procesando Archivo de L.D.R..';
  while (CDSLdrXML.Eof=False) and (Cancelado=False) and (chbActualizaLDR.Checked) do
    begin
      //Inserto Los LDR
      Progress.Progress:=Progress.Progress+1;
      Application.ProcessMessages;
      For i:=0 to CDSLdrXML.FieldCount-1 do
        begin
          Nombre := CDSLdrXML.Fields[i].FieldName;
          if nombre='CODIGO_CLIENTE' then
            begin
              Codigo := CDSLdrXML.FieldByName('Codigo_cliente').AsString;
              if Trim(edPrefijo.Text)<>'' then
                begin
                  system.Delete(Codigo,1,1);
                  Codigo:=Trim(edPrefijo.Text)+Codigo;
                  //CDSLdrXML.Edit;
                  //CDSLdrXML.FieldByName('Codigo_cliente').AsString:=Codigo;
                  //CDSLdrXML.Post;
                end;

              CDSLdr.Close;
              CDSLdr.Params.ParamByName('CODIGO').AsString:= Codigo;
              CDSLdr.Params.ParamByName('LDR').AsString   := CDSLdrXML.FieldByName('Codigo_Ldr').Value;
              CDSLdr.Open;
              if CDSLdr.Fields[0].AsString<>'' Then
                begin
                  CDSLdr.Edit;
                  inc(Modificados);
                end
              else
                begin
                  CDSLdr.Insert;
                  Inc(Nuevos);
                end;
            end;
          CDSLdr.FieldByName(Nombre).Value:=CDSLdrXML.FieldByName(Nombre).Value;
        end;

      if (chModifica.Checked=True) and (CDSLdr.State in [dsEdit]) Then
        begin
         CDSLdr.Post;
         CDSLdr.ApplyUpdates(0);
        end
      else
        if (CDSLdr.State in [dsInsert]) Then
          begin
            CDSLdr.Post;
            CDSLdr.ApplyUpdates(0);
          end;
      CDSLdrXML.Next;
    end;
  CDSLdr.Close;

  Nuevos     :=0;
  Modificados:=0;
  CDSCondVtaXML.First;
  Progress.Progress:=0;
  Progress.MaxValue:=CDSCondVtaXML.RecordCount;
  Application.ProcessMessages;
  sbEstado.SimpleText:='Procesando Archivo de Condiciones de Vta.';
  while (CDSCondVtaXML.Eof=False) and (Cancelado=False) and (chbActualizaCond.Checked) do
    begin
      Progress.Progress:=Progress.Progress+1;
      Application.ProcessMessages;
      For i:=0 to CDSCondVtaXML.FieldCount-1 do
        begin
          Nombre := CDSCondVtaXML.Fields[i].FieldName;
          if Nombre='CODIGOCLIENTE' then
            begin
              Codigo := CDSCondVtaXML.FieldByName('Codigocliente').AsString;
              if Trim(edPrefijo.Text)<>'' then
                begin
                  system.Delete(Codigo,1,1);
                  Codigo:=Trim(edPrefijo.Text)+Codigo;
                  //CDSCondVtaXML.Edit;
                  //CDSCondVtaXML.FieldByName('Codigocliente').AsString:=Codigo;
                  //CDSCondVtaXML.Post;
                end;

              CDSCondVenta.Close;
              CDSCondVenta.Params.ParamByName('CODIGO').AsString     := Codigo;//CDSCondVtaXML.FieldByName('Codigocliente').AsString;
              CDSCondVenta.Params.ParamByName('CODIGOPAGO').AsInteger:=CDSCondVtaXML.FieldByName('Codigopago').AsInteger;
              CDSCondVenta.Open;
              if CDSCondVenta.Fields[0].AsString<>'' Then
                begin
                  CDSCondVenta.Edit;
                  inc(Modificados);
                end
              else
                begin
                  CDSCondVenta.Insert;
                  Inc(Nuevos);
                end;
            end;
          CDSCondVenta.FieldByName(Nombre).Value:=CDSCondVtaXML.FieldByName(Nombre).Value;
        end;

      if (chModifica.Checked=True) and (CDSCondVenta.State in [dsEdit]) Then
        begin
         CDSCondVenta.Post;
         CDSCondVenta.ApplyUpdates(0);
        end
      else
        if (CDSCondVenta.State in [dsInsert]) Then
          begin
            CDSCondVenta.Post;
            CDSCondVenta.ApplyUpdates(0);
          end;

      CDSCondVtaXML.Next;

    end;

  CDSCondVenta.Close;

  sbEstado.SimpleText        :='Finalizado...';

  lbMarcaNuevos.Caption      :=IntToStr(nuevos);
  lbMarcasModificados.Caption:=IntToStr(Modificados);
  lbMarcasTotales.Caption    :=IntToStr(nuevos+Modificados);
  Salir.Enabled :=True;

 end;

procedure TFormImportarClientes.CancelarExecute(Sender: TObject);
begin
 // inherited;
  Cancelado     := True;
  Salir.Enabled := True;
end;

procedure TFormImportarClientes.CDSClientesNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSClientesID_ADMINISTRACION.Value:=-1;
  CDSClientesCHEQUES.Value          :='S';
end;

procedure TFormImportarClientes.CDSClientesPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
  ShowMessage(E.Message);
end;

procedure TFormImportarClientes.CDSClientesReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  ShowMessage(E.Message);
end;

procedure TFormImportarClientes.CDSCondVentaNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSCondVentaPOR_DEFECTO.Value := 'N';
  CDSCondVentaDESCUENTO.ASFloat := 0;
end;

procedure TFormImportarClientes.dbgClientesTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:string;
begin
 try
    Campo := Field.FieldName;
    with dbgClientes.DataSource.DataSet as TClientDataSet do
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

procedure TFormImportarClientes.dbgCondVtasTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:string;
begin
 try
    Campo := Field.FieldName;
    with dbgCondVtas.DataSource.DataSet as TClientDataSet do
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

procedure TFormImportarClientes.dbgLdrTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
 try
    Campo := Field.FieldName;
    with dbgLdr.DataSource.DataSet as TClientDataSet do
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

procedure TFormImportarClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  ArchivoIni                := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'ImportacionClientes.ini');
  ArchivoIni.WriteString('Importar', 'Directorio', edDIrectorio.Text );
  ArchivoIni.Free;
  Action:=caFree;
end;

procedure TFormImportarClientes.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  //*************************************************************
  ArchivoIni                := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'ImportacionClientes.ini');
  edDIrectorio.Text        := ArchivoIni.ReadString('Importar', 'Directorio', '');
  ArchivoIni.Free;
end;

procedure TFormImportarClientes.FormDestroy(Sender: TObject);
begin
  inherited;
  FormImportarClientes:=nil;
end;

procedure TFormImportarClientes.FormShow(Sender: TObject);
begin
 // inherited;

end;

procedure TFormImportarClientes.BitBtn1Click(Sender: TObject);
begin
  inherited;
//  if Not(Assigned(FormBuscaDirectorio)) Then
//    FormBuscaDirectorio:=TFormBuscaDirectorio.Create(Application);
//  FormBuscaDirectorio.ShowModal;
//  if FormBuscaDirectorio.ModalResult=mrOk Then
    begin
      CDSClientesXML.LoadFromFile(edDIrectorio.Text+'\Clientes.xml');
      CDSLdrXML.LoadFromFile(edDIrectorio.Text+'\Ldr.xml');
      CDSCondVtaXML.LoadFromFile(edDIrectorio.Text+'\CondVenta.xml');

    end;
//  else
//   ShowMessage('Directorio no valido...');
end;

end.
