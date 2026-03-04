unit UImportarStock;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Provider, DBClient, IBGenerator, DB, Gauges, StdCtrls, JvComponentBase,
  ImgList, ActnList, ComCtrls, JvExControls, JvGradient,
  Buttons, ToolWin, ExtCtrls, JvDBLookup, JvFormPlacement, JvLabel, JvDBControls,
  DBXCommon, Data.FMTBcd, JvAppStorage, JvAppIniStorage, Data.SqlExpr,IniFiles,
  System.Actions, CompBuscador, JvThread, Data.DBXInterBase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Phys.IB,
  FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.Comp.UI, dxmdaset, Vcl.Grids,
  Vcl.DBGrids,System.Variants, Vcl.Mask, JvExMask, JvToolEdit, AdvOfficeButtons,
  System.ImageList;

type
  TFormImportarStock = class(TFormABMBase)
    ImportarMarca: TAction;
    gbMarca: TGroupBox;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    lbMarcaNuevos: TLabel;
    lbMarcasModificados: TLabel;
    Label3: TLabel;
    lbMarcasTotales: TLabel;
    ImportarRubros: TAction;
    gbRubro: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    lbRubroNuevos: TLabel;
    lbRubroModificados: TLabel;
    Label8: TLabel;
    lbRubroTotales: TLabel;
    BitBtn2: TBitBtn;
    gbSubRubros: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    lbSubRubroNuevos: TLabel;
    lbSubRubroModificados: TLabel;
    Label11: TLabel;
    lbSubRubroTotales: TLabel;
    BitBtn3: TBitBtn;
    ImportarSubRubros: TAction;
    gbStock: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    lbStockNuevos: TLabel;
    lbStockModificados: TLabel;
    Label14: TLabel;
    lbStockTotales: TLabel;
    btArticulos: TBitBtn;
    ImportarStock: TAction;
    gbDepositoStk: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    lbDepNuevo: TLabel;
    lbDepMod: TLabel;
    Label17: TLabel;
    lbDepTotal: TLabel;
    BitBtn5: TBitBtn;
    ImportarDep: TAction;
    CDSDepXML: TClientDataSet;
    CDSMarcaXML: TClientDataSet;
    CDSRubroXML: TClientDataSet;
    CDSSubRubroXML: TClientDataSet;
    CDSStockXML: TClientDataSet;
    gbDepositos: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    lbDepositosNuevos: TLabel;
    lbDepositosModificados: TLabel;
    Label20: TLabel;
    lbDepositosTotales: TLabel;
    BitBtn6: TBitBtn;
    ImportarDepositos: TAction;
    CDSDepositosXML: TClientDataSet;
    dbcDeposito: TJvDBLookupCombo;
    DSListaDepositos: TDataSource;
    Label18: TLabel;
    jvHiloArticulos: TJvThread;
    jvHiloDepositos: TJvThread;
    btNovedades: TButton;
    QListaDepositos: TFDQuery;
    QListaDepositosID: TIntegerField;
    QListaDepositosNOMBRE: TStringField;
    QListaDepositosSUCURSAL: TIntegerField;
    QListaDepositosCENTRALIZA_STOCK: TStringField;
    CDSCodgioBarraXML: TClientDataSet;
    ImportarCodBarra: TAction;
    gbCodigoBarra: TGroupBox;
    Label19: TLabel;
    Label21: TLabel;
    lbCodigosNuevos: TLabel;
    lbCodigoModificados: TLabel;
    Label24: TLabel;
    lbCodBarrasProc: TLabel;
    BitBtn4: TBitBtn;
    gbListaPrecio: TGroupBox;
    lb2: TLabel;
    lbPreciosNuevos: TLabel;
    lbPreciosModif: TLabel;
    lb3: TLabel;
    lbPreciosTotales: TLabel;
    Label29: TLabel;
    BitBtn7: TBitBtn;
    dbcListaPrecios: TJvDBLookupCombo;
    CDSListaPreciosXML: TClientDataSet;
    DSListaCab: TDataSource;
    QListaCab: TFDQuery;
    QListaCabID: TIntegerField;
    QListaCabNOMBRE: TStringField;
    ImportarPrecios: TAction;
    lb1: TLabel;
    edDIrectorio: TJvDirectoryEdit;
    gEstado: TGauge;
    Label22: TLabel;
    CDSListasPrecioCabXML: TClientDataSet;
    dbcListaOrigen: TJvDBLookupCombo;
    Label23: TLabel;
    DSListaCabOrig: TDataSource;
    BitBtn8: TBitBtn;
    ToolButton1: TToolButton;
    edRemoto: TEdit;
    Label25: TLabel;
    Button1: TButton;
    chbMarca: TAdvOfficeCheckBox;
    chbRubro: TAdvOfficeCheckBox;
    chbSubRubro: TAdvOfficeCheckBox;
    chSoloActualizarArticulos: TAdvOfficeCheckBox;
    chbXML: TAdvOfficeCheckBox;
    chVerificaBorrados: TAdvOfficeCheckBox;
    chbArticulos: TAdvOfficeCheckBox;
    chbDepStk: TAdvOfficeCheckBox;
    chbDepositoMercaderia: TAdvOfficeCheckBox;
    chbCodigoBarra: TAdvOfficeCheckBox;
    chbLista: TAdvOfficeCheckBox;
    CDSDescuentoXML: TClientDataSet;
    gbDescuentos: TGroupBox;
    Label26: TLabel;
    lbDescuentosNuevos: TLabel;
    BitBtn9: TBitBtn;
    chbDescuentos: TAdvOfficeCheckBox;
    pnPie: TPanel;
    ImportarDescuentos: TAction;
    DataSource1: TDataSource;
    ScrollBox1: TScrollBox;
    procedure ImportarMarcaExecute(Sender: TObject);
    procedure ImportarRubrosExecute(Sender: TObject);
    procedure ImportarSubRubrosExecute(Sender: TObject);
    procedure ImportarStockExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ImportarDepExecute(Sender: TObject);

    procedure ImportarDepositosExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure jvHiloArticulosExecute(Sender: TObject; Params: Pointer);
    procedure CancelarExecute(Sender: TObject);
    procedure jvHiloDepositosExecute(Sender: TObject; Params: Pointer);
    procedure btNovedadesClick(Sender: TObject);
    procedure ImportarCodBarraExecute(Sender: TObject);
    procedure ImportarPreciosExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ImportarDescuentosExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Flag:Boolean;
    procedure CargarArticulos;
    procedure GravarArticulos;
    procedure BorrarArticulos;
    procedure PantallaArticulos;
    procedure PantallaDepositoStk;
    procedure CargarDepositosStk;

  end;

