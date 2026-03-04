unit UBuscadorCpbte_Despachante;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, JvComponentBase, JvFormPlacement, Vcl.ImgList, Datasnap.Provider, Data.DB,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, JvExMask, JvToolEdit,
  Vcl.Mask, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, JvExControls, JvGradient, AdvOfficeButtons, Vcl.ExtCtrls,
  IniFiles, JvAppStorage, JvAppIniStorage, System.ImageList;

type
  TFormBuscaCpbteDesp = class(TForm)
    pnBase: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBText2: TDBText;
    pnPie: TPanel;
    dbtDETALLE: TDBText;
    Label7: TLabel;
    DBText3: TDBText;
    Label8: TLabel;
    pnPieBoton: TPanel;
    JvGradient1: TJvGradient;
    DBText1: TDBText;
    sbtBuscar: TSpeedButton;
    btTodos: TBitBtn;
    btAceptar: TBitBtn;
    btCancelar: TBitBtn;
    edLetra: TEdit;
    edSufijo: TEdit;
    edNumero: TEdit;
    edMuestraComprobante: TEdit;
    pnCliente: TPanel;
    dbeMuestraCliente: TDBEdit;
    ComboCliente: TJvComboEdit;
    cbClientes: TAdvOfficeCheckBox;
    dbgConsulta: TJvDBGrid;
    ComboCpbte: TJvComboEdit;
    DSBuscaCpbte: TDataSource;
    ActionList1: TActionList;
    Buscar: TAction;
    Listar: TAction;
    Cancelar: TAction;
    Aceptar: TAction;
    BuscarCliente: TAction;
    BuscarCpbte: TAction;
    CDSBuscaCpbte: TClientDataSet;
    CDSBuscaCpbteNROCPBTE: TStringField;
    CDSBuscaCpbteCODIGO: TStringField;
    CDSBuscaCpbteNOMBRE: TStringField;
    CDSBuscaCpbteANULADO: TStringField;
    CDSBuscaCpbteID_FC: TIntegerField;
    CDSBuscaCpbteMUESTRAESTADO: TStringField;
    CDSBuscaCpbteTOTAL: TFloatField;
    DSPBuscaCpbte: TDataSetProvider;
    ImageList1: TImageList;
    JvFormStorage: TJvFormStorage;
    CDSClientes: TClientDataSet;
    CDSClientesNOMBRE: TStringField;
    CDSClientesCODIGO: TStringField;
    DSPClientes: TDataSetProvider;
    DSPTipoComprob: TDataSetProvider;
    CDSTipoComprob: TClientDataSet;
    CDSTipoComprobTIPO_COMPROB: TStringField;
    CDSTipoComprobCLASE_COMPROB: TStringField;
    CDSTipoComprobLETRA: TStringField;
    CDSTipoComprobPREFIJO: TStringField;
    CDSTipoComprobNUMERO: TStringField;
    CDSTipoComprobDENOMINACION: TStringField;
    CDSTipoComprobMUESTRASUCURSAL: TStringField;
    CDSTipoComprobSUCURSAL: TIntegerField;
    CDSTipoComprobID_COMPROBANTE: TIntegerField;
    DSClientes: TDataSource;
    DSSucursal: TDataSource;
    ComBuscador: TComBuscador;
    QBuscaCpbte: TFDQuery;
    QTipoCom: TFDQuery;
    QBuscarClaseCpbte: TFDQuery;
    QBuscarClaseCpbteNOMBRE: TStringField;
    QBuscarClaseCpbteLETRA: TStringField;
    QBuscarClaseCpbteCLASE: TStringField;
    QClientes: TFDQuery;
    Qsucursal: TFDQuery;
    QsucursalCODIGO: TIntegerField;
    QsucursalDETALLE: TStringField;
    CDSBuscaCpbteFECHAVTA: TSQLTimeStampField;
    CDSBuscaCpbteTP: TStringField;
    CDSBuscaCpbteCL: TStringField;
    CDSBuscaCpbteLETRAFAC: TStringField;
    CDSBuscaCpbteSUCFAC: TStringField;
    CDSBuscaCpbteNUMEROFAC: TStringField;
    CDSBuscaCpbteTIPO_OPERACION_EXPO: TStringField;
    CDSBuscaCpbteDOC_ADUANERO: TStringField;
    CDSBuscaCpbteNRO_INTERNO: TStringField;
    CDSBuscaCpbteREFERENCIA_EXPO: TStringField;
    CDSBuscaCpbteADUANAORIGNE: TStringField;
    CDSBuscaCpbteADUANADESTINO: TStringField;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    procedure ComboClienteButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ListarExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure AceptarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure BuscarCpbteExecute(Sender: TObject);
    procedure dbgConsultaKeyPress(Sender: TObject; var Key: Char);
    procedure dbgConsultaTitleBtnClick(Sender: TObject; ACol: Integer; Field: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure ComboCpbteKeyPress(Sender: TObject; var Key: Char);
    procedure FormResize(Sender: TObject);
    procedure cbClientesClick(Sender: TObject);
  private
    { Private declarations }
    FClaseCpbte: STRING;
    FTipoCpbteElegido: STRING;
    Nro_Id: Integer;
  public
    { Public declarations }
    BuscadorIni        :TIniFile;
    TipoComprobante:String;
    Letra     : String;
    TipoCpbte : String;
    TipoCpbte1: String;
    TipoCpbte2: String;
    TipoCpbte3: String;
    Sucursal  : Integer;
  published
    PROPERTY ClaseCpbte: STRING read FClaseCpbte write FClaseCpbte;
    PROPERTY TipoCpbteElegido: STRING read FTipoCpbteElegido write FTipoCpbteElegido;
    PROPERTY Id_Rec: Integer read Nro_Id write Nro_Id;
  end;

var
  FormBuscaCpbteDesp: TFormBuscaCpbteDesp;

implementation

{$R *.dfm}

uses UDMain_FD, UBuscadorTipoCpbte;

procedure TFormBuscaCpbteDesp.AceptarExecute(Sender: TObject);
begin
  IF (CDSBuscaCpbteID_FC.AsString<>'')  THEN
    Id_Rec := CDSBuscaCpbteID_FC.Value
  else
    Id_Rec:=-1;
  ClaseCpbte:=ComboCpbte.Text;
  if CDSBuscaCpbteTP.AsString<>'' then
    begin
      TipoCpbteElegido:=CDSBuscaCpbteTP.Value;
      TipoCpbte       :=CDSBuscaCpbteTP.Value;
    end;

  Close;
end;

procedure TFormBuscaCpbteDesp.BuscarCpbteExecute(Sender: TObject);
begin
 if Not(Assigned(FormBuscadorTipoCpbte)) Then
    FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(self);
  FormBuscadorTipoCpbte.CV := 'V';
  FormBuscadorTipoCpbte.Sucursal     := Sucursal;
  FormBuscadorTipoCpbte.TipoCpbte1   := TipoCpbte1;
  FormBuscadorTipoCpbte.TipoCpbte2   := TipoCpbte2;
  FormBuscadorTipoCpbte.TipoCpbte3   := TipoCpbte3;

  FormBuscadorTipoCpbte.ShowModal;
  if FormBuscadorTipoCpbte.ModalResult=mrok Then
    begin
      Letra                     := FormBuscadorTipoCpbte.Letra;
      ComboCpbte.Text           := FormBuscadorTipoCpbte.ClaseCpbte;
      TipoCpbte                 := FormBuscadorTipoCpbte.TipoCpbte;
      ClaseCpbte                := FormBuscadorTipoCpbte.ClaseCpbte;
      edMuestraComprobante.Text := FormBuscadorTipoCpbte.Detalle;
      Sucursal                  := FormBuscadorTipoCpbte.Sucursal;
    END;

  Qsucursal.Close;
  Qsucursal.ParamByName('suc').Value:=Sucursal;
  Qsucursal.Open;
  Listar.Execute;
end;

procedure TFormBuscaCpbteDesp.CancelarExecute(Sender: TObject);
begin
  Id_Rec := -1;
  Close;
end;

procedure TFormBuscaCpbteDesp.cbClientesClick(Sender: TObject);
begin
  CDSBuscaCpbte.Filtered := False;
  CDSBuscaCpbte.Filter   := 'CODIGO= '+QuotedStr(Trim(ComboCliente.Text));
  CDSBuscaCpbte.Filtered := cbClientes.Checked;

end;

procedure TFormBuscaCpbteDesp.ComboClienteButtonClick(Sender: TObject);
var QTem:TFDQuery;
begin
  QTem            := TFDQuery.Create(nil);
  QTem.Connection := DMMain_FD.fdcGestion;
  CDSClientes.Close;
  CDSClientes.CommandText:='';
  CDSClientes.CommandText:='select Codigo,Nombre from Clientes order by Nombre';
  CDSClientes.Open;
  ComBuscador.Execute;
  if ComBuscador.rOk=True then
    begin
      ComboCliente.Text     := ComBuscador.Id;
      QTem.Open('select Nombre from Clientes where codigo='+''''+ComboCliente.Text+'''');
      dbeMuestraCliente.Text:=QTem.Fields[0].AsString;
    end;
  FreeAndNil(QTem);
  Listar.Execute;
end;

procedure TFormBuscaCpbteDesp.ComboCpbteKeyPress(Sender: TObject; var Key: Char);
begin
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      CDSTipoComprob.Close;
      CDSTipoComprob.Params.ParamByName('suc').Value:=Sucursal;
      CDSTipoComprob.Params.ParamByName('Compra_venta').Value := 'V';
//  esto es un error??    CDSTipoComprob.Params.ParamByName('tipo1').Value:= ComboCpbte.Text;
      CDSTipoComprob.Params.ParamByName('tipo1').Value:= TipoCpbte;
      CDSTipoComprob.Params.ParamByName('tipo2').Value:= '';
      CDSTipoComprob.Params.ParamByName('tipo3').Value:= '';
      CDSTipoComprob.Open;

      edLetra.SetFocus;

    END
  else
    IF Key = #27 THEN
      Cancelar.Execute;

  Listar.Execute;
end;

procedure TFormBuscaCpbteDesp.dbgConsultaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 Then Aceptar.Execute
  else
  if Key=#27 Then Cancelar.Execute;

end;

procedure TFormBuscaCpbteDesp.dbgConsultaTitleBtnClick(Sender: TObject; ACol: Integer; Field: TField);
var campo:string;
begin
  try
    Campo := Field.FieldName;
    with dbgConsulta.DataSource.DataSet as TClientDataSet do
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


procedure TFormBuscaCpbteDesp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_fd.UsuarioActivo+'_buscadorDesp.ini');
  //*************************************************************
  BuscadorIni.WriteString('comprobante', 'Letra', Letra);
  BuscadorIni.WriteString('comprobante', 'Tipo', TipoCpbte);
  BuscadorIni.WriteString('comprobante', 'Clase', ClaseCpbte);
  BuscadorIni.WriteInteger('comprobante', 'Sucursal', Sucursal);
  BuscadorIni.WriteString('comprobante', 'Denominacion', edMuestraComprobante.Text );
  BuscadorIni.WriteBool('comprobante', 'Filtra', cbClientes.Checked);

  IF cbClientes.Checked=False Then
    begin
      ComboCliente.Text     :='';
      dbeMuestraCliente.Text:='';
    end;
  BuscadorIni.WriteString('comprobante', 'Cliente', ComboCliente.Text);
  BuscadorIni.WriteString('comprobante', 'MuestraCliente',dbeMuestraCliente.Text);
 // BuscadorIni.WriteString('TipoCpbte', 'Tipo', ComboCpbte.Text);
  BuscadorIni.Free;

  Action := caFree;
end;

procedure TFormBuscaCpbteDesp.FormCreate(Sender: TObject);
begin
  AutoSize    := False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;

  BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_fd.UsuarioActivo+'_buscadorDesp.ini');
  //*************************************************************
  Letra                     := BuscadorIni.ReadString('comprobante', 'Letra', '');
  TipoCpbte                 := BuscadorIni.ReadString('comprobante', 'Tipo', '');
  ClaseCpbte                := BuscadorIni.ReadString('comprobante', 'Clase', '');
  Sucursal                  := BuscadorIni.ReadInteger('comprobante', 'Sucursal', 0);
  edMuestraComprobante.Text := BuscadorIni.ReadString('comprobante', 'Denominacion', '');
  cbClientes.Checked        := BuscadorIni.ReadBool('comprobante', 'Filtra', False);
  ComboCliente.Text         := BuscadorIni.ReadString('comprobante', 'Cliente', '');
  dbeMuestraCliente.Text    := BuscadorIni.ReadString('comprobante', 'MuestraCliente','');
  BuscadorIni.Free;
  Listar.Execute;
