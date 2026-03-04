unit UPanelImportacionComp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, SqlExpr, JvComponentBase,
  JvFormPlacement, ImgList, ActnList, ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  Mask, JvExMask, JvToolEdit, Grids, DBGrids, JvDBLookup, Gauges,IniFiles,
  DateUtils, DBXCommon, JvAppStorage, JvAppIniStorage, System.Actions,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormPanelImportacionComp = class(TFormABMBase)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    dbgFcCompCab: TDBGrid;
    dbgFcCompDet: TDBGrid;
    UpDown1: TUpDown;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    chbPorDia: TCheckBox;
    imConectado: TImage;
    imDesconectado: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ListBox: TListBox;
    edPathOrigen: TEdit;
    JvLabel1: TJvLabel;
    lbEstado: TLabel;
    Panel3: TPanel;
    Label3: TLabel;
    Progress: TGauge;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    dbgFcCompImpuesto: TDBGrid;
    dbgDscto: TDBGrid;
    dbgRetIIBB: TDBGrid;
    dbgRetIVA: TDBGrid;
    btLeerDatos: TBitBtn;
    Animate1: TAnimate;
    rxDbcCaja: TJvDBLookupCombo;
    btImportar: TBitBtn;
    Conectar: TAction;
    VerificaComprobante: TAction;
    btNovedades: TButton;
    JvDBStatusLabel1: TJvDBStatusLabel;
    JvDBStatusLabel2: TJvDBStatusLabel;
    procedure btLeerDatosClick(Sender: TObject);
    procedure btImportarClick(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ConectarExecute(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure VerificaComprobanteExecute(Sender: TObject);
    procedure btNovedadesClick(Sender: TObject);
    procedure chbPorDiaClick(Sender: TObject);
    procedure ListBoxClick(Sender: TObject);
    procedure edPathOrigenChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    GeneralIni,ImportarIni:TIniFile;
    Path:String;
    lista:TStringList;
    Archivo   :TextFile;
    Existe:Boolean;
  end;

var
  FormPanelImportacionComp: TFormPanelImportacionComp;

implementation

uses DMImportacionComp, DMImportacionComp_Input, UDMain_FD,
  UListCpbteNoImportados;
{$R *.dfm}

procedure TFormPanelImportacionComp.btLeerDatosClick(Sender: TObject);
begin
  inherited;
  sbEstado.SimpleText:='';
  Screen.Cursor:=crHourGlass;
  if DatosImportacioComp.CDSFcCompCab.IsEmpty Then Buscar.Execute;
  if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
    CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');

  if Not(DatosImportacioComp.CDSFcCompCab.IsEmpty)  Then
    begin
      //Animate.Visible:=True;
      //Animate.Active:=True;
      DatosImportacioComp.CDSFcCompCab.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\FcCompCab.XML');
      DatosImportacioComp.CDSFcCompDet.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\FcCompDet.XML');
      DatosImportacioComp.CDSFcCompImp.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\FcCompImp.XML');
      DatosImportacioComp.CDSFcCompPerIB.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\FcCompPerIB.XML');
      DatosImportacioComp.CDSFcCompPerIva.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\FcCompPerIva.XML');
      DatosImportacioComp.CDSCondPago.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\FcCondPago.XML');
    end
  else
    ShowMessage('No Hay datos para exportar....');
  Screen.Cursor:=crDefault;
  sbEstado.SimpleText:='Datos exportados....';

  DatosImportacionComp_Input.CDSFcCompCabXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\FcCompCab.XML');
  DatosImportacionComp_Input.CDSFcCompDetXML.MasterSource   :=DatosImportacionComp_Input.DSFcCompCabXML;
  DatosImportacionComp_Input.CDSFcCompDetXML.MasterFields   :='id_fc';
  DatosImportacionComp_Input.CDSFcCompDetXML.IndexFieldNames:='id_cabfac';
  DatosImportacionComp_Input.CDSFcCompDetXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\FcCompDet.xml');
  DatosImportacionComp_Input.CDSFcCompImpXML.MasterSource   :=DatosImportacionComp_Input.DSFcCompCabXML;
  DatosImportacionComp_Input.CDSFcCompImpXML.MasterFields   :='id_fc';
  DatosImportacionComp_Input.CDSFcCompImpXML.IndexFieldNames:='ID_FCcompCAB';
  DatosImportacionComp_Input.CDSFcCompImpXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\FcCompImp.xml');

  DatosImportacionComp_Input.CDSFcCompPerIBXML.MasterSource   :=DatosImportacionComp_Input.DSFcCompCabXML;
  DatosImportacionComp_Input.CDSFcCompPerIBXML.MasterFields   :='id_fc';
  DatosImportacionComp_Input.CDSFcCompPerIBXML.IndexFieldNames:='ID_FCcompCAB';
  DatosImportacionComp_Input.CDSFcCompPerIBXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\FcCompPerIB.xml');

  DatosImportacionComp_Input.CDSFcCompPerIvaXML.MasterSource   :=DatosImportacionComp_Input.DSFcCompCabXML;
  DatosImportacionComp_Input.CDSFcCompPerIvaXML.MasterFields   :='id_fc';
  DatosImportacionComp_Input.CDSFcCompPerIvaXML.IndexFieldNames:='ID_FCcompCAB';
  DatosImportacionComp_Input.CDSFcCompPerIvaXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\FcCompPerIva.xml');

  DatosImportacionComp_Input.CDSFcCompCondPagoXML.MasterSource   :=DatosImportacionComp_Input.DSFcCompCabXML;
  DatosImportacionComp_Input.CDSFcCompCondPagoXML.MasterFields   :='id_fc';
  DatosImportacionComp_Input.CDSFcCompCondPagoXML.IndexFieldNames:='ID_FC';
  DatosImportacionComp_Input.CDSFcCompCondPagoXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\FcCondPago.xml');


  DatosImportacionComp_Input.CDSFcCompCabXML.IndexFieldNames:='nrocpbte';
end;

procedure TFormPanelImportacionComp.btImportarClick(Sender: TObject);
var
Nombre:String;
I:iNTEGER;
begin
  inherited;
  with DatosImportacionComp_Input do
  begin
    lista:=TStringList.Create;
    if VarIsNull(rxDbcCaja.KeyValue) Then
      RAISE Exception.Create('No hay caja seleccionada');
    CDSFcCompCab.Open;
    CDSFcCompDet.Open;
    CDSFcCompImp.Open;
    CDSFcCompPerIB.Open;
    CDSFcCompPerIva.Open;
    CDSFcCompCondPago.Open;
    Animate1.Visible:=True;
    Animate1.Active :=True;
    CDSFcCompCabXML.First;
    Progress.MaxValue:=CDSFcCompCabXML.RecordCount;
    while not(CDSFcCompCabXML.Eof) do
      begin
        //Inserto la cabecera
        Progress.Progress:=Progress.Progress+1;
        VerificaComprobante.Execute;
        if Not(Existe) then
          begin
            CDSFcCompCab.Insert;
            For i:=0 to CDSFcCompCabXML.FieldCount-1 do
              begin
                if CDSFcCompCab.FindField(CDSFcCompCabXML.Fields[i].FieldName)<>nil Then
                  begin
                    Nombre:=CDSFcCompCabXML.Fields[i].FieldName;
      //              if Nombre='CODIGO' Then
                      //VerificaCliente(CDSFcVtaCabXML.FieldByName(Nombre).Value);
                    CDSFcCompCab.FieldByName(Nombre).Value:=CDSFcCompCabXML.FieldByName(Nombre).Value;
                  end;
              end;
            CDSFcCompCab.FieldByName('id_fc').Value:=IBGFcCompCab.IncrementFD(1);
           //Marco Todas como no anuladas
            CDSFcCompCab.FieldByName('Anulado').Value:='N';
      //****Paso al Detalle
            CDSFcCompDetXML.First;
            while not(CDSFcCompDetXML.Eof) do
              begin
                //Inserto Detalle
                CDSFcCompDet.Insert;
                For i:=0 to CDSFcCompDetXML.FieldCount-1 do
                  begin
                    if CDSFcCompDet.FindField(CDSFcCompDetXML.Fields[i].FieldName)<>nil Then
                      begin
                        Nombre:=CDSFcCompDetXML.Fields[i].FieldName;
                        CDSFcCompDet.FieldByName(Nombre).Value:=CDSFcCompDetXML.FieldByName(Nombre).Value;
                      end;
                  end;
                CDSFcCompDet.FieldByName('id').Value       := IBGFcCompDet.IncrementFD(1);
                CDSFcCompDet.FieldByName('Id_CabFac').Value:= CDSFcCompCab.FieldByName('id_fc').Value;
                CDSFcCompDet.Post;
                CDSFcCompDetXML.Next;
              end;
      //****Paso al Iva
            CDSFcCompImpXML.First;
            while not(CDSFcCompImpXML.Eof) do
              begin
                //Inserto Detalle
                CDSFcCompImp.Insert;
                For i:=0 to CDSFcCompImpXML.FieldCount-1 do
                  begin
                    if CDSFcCompImp.FindField(CDSFcCompImpXML.Fields[i].FieldName)<>nil Then
                      begin
                        Nombre:=CDSFcCompImpXML.Fields[i].FieldName;
                        CDSFcCompImp.FieldByName(Nombre).Value:=CDSFcCompImpXML.FieldByName(Nombre).Value;
                      end;
                  end;
                CDSFcCompImp.FieldByName('id_impuesto').Value  := IBGImpuestos.IncrementFD(1);
                CDSFcCompImp.FieldByName('id_FcCompCab').Value  := CDSFcCompCab.FieldByName('id_fc').Value;
                CDSFcCompImp.Post;
                CDSFcCompImpXML.Next;
              end;
      //****Paso las Percepciones Iva
            CDSFcCompPerIvaXML.First;
            while not(CDSFcCompPerIvaXML.Eof) do
              begin
                //Inserto Detalle
                CDSFcCompPerIva.Insert;
                For i:=0 to CDSFcCompPerIvaXML.FieldCount-1 do
                  begin
                    if CDSFcCompPerIva.FindField(CDSFcCompPerIvaXML.Fields[i].FieldName)<>nil Then
                      begin
                        Nombre:=CDSFcCompPerIvaXML.Fields[i].FieldName;
                        CDSFcCompPerIva.FieldByName(Nombre).Value:=CDSFcCompPerIvaXML.FieldByName(Nombre).Value;
                      end;
                  end;
                CDSFcCompPerIva.FieldByName('id_percepcion').Value  := IBGPercepcionIVA.IncrementFD(1);
                CDSFcCompPerIva.FieldByName('id_FcCompCab').Value  := CDSFcCompCab.FieldByName('id_fc').Value;
                CDSFcCompPerIva.Post;
                CDSFcCompPerIvaXML.Next;
              end;
      //****Paso las Percepciones Ingresos Brutos
            CDSFcCompPerIBXML.First;
            while not(CDSFcCompPerIBXML.Eof) do
              begin
                //Inserto Detalle
                CDSFcCompPerIB.Insert;
                For i:=0 to CDSFcCompPerIBXML.FieldCount-1 do
                  begin
                    if CDSFcCompPerIB.FindField(CDSFcCompPerIBXML.Fields[i].FieldName)<>nil Then
                      begin
                        Nombre:=CDSFcCompPerIBXML.Fields[i].FieldName;
                        CDSFcCompPerIB.FieldByName(Nombre).Value:=CDSFcCompPerIBXML.FieldByName(Nombre).Value;
                      end;
                  end;
                CDSFcCompPerIB.FieldByName('id_percepcion').Value  := IBGPercepcionIB.IncrementFD(1);
                CDSFcCompPerIB.FieldByName('id_FcCompCab').Value  := CDSFcCompCab.FieldByName('id_fc').Value;
                CDSFcCompPerIB.Post;
                CDSFcCompPerIBXML.Next;
              end;
      //****Paso las Condiciones de Pago
            CDSFcCompCondPagoXML.First;
            while not(CDSFcCompCondPagoXML.Eof) do
              begin
                //Inserto Detalle
                CDSFcCompCondPago.Insert;
                For i:=0 to CDSFcCompCondPagoXML.FieldCount-1 do
                  begin
                    if CDSFcCompCondPago.FindField(CDSFcCompPerIBXML.Fields[i].FieldName)<>nil Then
                      begin
                        Nombre:=CDSFcCompCondPagoXML.Fields[i].FieldName;
                        CDSFcCompCondPago.FieldByName(Nombre).Value:=CDSFcCompCondPagoXML.FieldByName(Nombre).Value;
                      end;
                  end;
                CDSFcCompCondPago.FieldByName('id').Value    := IBGPercepcionIB.IncrementFD(1);
                CDSFcCompCondPago.FieldByName('id_Fc').Value := CDSFcCompCab.FieldByName('id_fc').Value;
                CDSFcCompCondPago.Post;
                CDSFcCompCondPagoXML.Next;
              end;


            if CDSFcCompCab.State<>dsbrowse Then CDSFcCompCab.Post;
            if CDSFcCompDet.State<>dsbrowse Then CDSFcCompDet.Post;
            if CDSFcCompImp.State<>dsbrowse Then CDSFcCompImp.Post;
            if CDSFcCompPerIB.State<>dsbrowse Then CDSFcCompPerIB.Post;
            if CDSFcCompPerIva.State<>dsbrowse Then CDSFcCompPerIva.Post;

            DMMain_FD.fdcGestion.StartTransaction;
            Try
              // Si es de contado ingreso el mov de caja

              CDSFcCompCab.ApplyUpdates(0);
              CDSFcCompDet.ApplyUpdates(0);
              CDSFcCompImp.ApplyUpdates(0);
              CDSFcCompPerIB.ApplyUpdates(0);
              CDSFcCompPerIva.ApplyUpdates(0);
              CDSFcCompCondPago.ApplyUpdates(0);

              if (CDSFcCompCabTIPOCPBTE.Value='FO')  Then
                begin
                  spIngresaMovCaja.Close;
                  spIngresaMovCaja.ParamByName('ID_CPBTE').AsInteger       :=CDSFcCompCabID_FC.AsInteger;
                  spIngresaMovCaja.ParamByName('tipo_comprob').AsString    :=CDSFcCompCabTIPOCPBTE.AsString;
                  spIngresaMovCaja.ParamByName('clase_comprob').AsString   :=CDSFcCompCabCLASECPBTE.AsString;
                  spIngresaMovCaja.ParamByName('nrocpbte').AsString        :=CDSFcCompCabNROCPBTE.AsString;
                  spIngresaMovCaja.ParamByName('id_cuenta_caja').AsInteger :=rxDbcCaja.KeyValue;
                  spIngresaMovCaja.ParamByName('fecha_movimiento').AsDate  :=CDSFcCompCabFECHACOMPRA.AsDateTime;
                  spIngresaMovCaja.ParamByName('debe').AsFloat             :=0;
                  spIngresaMovCaja.ParamByName('haber').AsFloat            :=CDSFcCompCabTOTAL.AsFloat;;
                  spIngresaMovCaja.ParamByName('tipooperacion').AsString   :='E';
                  spIngresaMovCaja.ExecProc;
              end;

              DMMain_FD.fdcGestion.Commit;
            except
              DMMain_FD.fdcGestion.Rollback;
              ShowMessage('Transacción no finalizada....!');
            end;
          end
        else
           begin
            lista.Add(DatosImportacionComp_Input.CDSFcCompCabXML.FieldByName('letrafac').AsString+'-'+
                      DatosImportacionComp_Input.CDSFcCompCabXML.FieldByName('sucfac').AsString+'-'+
                      DatosImportacionComp_Input.CDSFcCompCabXML.FieldByName('numerofac').AsString+'   '+
                      DatosImportacionComp_Input.CDSFcCompCabXML.FieldByName('Nombre').AsString);
            end;
        CDSFcCompCabXML.Next;
      end;
    end;
  Animate1.Visible:=False;
  Animate1.Active:=False;
  ShowMessage('Operación Finalizada...');
  DatosImportacionComp_Input.CDSFcCompCabXML.Close;
  DatosImportacionComp_Input.CDSFcCompImpXML.Close;
  DatosImportacionComp_Input.CDSFcCompDetXML.Close;
  DatosImportacionComp_Input.CDSFcCompPerIBXML.Close;
  DatosImportacionComp_Input.CDSFcCompPerIvaXML.Close;
  DatosImportacionComp_Input.CDSFcCompCondPagoXML.Close;


  Progress.Progress:=0;
end;

procedure TFormPanelImportacionComp.btNovedadesClick(Sender: TObject);
begin
  inherited;
 if (lista<>nil) and (lista.Count>0) then
    begin
      if Not(Assigned(FormListaNoImportados)) then
        FormListaNoImportados:=TFormListaNoImportados.Create(Application);
      FormListaNoImportados.mLista.Lines:=(lista);
      FormListaNoImportados.Show;
    end
  else
    ShowMessage('No hay Novedades');
end;

procedure TFormPanelImportacionComp.BuscarExecute(Sender: TObject);
var first,last:Integer;
begin
//  inherited;
  with DatosImportacioComp do
    begin
      CDSFcCompCab.Close;
      CDSFcCompCab.Params.ParamByName('desde').Value   :=desde.Date;
      CDSFcCompCab.Params.ParamByName('hasta').Value   :=hasta.Date;
      CDSFcCompCab.Open;
      // Leo el primer y ultimo Id
      CDSFcCompCab.First;
      first:=CDSFcCompCabID_FC.Value;
      CDSFcCompCab.Last;
      last :=CDSFcCompCabID_FC.Value;

      CDSFcCompDet.Close;
      CDSFcCompDet.Params.ParamByName('id_desde').Value:=first;
      CDSFcCompDet.Params.ParamByName('id_hasta').Value:=last;
      CDSFcCompDet.Open;

      CDSFcCompImp.Close;
      CDSFcCompImp.Params.ParamByName('id_desde').Value:=first;
      CDSFcCompImp.Params.ParamByName('id_hasta').Value:=last;
      CDSFcCompImp.Open;

      CDSFcCompPerIB.Close;
      CDSFcCompPerIB.Params.ParamByName('id_desde').Value:=first;
      CDSFcCompPerIB.Params.ParamByName('id_hasta').Value:=last;
      CDSFcCompPerIB.Open;

      CDSFcCompPerIva.Close;
      CDSFcCompPerIva.Params.ParamByName('id_desde').Value:=first;
      CDSFcCompPerIva.Params.ParamByName('id_hasta').Value:=last;
      CDSFcCompPerIva.Open;

      CDSCondPago.Close;
      CDSCondPago.Params.ParamByName('id_desde').Value:=first;
      CDSCondPago.Params.ParamByName('id_hasta').Value:=last;
      CDSCondPago.Open;
    end;

end;

procedure TFormPanelImportacionComp.chbPorDiaClick(Sender: TObject);
begin
  inherited;
  if chbPorDia.Checked then
    begin
      Desde.Date:=Date;
      Hasta.Date:=Date;
    end;
end;

procedure TFormPanelImportacionComp.ConectarExecute(Sender: TObject);
begin
  path := ExtractFilePath(ParamStr(0));
  GeneralIni := TIniFile.Create(path + 'General.Ini');
  // Base de datos
  DatosSinBDEPath    := GeneralIni.ReadString('Datos', 'DatosSinBDEPath','');
  GeneralIni.Free;

  if edPathOrigen.Text='' then
    edPathOrigen.Text:=DatosSinBDEPath;

  DatosImportacioComp.SQLConectionImportacion.Connected:=False;

  DatosImportacioComp.SQLConectionImportacion.Params.Clear;
  DatosImportacioComp.SQLConectionImportacion.DriverName:='INTRBASE';
  DatosImportacioComp.SQLConectionImportacion.Params.Add('Database='+edPathOrigen.Text);
  DatosImportacioComp.SQLConectionImportacion.Params.Add('RoleName=RoleName');
  DatosImportacioComp.SQLConectionImportacion.Params.Add('User_Name=sysdba');
  DatosImportacioComp.SQLConectionImportacion.Params.Add('Password=regulador');
  DatosImportacioComp.SQLConectionImportacion.Params.Add('ServerCharSet=');
  DatosImportacioComp.SQLConectionImportacion.Params.Add('SQLDialect=1');
  DatosImportacioComp.SQLConectionImportacion.Params.Add('ErrorResourceFile=');
  DatosImportacioComp.SQLConectionImportacion.Params.Add('LocaleCode=0000');
  DatosImportacioComp.SQLConectionImportacion.Params.Add('BlobSize=-1');
  DatosImportacioComp.SQLConectionImportacion.Params.Add('CommitRetain=False');
  DatosImportacioComp.SQLConectionImportacion.Params.Add('WaitOnLocks=True');
  DatosImportacioComp.SQLConectionImportacion.Params.Add('Interbase TransIsolation=ReadCommited');
  DatosImportacioComp.SQLConectionImportacion.Params.Add('Trim Char=False');
  try
    DatosImportacioComp.SQLConectionImportacion.Connected:=True;
  except
    on e: Exception do
      begin
        Application.MessageBox(pchar (e.ClassName + ';' + e.Message),'error',MB_ICONSTOP);
        ShowMessage('Verificar el Alias de la Base de Datos de Origen .....');
        DatosImportacioComp.SQLConectionImportacion.Connected:=False;
      end;
  end;
  imConectado.Visible   :=DatosImportacioComp.SQLConectionImportacion.ConnectionState in [csStateOpen];
  imDesconectado.Visible:=DatosImportacioComp.SQLConectionImportacion.ConnectionState in [csStateClosed];
  if imConectado.Visible then
    begin
      lbEstado.Caption:='Conectado';
//      DatosImportacioComp.CDSSuc.Close;
//      DatosImportacioComp.CDSSuc.Open;
//
//      DatosImportacioComp.CDSSuc.First;
//
//      cbSuc.KeyValue:=SucursalPorDefecto;
//
//      DatosImportacioComp.CDSComprobantes.Close;
//      DatosImportacioComp.CDSComprobantes.Params.ParamByName('suc').Value:=cbSuc.KeyValue;
//      DatosImportacioComp.CDSComprobantes.Open;
    end
  else
    lbEstado.Caption:='Desconectado'

end;

procedure TFormPanelImportacionComp.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormPanelImportacionComp.edPathOrigenChange(Sender: TObject);
begin
  inherited;
  DatosImportacioComp.SQLConectionImportacion.Close;
  imConectado.Visible   :=False;
  imDesconectado.Visible:=True;
end;

procedure TFormPanelImportacionComp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ListBox.Items.SaveToFile(ExtractFilePath(ParamStr(0))+'ALIASIMPORTACION.TXT');
  ImportarIni := TIniFile.Create(path + 'PanelImportacion.Ini');
  ImportarIni.WriteString('Datos', 'DatosImportar',edPathOrigen.Text);
  ImportarIni.Free;

  inherited;
  FreeAndNil(DatosImportacioComp);
  FreeAndNil(DatosImportacionComp_Input);
  Action:=caFree;
end;

procedure TFormPanelImportacionComp.FormCreate(Sender: TObject);
vAR S:String;
begin
  inherited;
  IF NOT (Assigned(DatosImportacioComp)) THEN
    DatosImportacioComp := TDatosImportacioComp.Create(Self);
  IF NOT (Assigned(DatosImportacionComp_Input)) THEN
    DatosImportacionComp_Input := TDatosImportacionComp_Input.Create(Self);


  AutoSize:=True;
  if FileExists(ExtractFilePath(ParamStr(0))+'ALIASIMPORTACION.TXT')=False then
    FileCreate(ExtractFilePath(ParamStr(0))+'ALIASIMPORTACION.TXT');
  AssignFile(Archivo,ExtractFilePath(ParamStr(0))+'ALIASIMPORTACION.TXT');
  Reset(Archivo);
    while not(Eof(Archivo)) do
    begin
      ReadLn(Archivo,S);
      ListBox.Items.Add(s);
    end;
  CloseFile(Archivo);

  path := ExtractFilePath(ParamStr(0));
  ImportarIni := TIniFile.Create(path + 'PanelImportacion.Ini');
  // Base de datos
  edPathOrigen.Text  := ImportarIni.ReadString('Datos', 'DatosImportar','');
  ImportarIni.Free;
  chbPorDia.OnClick(Sender);
  Conectar.Execute;
  DatosImportacionComp_Input.CDSCaja.Close;
  DatosImportacionComp_Input.CDSCaja.Open;

end;

procedure TFormPanelImportacionComp.FormDestroy(Sender: TObject);
begin
  inherited;
  FormPanelImportacionComp:=nil;
end;

procedure TFormPanelImportacionComp.FormShow(Sender: TObject);
var d,m,y:word;
begin
  DecodeDate(date,y,m,d);
  if m=1 Then
    begin
      m:=12;y:=y-1;
    end
  else
    m:=m-1;
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  Desde.SetFocus;
 // Buscar.Execute;
end;

procedure TFormPanelImportacionComp.ListBoxClick(Sender: TObject);
begin
  inherited;
  if ListBox.Items[ListBox.ItemIndex]<>'' then
    edPathOrigen.Text:=ListBox.Items[ListBox.ItemIndex];
end;

procedure TFormPanelImportacionComp.SpeedButton2Click(Sender: TObject);
begin
  inherited;
if edPathOrigen.Text<>'' then
    begin
      ListBox.Items.Add(edPathOrigen.Text);
      //edPathOrigen.Text:=''
    end;
end;

procedure TFormPanelImportacionComp.UpDown1Click(Sender: TObject;
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
//  BUSCAR.Execute;
end;

procedure TFormPanelImportacionComp.VerificaComprobanteExecute(Sender: TObject);
begin
  inherited;
  Existe:=False;
  with DatosImportacionComp_Input do
    begin
      QVerifiComprob.Close;
      QVerifiComprob.ParamByName('Nro').Value   := CDSFcCompCabXML.FieldByName('NROCPBTE').Value;
      QVerifiComprob.ParamByName('clase').Value := CDSFcCompCabXML.FieldByName('CLASECPBTE').Value;
      QVerifiComprob.ParamByName('Tipo').Value  := CDSFcCompCabXML.FieldByName('TIPOCPBTE').Value;
      QVerifiComprob.ParamByName('codigo').Value:= CDSFcCompCabXML.FieldByName('CODIGO').Value;
      QVerifiComprob.Open;
      if QVerifiComprob.Fields[0].AsString<>'' Then
        Existe:=True;
      QVerifiComprob.Close;
    end;
end;

end.