var
  FormImportarStock: TFormImportarStock;
  ArchiTxt:TextFile;
  I:Integer;
  Nombre,Directorio:String;
  Nuevos,Modificados:Integer;
  lista:TStringList;
  TxOk:Boolean;
implementation

uses
  DMBuscadoresForm, UListCpbteNoImportados,UDMain_FD,DMImportarStock,DMImportacionStock_Remoto;

{$R *.DFM}



procedure TFormImportarStock.PantallaArticulos;
begin
  gEstado.Progress           := gEstado.Progress+1;
  sbEstado.SimpleText        := CDSStockXML.FieldByName('codigo_stk').AsString+':'+ CDSStockXML.FieldByName('detalle_stk').AsString;
  lbStockNuevos.Caption      := IntToStr(nuevos);
  lbStockModificados.Caption := IntToStr(Modificados);
  lbStockTotales.Caption     := IntToStr(nuevos+Modificados);
  Application.ProcessMessages;

end;

procedure TFormImportarStock.PantallaDepositoStk;
begin
  lbDepNuevo.Caption := IntToStr(nuevos);
  lbDepMod.Caption   := IntToStr(Modificados);
  lbDepTotal.Caption := IntToStr(nuevos+Modificados);
  gEstado.Progress:=gEstado.Progress+1;
  Application.ProcessMessages;
end;

procedure TFormImportarStock.BitBtn8Click(Sender: TObject);
begin
  inherited;
  BorrarArticulos;
end;

procedure TFormImportarStock.BorrarArticulos;
begin
  if not(CDSStockXML.IsEmpty) then
    begin
      TxOk:=True;
      Flag:=False;
      Nuevos:=0;
      lbStockTotales.Caption     := IntToStr(nuevos);
      Application.ProcessMessages;

      gEstado.MaxValue := DatosImportarStock.QStockLocal.RecordCount;
      gEstado.Progress := 0;

      DatosImportarStock.QStockLocal.Close;
      DatosImportarStock.QStockLocal.Open;
      DatosImportarStock.QStockLocal.First;
      while not(DatosImportarStock.QStockLocal.Eof) do
        begin
          if not(CDSStockXML.Locate('CODIGO_STK',DatosImportarStock.QStockLocalCODIGO_STK.AsString,[])) then
            begin
              DatosImportarStock.QVerificaStockConMov.Close;
              DatosImportarStock.QVerificaStockConMov.ParamByName('codigo').Value:= DatosImportarStock.QStockLocalCODIGO_STK.AsString;
              DatosImportarStock.QVerificaStockConMov.Open;
              if (DatosImportarStock.QVerificaStockConMovESTADO.Value='N') Then
                begin
                  try
                    DatosImportarStock.QBorrarArticulo.Close;
                    DatosImportarStock.QBorrarArticulo.ParamByName('codigo').Value:=DatosImportarStock.QStockLocalCODIGO_STK.AsString;
                    DatosImportarStock.QBorrarArticulo.ExecSQL;
                    DatosImportarStock.QBorrarArticulo.Close;
                  Except
                    ShowMessage('No se Borro Artículo...');
                  end;
                end
              else
                begin
                  try
                    DatosImportarStock.QInactivarStk.Close;
                    DatosImportarStock.QInactivarStk.ParamByName('codigo').Value:=DatosImportarStock.QStockLocalCODIGO_STK.AsString;
                    DatosImportarStock.QInactivarStk.ExecSQL;
                    DatosImportarStock.QInactivarStk.Close;
                  Except
                    ShowMessage('No se Inactivo Artículo...');
                  end;
                end;
            end;
          DatosImportarStock.QStockLocal.Next;
          Nuevos:=Nuevos+1;
          lbStockTotales.Caption   := IntToStr(nuevos);
          gEstado.Progress         := gEstado.Progress+1;
          Application.ProcessMessages;

        end;
    end;
end;

procedure TFormImportarStock.btNovedadesClick(Sender: TObject);
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