end;

procedure TFormBuscaCpbteDesp.FormDestroy(Sender: TObject);
begin
  FormBuscaCpbteDesp := NIL;
end;

procedure TFormBuscaCpbteDesp.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 if key=VK_ESCAPE then
    Cancelar.Execute;
end;

procedure TFormBuscaCpbteDesp.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#27 then
    Cancelar.Execute;
end;

procedure TFormBuscaCpbteDesp.FormResize(Sender: TObject);
begin
  if FormBuscaCpbteDesp<>nil then
    if FormBuscaCpbteDesp.Width>1063 then
      FormBuscaCpbteDesp.Width:=1063;
end;

procedure TFormBuscaCpbteDesp.FormShow(Sender: TObject);
VAR A:Char;
BEGIN
   pnCliente.Visible:= True;
   cbClientes.Caption := 'Filtra por Clientes';
    begin
      a:=#13;
      if TipoCpbte1<>TipoCpbte then
        begin
          TipoCpbte:=TipoCpbte1;
          QBuscarClaseCpbte.Close;
          QBuscarClaseCpbte.ParamByName('tipo').Value         := TipoCpbte1;
          QBuscarClaseCpbte.ParamByName('sucursal').Value     := Sucursal;
          QBuscarClaseCpbte.ParamByName('compra_venta').Value := 'V';
          QBuscarClaseCpbte.Open;
          Letra                    :=QBuscarClaseCpbteLETRA.Value;
          ComboCpbte.Text          :=QBuscarClaseCpbteCLASE.Value;
          edMuestraComprobante.Text:=QBuscarClaseCpbteNOMBRE.Value;
          QBuscarClaseCpbte.Close;
        end
      else
        begin
          ComboCpbte.Text := ClaseCpbte;
          edLetra.Text    := Letra;
        end;
      ComboCpbteKeyPress(Sender,a);
      //Listar.Execute;
    end;
  Qsucursal.Close;
  Qsucursal.ParamByName('suc').Value:=Sucursal;
  Qsucursal.Open;
  BringToFront;