procedure TFormImportarStock.Button1Click(Sender: TObject);
begin
  inherited;
  DatosImportarStockRemoto.RemoteDBDatabase.Connected:=False;
  DatosImportarStockRemoto.RemoteDBDatabase.ServerUri:=edRemoto.Text;
  DatosImportarStockRemoto.RemoteDBDatabase.Connected:=True;
  if DatosImportarStockRemoto.RemoteDBDatabase.Connected then
  begin

  with DatosImportarStockRemoto do
    begin
      sbEstado.SimpleText:='Consultando Marcas ...';
      Application.ProcessMessages;
      CDSMarcas.Open;

      sbEstado.SimpleText:='Consultando Rubros ...';
      Application.ProcessMessages;
      CDSRubro.Open;

      sbEstado.SimpleText:='Consultando SubRubros ...';
      Application.ProcessMessages;
      CDSSubRubro.Open;

      sbEstado.SimpleText:='Consultando Stock ...';
      Application.ProcessMessages;
      CDSStock.Open;

      sbEstado.SimpleText:='Consultando Depositos ...';
      Application.ProcessMessages;
      CDSDepositos.Open;

      sbEstado.SimpleText:='Consultando Dep de Stock ...';
      Application.ProcessMessages;
      CDSDep.Open;

      sbEstado.SimpleText:='Consultando Listas de Precio ...';
      Application.ProcessMessages;
      CDSListaCab.Open;

      CDSListaPrecios.Close;
      CDSListaPrecios.Params.ParamByName('id').Value:=-1;
      CDSListaPrecios.Open;

      sbEstado.SimpleText:='Consultando Codigo de Barras ...';
      Application.ProcessMessages;
      CDSCodigoBarra.Open;

      CDSDescuentos.Close;
      sbEstado.SimpleText:='Consultando Descuentos ...';
      Application.ProcessMessages;
      CDSDescuentos.Open;

      if Not(CDSStock.IsEmpty) Then
        begin
           sbEstado.SimpleText:='Grabando Datos ...';
           Application.ProcessMessages;
           CDSMarcas.SaveToFile(edDIrectorio.Text+'\Marcas.XML',dfXML);
           chbMarca.Checked:=True;

           CDSRubro.SaveToFile(edDIrectorio.Text+'\Rubros.XML',dfXML);
           chbRubro.Checked:=True;

           CDSSubRubro.SaveToFile(edDIrectorio.Text+'\SubRubros.XML',dfXML);
           chbSubRubro.Checked:=True;

           CDSStock.SaveToFile(edDIrectorio.Text+'\Stock.bin',dfBinary);
           chbArticulos.Checked:=True;

           CDSDep.SaveToFile(edDIrectorio.Text+'\Deposito.bin',dfBinary);
           chbDepStk.Checked:=True;

           CDSDepositos.SaveToFile(edDIrectorio.Text+'\Depos.XML',dfXML);
           chbDepositoMercaderia.Checked:=True;

           CDSCodigoBarra.SaveToFile(edDIrectorio.Text+'\codigobarra.bin',dfBinary);
           chbCodigoBarra.Checked:=True;


           CDSListaPrecios.SaveToFile(edDIrectorio.Text+'\ListaPrecios.bin',dfBinary);
           chbLista.Checked:=True;

           CDSListaCab.SaveToFile(edDIrectorio.Text+'\Listas.bin',dfBinary);

           if FileExists(edDIrectorio.Text+'\Listas.bin') Then
            CDSListasPrecioCabXML.LoadFromFile(edDIrectorio.Text+'\Listas.bin');

           CDSDescuentos.SaveToFile(edDIrectorio.Text+'\Descuentos.XML',dfXML);
           chbDescuentos.Checked:=True;

           sbEstado.SimpleText:='..';
        end;
     end;
  end
  else
  begin
    DatosImportarStockRemoto.RemoteDBDatabase.Connected:=False;
    ShowMessage('No se pudo conetar al remoto..');
  end;

end;

procedure TFormImportarStock.CancelarExecute(Sender: TObject);
begin
//  inherited;
  Flag:=True;
  sbEstado.SimpleText := 'Cancelado..';
end;

procedure TFormImportarStock.CargarArticulos;
begin
  TxOk:=True;
  CDSStockXML.First;
  while ((Not(CDSStockXML.Eof)) and (Flag=False) ) DO
    begin
//     GravarArticulos;
//     PantallaArticulos;
      jvHiloArticulos.Synchronize(GravarArticulos);
      jvHiloArticulos.Synchronize(PantallaArticulos);
      CDSStockXML.Next;
    end;
  if TxOk then
    // **** Ingreso en el Log File  **************
   DMMain_FD.LogFileFD(1,4,'Importacion Articulos desde Imp Stock:','IMPSTOCK');

end;

procedure TFormImportarStock.CargarDepositosStk;
var DBXtTasas:TDBXTransaction;
label Again;
begin
  gEstado.MaxValue  :=CDSDepXML.RecordCount;
  gEstado.Progress  :=0;
  Nuevos            :=0;
  Modificados       :=0;
  CDSDepXML.Filtered:=False;
  CDSDepXML.First;
  if (dbcDeposito.KeyValue<>-1) then
    begin
      CDSDepXML.Filtered := False;
      CDSDepXML.Filter   := 'CODIGO_DEPOSITO = '+IntToStr(dbcDeposito.KeyValue);
      CDSDepXML.Filtered := True;
      gEstado.MaxValue   := CDSDepXML.RecordCount;
    end;

  while ( (Not(CDSDepXML.Eof)) and (Flag=False) ) DO
    begin
      Again:
      DatosImportarStock.CDSDep.Close;
      DatosImportarStock.CDSDep.Params.ParamByName('codigo').Value  :=CDSDepXML.fieldByName('CODIGO_STK').Value;
      DatosImportarStock.CDSDep.Params.ParamByName('deposito').Value:=CDSDepXML.fieldByName('CODIGO_DEPOSITO').Value;
      DatosImportarStock.CDSDep.Open;
      if Not(DatosImportarStock.CDSDep.IsEmpty) Then // si existe
        begin
          if DatosImportarStock.CDSDep.RecordCount=1 Then
            begin
              DatosImportarStock.CDSDep.Edit;
              Inc(Modificados);
            end
          else
            if DatosImportarStock.CDSDep.RecordCount>1 Then
              begin
                lista.Add('Registro repetidos...'+'-'+
                          'Codigo....:'+CDSDepXML.FieldByName('codigo_stk').AsString+'-'+
                          'Deposito..:'+CDSDepXML.FieldByName('codigo_deposito').AsString);
                CDSDepXML.Next;
                goto again;
              end;
        end
      else
        Begin
          DatosImportarStock.CDSDep.Append;
          Inc(Nuevos);
        end;
      FOR I :=0 TO CDSDepXML.FieldCount-1 do
        begin
          Nombre:=CDSDepXML.Fields[i].FieldName;
          if (Nombre<>'ID_deposito') and (Nombre<>'Fisico') Then
            DatosImportarStock.CDSDep.FieldByName(Nombre).Value:=CDSDepXML.FieldByName(Nombre).Value;
        end;


      DatosImportarStock.FDConnection.StartTransaction;
      Try
        DatosImportarStock.CDSDep.Post;
        DatosImportarStock.CDSDep.ApplyUpdates(0);
        DatosImportarStock.FDConnection.Commit;
      except
        DatosImportarStock.FDConnection.Rollback;
        ShowMessage('Reg.no Gravado..!');
      end;
      jvHiloDepositos.Synchronize(PantallaDepositoStk);
      CDSDepXML.Next;
    end;

end;


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
procedure TFormImportarStock.ImportarMarcaExecute(Sender: TObject);
begin
  inherited;
  TxOk:=True;
  lbMarcaNuevos.Caption       :='0';
  lbMarcasModificados.Caption :='0';
  lbMarcasTotales.Caption     :='0';

  if FileExists(edDirectorio.Text+'\Marcas.XML') Then
    CDSMarcaXML.LoadFromFile(edDIrectorio.Text+'\Marcas.XML')
  else
    RAISE Exception.Create('Archivo Marcas.XML no encontrado.....!!!!');

  if CDSMarcaXML.IsEmpty Then
    RAISE Exception.Create('No Hay datos para procesar....!!!!');

  gEstado.MaxValue :=CDSMarcaXML.RecordCount;
  gEstado.Progress :=0;
  Nuevos:=0;
  Modificados:=0;
  CDSMarcaXML.First;
  while Not(CDSMarcaXML.Eof) DO
    begin
      gEstado.Progress :=gEstado.Progress+1;
      DatosImportarStock.CDSMarca.Close;
      DatosImportarStock.CDSMarca.Params.ParamByName('codigo').Value:=CDSMarcaXML.fieldByName('MARCA_STK').Value;
      DatosImportarStock.CDSMarca.Open;
      if Not(DatosImportarStock.CDSMarca.IsEmpty) Then
        begin DatosImportarStock.CDSMarca.Edit;Inc(Modificados);end
      else
        Begin DatosImportarStock.CDSMarca.Insert;Inc(Nuevos);end;
      FOR I :=0 TO CDSMarcaXML.FieldCount-1 do
        begin
          Nombre:=CDSMarcaXML.Fields[i].FieldName;
          DatosImportarStock.CDSMarca.FieldByName(Nombre).Value:=CDSMarcaXML.FieldByName(Nombre).Value;
        end;
      DatosImportarStock.CDSMarca.Post;
      Sleep(1);
     DMMain_FD.fdcGestion.StartTransaction;
      Try
        DatosImportarStock.CDSMarca.ApplyUpdates(0);
        DMMain_FD.fdcGestion.Commit;
      except
        TxOk:=False;
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('Transacción no finalizada....!');
      end;
      lbMarcaNuevos.Caption:=IntToStr(nuevos);
      lbMarcasModificados.Caption:=IntToStr(Modificados);
      lbMarcasTotales.Caption:=IntToStr(nuevos+Modificados);
      CDSMarcaXML.Next;
    end;
    if TxOk then
      // **** Ingreso en el Log File  **************
       DMMain_FD.LogFileFD(1,4,'Importacion Marcas desde Imp Stock:', 'IMPSTOCK');
  gEstado.Progress :=0;
end;

procedure TFormImportarStock.ImportarPreciosExecute(Sender: TObject);
begin
  inherited;
  TxOk:=True;
  Flag:=False;

  if FileExists(edDIrectorio.Text+'\ListaPrecios.bin') Then
    CDSListaPreciosXML.LoadFromFile(edDIrectorio.Text+'\ListaPrecios.bin')
  else
    RAISE Exception.Create('Archivo de Lista de Precios no encontrado.....!!!!');

  if dbcListaPrecios.KeyValue<=0 then
    RAISE Exception.Create('Falta Lista de Precios.....!!!!');

  lbPreciosNuevos.Caption   :='0';
  lbPreciosModif.Caption    :='0';
  lbPreciosTotales.Caption  :='0';

  if dbcListaPrecios.KeyValue<=0 then
    RAISE Exception.Create('Debe elgir una lista de precios .....!!!!');

  if CDSListaPreciosXML.IsEmpty Then
    RAISE Exception.Create('No Hay datos para procesar....!!!!');

  gEstado.MaxValue := CDSListaPreciosXML.RecordCount;
  gEstado.Progress := 0;
  Nuevos           := 0;
  Modificados      := 0;
  CDSListaPreciosXML.Filtered := False;
  CDSListaPreciosXML.Filter   := 'ID_CAB='+''+IntToStr(dbcListaOrigen.KeyValue)+'';
  CDSListaPreciosXML.Filtered := True;
  gEstado.MaxValue            := CDSListaPreciosXML.RecordCount;
  CDSListaPreciosXML.First;

  while Not(CDSListaPreciosXML.Eof) and (Flag=False) DO
    begin
      gEstado.Progress := gEstado.Progress+1;
      Application.ProcessMessages;

      DatosImportarStock.CDSListaPrecios.Close;
      DatosImportarStock.CDSListaPrecios.Params.ParamByName('id').Value     := dbcListaPrecios.KeyValue;
      DatosImportarStock.CDSListaPrecios.Params.ParamByName('codigo').Value := CDSListaPreciosXML.fieldByName('CODIGOARTICULO').Value;
      DatosImportarStock.CDSListaPrecios.Open;
      if Not(DatosImportarStock.CDSListaPrecios.IsEmpty) Then
        begin DatosImportarStock.CDSListaPrecios.Edit;Inc(Modificados);end
      else
        Begin
          DatosImportarStock.CDSListaPrecios.Insert;
          DatosImportarStock.CDSListaPreciosID_CAB.Value := dbcListaPrecios.KeyValue;
          Inc(Nuevos);
        end;
      FOR I :=0 TO CDSListaPreciosXML.FieldCount-1 do
        begin
          Nombre:=CDSListaPreciosXML.Fields[i].FieldName;
          if (Nombre<>'ID') and (Nombre<>'ID_CAB') then
            DatosImportarStock.CDSListaPrecios.FieldByName(Nombre).Value:=CDSListaPreciosXML.FieldByName(Nombre).Value;
        end;
      DatosImportarStock.CDSListaPrecios.Post;
      Sleep(1);
      DMMain_FD.fdcGestion.StartTransaction;
      Try
        DatosImportarStock.CDSListaPrecios.ApplyUpdates(0);
        DMMain_FD.fdcGestion.Commit;
      except
        TxOk:=False;
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('Reg.No Guardado ....!');
      end;
      lbPreciosNuevos.Caption  := IntToStr(nuevos);
      lbPreciosModif.Caption   := IntToStr(Modificados);
      lbPreciosTotales.Caption := IntToStr(nuevos+Modificados);
      CDSListaPreciosXML.Next;
    end;
  if TxOk then
     // **** Ingreso en el Log File  **************
     DMMain_FD.LogFileFD(1,4,'Importacion Actualizacion de Precios desde Imp Stock:', 'IMPSTOCK');
   gEstado.Progress :=0;