end;

procedure TFormBuscaCpbteDesp.ListarExecute(Sender: TObject);
begin
  CDSBuscaCpbte.Close;
  CDSBuscaCpbte.IndexDefs.Clear;
  CDSBuscaCpbte.IndexFieldNames:='';
  CDSBuscaCpbte.IndexName   :='';
  edLetra.Text              := '';
  edSufijo.Text             := '';
  edNumero.Text             := '';
  CDSBuscaCpbte.CommandText := '';
  //Facturas Ventas
  CDSBuscaCpbte.CommandText :=
      'select f.FechaVta ,f.tipocpbte as TP,f.clasecpbte as CL, f.letrafac,f.sucfac,f.numerofac,f.Codigo, f.Nombre,'+
      '       f.Total,f.tipo_operacion_expo, f.doc_aduanero,f.nro_interno,f.referencia_expo ,'+
      '       aori.aduana as AduanaOrigne,ades.pais as AduanaDestino,f.nrocpbte,f.id_fc , f.anulado from FcVtaCab f '+
      '  left join paises ades on ades.id=f.id_destino '+
      '  left join aduanas aori on aori.id=f.id_aduana '+
      'where Clasecpbte=' + '''' + ComboCpbte.text + '''' + ' and tipocpbte = '+''''+TipoCpbte+'''' +' and sucursal ='+ IntToStr(sucursal) +' and letrafac = '+''''+letra+'''' +
      '  order by f.fechavta desc, f.tipocpbte asc,f.clasecpbte, f.nrocpbte desc ';


  BEGIN
    CDSBuscaCpbte.Filtered := False;
    CDSBuscaCpbte.Filter   := 'CODIGO= '+QuotedStr(Trim(ComboCliente.Text));
    CDSBuscaCpbte.Filtered := cbClientes.Checked;
  END;
  CDSBuscaCpbte.Open;

  if FormBuscaCpbteDesp<>nil then
    dbgConsulta.SetFocus;
end;

end.