end;

procedure TFormImportarStock.ImportarRubrosExecute(Sender: TObject);
begin
  inherited;
  TxOk:=True;
  lbRubroNuevos.Caption      :='0';
  lbRubroModificados.Caption :='0';
  lbRubroTotales.Caption     :='0';

  if FileExists(edDIrectorio.Text+'\Rubros.XML') Then
    CDSRubroXML.LoadFromFile(edDIrectorio.Text+'\Rubros.XML')
  else
    RAISE Exception.Create('Archivo Rubros.XML no encontrado.....!!!!');

  if CDSRubroXML.IsEmpty Then
    RAISE Exception.Create('No Hay datos para procesar....!!!!');

  gEstado.MaxValue := CDSRubroXML.RecordCount;
  gEstado.Progress := 0;
  Nuevos           :=0;
  Modificados      :=0;
  CDSRubroXML.First;
  while Not(CDSRubroXML.Eof) DO
    begin
      gEstado.Progress:=gEstado.Progress+1;
      Application.ProcessMessages;
      DatosImportarStock.CDSRubro.Close;
      DatosImportarStock.CDSRubro.Params.ParamByName('codigo').Value:=CDSRubroXML.fieldByName('CODIGO_RUBRO').Value;
      DatosImportarStock.CDSRubro.Open;
      if Not(DatosImportarStock.CDSRubro.IsEmpty) Then
        begin DatosImportarStock.CDSRubro.Edit;Inc(Modificados);end
      else
        Begin DatosImportarStock.CDSRubro.Insert;Inc(Nuevos);end;
      FOR I :=0 TO CDSRubroXML.FieldCount-1 do
        begin
          Nombre:=CDSRubroXML.Fields[i].FieldName;
          DatosImportarStock.CDSRubro.FieldByName(Nombre).AsString:=CDSRubroXML.FieldByName(Nombre).AsString;
        end;
      DatosImportarStock.CDSRubro.Post;
      Sleep(1);

      DMMain_FD.fdcGestion.StartTransaction;
      Try
        DatosImportarStock.CDSRubro.ApplyUpdates(0);
        DMMain_FD.fdcGestion.Commit;
      except
        TxOk:=False;
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('Reg.No Gravado ....!');
      end;
      lbRubroNuevos.Caption:=IntToStr(nuevos);
      lbRubroModificados.Caption:=IntToStr(Modificados);
      lbRubroTotales.Caption:=IntToStr(nuevos+Modificados);
      CDSRubroXML.Next;
    end;
  if TxOk then
    // **** Ingreso en el Log File  **************
      DMMain_FD.LogFileFD(1,4,'Importacion Rubros desde Imp Stock:', 'IMPSTOCK');
   gEstado.Progress :=0;


end;

procedure TFormImportarStock.ImportarSubRubrosExecute(Sender: TObject);
begin
  inherited;
  TxOk:=True;
  lbSubRubroNuevos.Caption      :='0';
  lbSubRubroModificados.Caption :='0';
  lbSubRubroTotales.Caption     :='0';

  if FileExists(edDIrectorio.Text+'\SubRubros.XML') Then
    CDSSubRubroXML.LoadFromFile(edDIrectorio.Text+'\SubRubros.XML')
  else
    RAISE Exception.Create('Archivo SubRubros.XML no encontrado.....!!!!');


  if CDSSubRubroXML.IsEmpty Then
    RAISE Exception.Create('No Hay datos para procesar....!!!!');

  gEstado.MaxValue := CDSSubRubroXML.RecordCount;
  gEstado.Progress := 0;
  Nuevos:=0;
  Modificados:=0;
  CDSSubRubroXML.First;
  while Not(CDSSubRubroXML.Eof) DO
    begin
      gEstado.Progress := gEstado.Progress+1;
      Application.ProcessMessages;
      DatosImportarStock.CDSSubRubro.Close;
      DatosImportarStock.CDSSubRubro.Params.ParamByName('codigo').Value:=CDSSubRubroXML.fieldByName('CODIGO_SUBRUBRO').Value;
      DatosImportarStock.CDSSubRubro.Open;
      if Not(DatosImportarStock.CDSSubRubro.IsEmpty) Then
        begin DatosImportarStock.CDSSubRubro.Edit;Inc(Modificados);end
      else
        Begin DatosImportarStock.CDSSubRubro.Insert;Inc(Nuevos);end;
      FOR I :=0 TO CDSSubRubroXML.FieldCount-1 do
        begin
          Nombre:=CDSSubRubroXML.Fields[i].FieldName;
          DatosImportarStock.CDSSubRubro.FieldByName(Nombre).AsString:=CDSSubRubroXML.FieldByName(Nombre).AsString;
        end;
      DatosImportarStock.CDSSubRubro.Post;

      DMMain_FD.fdcGestion.StartTransaction;
      Try
        DatosImportarStock.CDSSubRubro.ApplyUpdates(0);
        DMMain_FD.fdcGestion.Commit;
      except
        TxOk:=False;
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('Reg.No Grabado...!');
      end;
      lbSubRubroNuevos.Caption     :=IntToStr(nuevos);
      lbSubRubroModificados.Caption:=IntToStr(Modificados);
      lbSubRubroTotales.Caption    :=IntToStr(nuevos+Modificados);
      CDSSubRubroXML.Next;
    end;
  if TxOk Then            // **** Ingreso en el Log File  **************
    DMMain_FD.LogFileFD(1,4,'Importacion Sub Rubros desde Imp Stock:', 'IMPSTOCK');
  gEstado.Progress :=0;

end;

procedure TFormImportarStock.jvHiloArticulosExecute(Sender: TObject;
  Params: Pointer);
begin
  inherited;
  btArticulos.Enabled:=False;
  CargarArticulos;
  jvHiloArticulos.Terminate;
  btArticulos.Enabled  := True;
  btCancelar.Enabled   := True;
  gEstado.Progress     := 0;
end;

procedure TFormImportarStock.jvHiloDepositosExecute(Sender: TObject;
  Params: Pointer);
begin
  inherited;
  btArticulos.Enabled:=False;
  CargarDepositosStk;
  jvHiloDepositos.Terminate;
  btArticulos.Enabled  := True;
  btCancelar.Enabled   := True;
end;

procedure TFormImportarStock.ImportarStockExecute(Sender: TObject);
var dir:String;
begin
  inherited;
  lbStockNuevos.Caption      :='0';
  lbStockModificados.Caption :='0';
  lbStockTotales.Caption     :='0';
  Flag                       :=False;
  Dir:='';
  lista.Clear;

    begin
      dir:=edDIrectorio.Text;
      //dxMemData1.LoadFromFile(Dir+'\Stock.XML');

      if ((FileExists(Dir+'\Stock.bin')) or (FileExists(Dir+'\Stock.xml'))) Then
        begin
          if chbXML.Checked then
            CDSStockXML.LoadFromFile(Dir+'\Stock.XML')
          else
            CDSStockXML.LoadFromFile(Dir+'\Stock.bin');
          Sleep(2000);
        end
      else
        RAISE Exception.Create('Archivo Stock.*** no encontrado.....!!!!');

      if (CDSStockXML.IsEmpty) Then
        RAISE Exception.Create('No Hay datos para procesar....!!!!');


      gEstado.MaxValue := CDSStockXML.RecordCount;
      gEstado.Progress := 0;

      Nuevos      := 0;
      Modificados := 0;

      jvHiloArticulos.FreeOnTerminate:=True;
      jvHiloArticulos.Execute(self);
    end;
  if chVerificaBorrados.Checked Then
    BorrarArticulos;
end;

procedure TFormImportarStock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  ArchivoIni                   := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ImportacionStock.ini');
  ArchivoIni.WriteInteger('Importar', 'Deposito', dbcDeposito.KeyValue);
  ArchivoIni.WriteInteger('Importar', 'Lista', dbcListaPrecios.KeyValue);
  ArchivoIni.WriteString('Importar', 'Directorio', edDIrectorio.Text );
  ArchivoIni.WriteString('Importar', 'PathRemoto', edRemoto.Text );

 if (DatosImportarStock<>Nil) then
    FreeAndNil(DatosImportarStock);
  ArchivoIni.Free;
  Action:=caFree;
 end;

procedure TFormImportarStock.FormCreate(Sender: TObject);
begin
  inherited;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  AutoSize:=False;
  lista:=TStringList.Create;
  // Aca asigino los parametros del SQLConnections del Main

  IF NOT (Assigned(DatosImportarStock)) THEN
    DatosImportarStock := TDatosImportarStock.Create(Self);

  IF NOT (Assigned(DatosImportarStockRemoto)) THEN
    DatosImportarStockRemoto := TDatosImportarStockRemoto.Create(Self);

  // Aca asigino los parametros del fdcGestion del Main
  begin
    DatosImportarStock.FDConnection.Connected := False;
    DatosImportarStock.FDConnection.Params.Values['Database']  := DMMain_FD.fdcGestion.Params.Values['Database'];
    DatosImportarStock.FDConnection.Params.Values['User_Name'] := DMMain_FD.fdcGestion.Params.Values['User_Name'];
    DatosImportarStock.FDConnection.Params.Values['Password']  := DMMain_FD.fdcGestion.Params.Values['Password'];
    DatosImportarStock.FDConnection.Params.Values['DriverID']  := DMMain_FD.fdcGestion.Params.Values['DriverID'];
    DatosImportarStock.FDConnection.Params.Values['SQLDialect']:= DMMain_FD.fdcGestion.Params.Values['SQLDialect'];
    DatosImportarStock.FDConnection.Connected := True;

  end;
  QListaDepositos.Close;
  QListaDepositos.Open;
  QListaCab.Close;
  QListaCab.Open;

//*************************************************************
  ArchivoIni               := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ImportacionStock.ini');
  dbcDeposito.KeyValue     := ArchivoIni.ReadInteger('Importar', 'Deposito', -1);
  dbcListaPrecios.KeyValue := ArchivoIni.ReadInteger('Importar', 'Lista', -1);
  edDIrectorio.Text        := ArchivoIni.ReadString('Importar', 'Directorio', '');
  edRemoto.Text            := ArchivoIni.ReadString('Importar', 'PathRemoto', '' );

  chbDepositoMercaderia.Checked := False;
  chbRubro.Checked              := False;
  chbSubRubro.Checked           := False;
  chbMarca.Checked              := False;
  chbArticulos.Checked          := False;
  chbDepStk.Checked             := False;
  chbCodigoBarra.Checked        := False;
  chbLista.Checked              := False;
  chbDescuentos.Checked         := False;


  ArchivoIni.Free;
end;

procedure TFormImportarStock.FormDestroy(Sender: TObject);
begin
  inherited;
  FormImportarStock:=nil;
end;

procedure TFormImportarStock.FormResize(Sender: TObject);
begin
  inherited;
  if FormImportarStock<>nil then
    if FormImportarStock.Width<>979 then
      FormImportarStock.Width:=979;

end;

procedure TFormImportarStock.FormShow(Sender: TObject);
begin
  inherited;
  begin
    if FileExists(edDIrectorio.Text+'\Listas.bin') Then
      CDSListasPrecioCabXML.LoadFromFile(edDIrectorio.Text+'\Listas.bin');
//
//    else
//      RAISE Exception.Create('Archivo de Lista Cabecera no encontrado.....!!!!');
  end;

end;

procedure TFormImportarStock.GravarArticulos;
var i:Integer;
begin
  DatosImportarStock.QStock.Close;
  DatosImportarStock.QStock.ParamByName('codigo').Value:=Trim(CDSStockXML.fieldByName('CODIGO_STK').Value);
  DatosImportarStock.QStock.Open;
  if Not(DatosImportarStock.QStock.IsEmpty) Then
    begin
      DatosImportarStock.QStock.Edit;
      Inc(Modificados);
    end
  else
    Begin
      if Not(chSoloActualizarArticulos.Checked) Then
        DatosImportarStock.QStock.Insert;
      Inc(Nuevos);
    end;
  FOR I :=0 TO CDSStockXML.FieldCount-1 do
    begin
      Nombre:=CDSStockXML.Fields[i].FieldName;
      if DatosImportarStock.QStock.FindField(Nombre)<>nil Then
        DatosImportarStock.QStock.FieldByName(Nombre).Value:=CDSStockXML.FieldByName(Nombre).Value;

      if (DatosImportarStock.QStock.FieldByName(Nombre).Required) and (DatosImportarStock.QStock.FieldByName(Nombre).DataType=ftString) and
          (Trim(DatosImportarStock.QStock.FieldByName(Nombre).AsString)='') then
        DatosImportarStock.QStock.FieldByName(Nombre).Value := 'N';
      if (DatosImportarStock.QStock.FieldByName(Nombre).Required) and (DatosImportarStock.QStock.FieldByName(Nombre).DataType=ftInteger) and
         (VarIsNull(DatosImportarStock.QStock.FieldByName(Nombre).Value)) then
        DatosImportarStock.QStock.FieldByName(Nombre).Value := -1;
      if (DatosImportarStock.QStock.FieldByName(Nombre).Required) and (DatosImportarStock.QStock.FieldByName(Nombre).DataType=ftFloat) and
         (VarIsNull(DatosImportarStock.QStock.FieldByName(Nombre).Value)) then
        DatosImportarStock.QStock.FieldByName(Nombre).Value := 0;
    end;
  DatosImportarStock.QStock.Post;
  TxOk:=DatosImportarStock.QStock.ApplyUpdates(0)=0;
  DatosImportarStock.QStock.Close;
end;

procedure TFormImportarStock.ImportarCodBarraExecute(Sender: TObject);
var path:String;
begin
  inherited;
  TxOk:=True;
  Flag:=False;
  lbCodigosNuevos.Caption     :='0';
  lbCodigoModificados.Caption :='0';
  lbCodBarrasProc.Caption     :='0';

    begin
      Path:= edDIrectorio.Text;
      if FileExists(Path+'\codigobarra.bin') Then
        CDSCodgioBarraXML.LoadFromFile(Path+'\codigobarra.bin')
      else
        RAISE Exception.Create('Archivo codigobarra.bin no encontrado.....!!!!');
    end;

  if CDSCodgioBarraXML.IsEmpty Then
    RAISE Exception.Create('No Hay datos para procesar....!!!!');

  gEstado.MaxValue := CDSCodgioBarraXML.RecordCount;
  gEstado.Progress := 0;
  Nuevos     :=0;
  Modificados:=0;
  CDSCodgioBarraXML.First;
  while Not(CDSCodgioBarraXML.Eof) and (Flag=False) DO
    begin
      gEstado.Progress :=gEstado.Progress+1;
      Application.ProcessMessages;
      DatosImportarStock.CDSCodigoBarra.Close;
      DatosImportarStock.CDSCodigoBarra.Params.ParamByName('codigo').Value     :=CDSCodgioBarraXML.fieldByName('CODIGO_STK').Value;
      DatosImportarStock.CDSCodigoBarra.Params.ParamByName('codigoBarra').Value:=CDSCodgioBarraXML.fieldByName('CODIGOBARRA').Value;
      DatosImportarStock.CDSCodigoBarra.Open;
      if Not(DatosImportarStock.CDSCodigoBarra.IsEmpty) Then
        begin DatosImportarStock.CDSCodigoBarra.Edit;Inc(Modificados);end
      else
        Begin DatosImportarStock.CDSCodigoBarra.Insert;Inc(Nuevos);end;
      FOR I :=0 TO CDSCodgioBarraXML.FieldCount-1 do
        begin
          Nombre:=CDSCodgioBarraXML.Fields[i].FieldName;
          if Nombre<>'ID' then
            DatosImportarStock.CDSCodigoBarra.FieldByName(Nombre).Value:=CDSCodgioBarraXML.FieldByName(Nombre).Value;
        end;
      DatosImportarStock.CDSCodigoBarra.Post;
      Sleep(1);
      DMMain_FD.fdcGestion.StartTransaction;
      Try
        DatosImportarStock.CDSCodigoBarra.ApplyUpdates(0);

        DMMain_FD.fdcGestion.Commit;
      except
        TxOk:=False;
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('Reg.No Grabado....!');
      end;
      lbCodigosNuevos.Caption    :=IntToStr(nuevos);
      lbCodigoModificados.Caption:=IntToStr(Modificados);
      lbCodBarrasProc.Caption    :=IntToStr(nuevos+Modificados);
      CDSCodgioBarraXML.Next;
    end;
  if TxOk then
    // **** Ingreso en el Log File  **************
    DMMain_FD.LogFileFD(1,4,'Importacion Cod Barra desde Imp Stock:','IMPSTOCK');
   gEstado.Progress :=0;

end;

procedure TFormImportarStock.ImportarDepExecute(Sender: TObject);
var s2:string;
begin
  inherited;
  if dbcDeposito.KeyValue<=0 then
    RAISE Exception.Create('Falta Deposito.....!!!!');

  lbDepNuevo.Caption     :='0';
  lbDepMod .Caption      :='0';
  lbDepTotal.Caption     :='0';
  Flag                   :=False;
  lista.Clear;
    begin
      Screen.Cursor:=crHourGlass;
      if FileExists(edDIrectorio.Text+'\Deposito.bin') Then
        CDSDepXML.LoadFromFile(edDIrectorio.Text+'\Deposito.bin')
      else
        RAISE Exception.Create('Archivo Deposito.bin no encontrado.....!!!!');

      if CDSDepXML.IsEmpty Then
        RAISE Exception.Create('No Hay datos para procesar....!!!!');
      Screen.Cursor:=crDefault;

      jvHiloDepositos.FreeOnTerminate:=True;
      jvHiloDepositos.Execute(self);
    end;
  gEstado.Progress :=0;

end;

procedure TFormImportarStock.ImportarDepositosExecute(Sender: TObject);
begin
  inherited;
  TxOk:=True;
  lbDepositosNuevos.Caption      :='0';
  lbDepositosModificados.Caption :='0';
  lbDepositosTotales.Caption     :='0';

  if FileExists(edDIrectorio.Text+'\Depos.XML') Then
    CDSDepositosXML.LoadFromFile(edDIrectorio.Text+'\Depos.XML')
  else
    RAISE Exception.Create('Archivo Depositos.XML no encontrado.....!!!!');

  if CDSDepositosXML.IsEmpty Then
    RAISE Exception.Create('No Hay datos para procesar....!!!!');

  gEstado.MaxValue :=CDSDepositosXML.RecordCount;
  gEstado.Progress :=0;
  Nuevos:=0;
  Modificados:=0;
  CDSDepositosXML.First;
  while Not(CDSDepositosXML.Eof) DO
    begin
      gEstado.Progress :=gEstado.Progress+1;
      Application.ProcessMessages;
      DatosImportarStock.CDSDepositos.Close;
      DatosImportarStock.CDSDepositos.Params.ParamByName('codigo').Value:=CDSDepositosXML.fieldByName('id').Value;
      DatosImportarStock.CDSDepositos.Open;
      if Not(DatosImportarStock.CDSDepositos.IsEmpty) Then
        begin DatosImportarStock.CDSDepositos.Edit;Inc(Modificados);end
      else
        Begin DatosImportarStock.CDSDepositos.Insert;Inc(Nuevos);end;
      FOR I :=0 TO CDSDepositosXML.FieldCount-1 do
        begin
          Nombre:=CDSDepositosXML.Fields[i].FieldName;
          DatosImportarStock.CDSDepositos.FieldByName(Nombre).Value:=CDSDepositosXML.FieldByName(Nombre).Value;
        end;
      DatosImportarStock.CDSDepositos.Post;
      DMMain_FD.fdcGestion.StartTransaction;
      Try
        DatosImportarStock.CDSDepositos.ApplyUpdates(0);
        DMMain_FD.fdcGestion.Commit;
      except
        TxOk:=False;
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('Transacción no finalizada....!');
      end;
      lbDepositosNuevos.Caption:=IntToStr(nuevos);
      lbDepositosModificados.Caption:=IntToStr(Modificados);
      lbDepositosTotales.Caption:=IntToStr(nuevos+Modificados);
      Sleep(2);
      CDSDepositosXML.Next;
    end;
     // **** Ingreso en el Log File  **************
    if TxOk then
       DMMain_FD.LogFileFD(1,4,'Importacion Depositos desde Imp Stock:', 'IMPSTOCK');
  gEstado.Progress :=0;

end;

procedure TFormImportarStock.ImportarDescuentosExecute(Sender: TObject);
begin
  inherited;
  TxOk:=True;
  lbDescuentosNuevos.Caption      :='0';

  if FileExists(edDIrectorio.Text+'\Descuentos.XML') Then
    CDSDescuentoXML.LoadFromFile(edDIrectorio.Text+'\Descuentos.XML')
  else
    RAISE Exception.Create('Archivo Descuentos.XML no encontrado.....!!!!');

  if CDSDescuentoXML.IsEmpty Then
    RAISE Exception.Create('No Hay datos para procesar....!!!!');

  // Borro los que hay...
  sbEstado.SimpleText:='Consultando Marcas ...';
  Application.ProcessMessages;
  DatosImportarStock.QBorrarDsctos.Close;
  DatosImportarStock.QBorrarDsctos.ExecSQL;
  DatosImportarStock.QBorrarDsctos.Close;
  sbEstado.SimpleText:='..';
  Application.ProcessMessages;

  gEstado.MaxValue :=CDSDescuentoXML.RecordCount;
  gEstado.Progress :=0;
  Nuevos:=0;
  if Not(DatosImportarStock.CDSDescuentos.Active) then
    DatosImportarStock.CDSDescuentos.Open;
  CDSDescuentoXML.First;
  while Not(CDSDescuentoXML.Eof) DO
    begin
      gEstado.Progress :=gEstado.Progress+1;
      Application.ProcessMessages;
      DatosImportarStock.CDSDescuentos.Insert;Inc(Nuevos);
      FOR I :=0 TO CDSDescuentoXML.FieldCount-1 do
        begin
          Nombre:=CDSDescuentoXML.Fields[i].FieldName;
          DatosImportarStock.CDSDescuentos.FieldByName(Nombre).Value:=CDSDescuentoXML.FieldByName(Nombre).Value;
        end;
      DatosImportarStock.CDSDescuentos.Post;
      DMMain_FD.fdcGestion.StartTransaction;
      Try
        DatosImportarStock.CDSDescuentos.ApplyUpdates(0);
        DMMain_FD.fdcGestion.Commit;
      except
        TxOk:=False;
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('Transacción no finalizada....!');
      end;
      lbDepositosNuevos.Caption:=IntToStr(nuevos);
      Sleep(2);
      CDSDescuentoXML.Next;
    end;
     // **** Ingreso en el Log File  **************
    if TxOk then
       DMMain_FD.LogFileFD(1,4,'Importacion Descuentos desde Imp Stock:', 'DSCTSTOCK');
  gEstado.Progress :=0;
end;

end.
