unit ULectorColectoraTx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, ComCtrls, DB, SqlExpr, JvComponentBase,
  JvFormPlacement, ImgList, ActnList, JvLabel, JvDBControls,
  JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  OnlineDll, OnlineHandle, Provider, DBClient,StrUtils, JvAppStorage,
  JvAppIniStorage, System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, System.ImageList;

type
  TFormLecturaColectorTX = class(TFormABMBase)
    lwDatos: TListView;
    BitBtn1: TBitBtn;
    lbStatus: TLabel;
    pbImportado: TProgressBar;
    LeerTxt: TAction;
    Button1: TButton;
    Label1: TLabel;
    GenerarTx: TAction;
    CDSDepositos: TClientDataSet;
    DSPDepositos: TDataSetProvider;
    CDSDepositosID: TIntegerField;
    CDSDepositosNOMBRE: TStringField;
    lbDepositos: TListBox;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    DSPStock: TDataSetProvider;
    CDSStock: TClientDataSet;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    Button2: TButton;
    Label2: TLabel;
    procedure DSBaseStateChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure LeerTxtExecute(Sender: TObject);
    procedure lwDatosColumnClick(Sender: TObject; Column: TListColumn);
    procedure lwDatosCompare(Sender: TObject; Item1, Item2: TListItem;
      Data: Integer; var Compare: Integer);
    procedure GenerarTxExecute(Sender: TObject);
  private
    { Private declarations }
  public
     FileNameColectora: string; //nombre del archivo a bajar de la colectora
     IsConnected: Boolean;
     ComPort, BaudRate: word;
     ArchiTxt:TextFile;
     Codigo,Cantidad,Deposito,NomDeposito,CodigoArticulo:String;
     ColumnToSort:integer;
     ListaDepositos:TStringList;
     procedure ArmarLista;
     procedure Desconectar;
     function BorraArchivo(ArchivoStr: string): boolean;
     procedure BajarArchivo;
     function ProgramaCorriendo: boolean;
     function ExisteArchivo(ArchivoStr: string): boolean;
     procedure Conectar;
     function Traer_Articulo(codigo:string):String;

    { Public declarations }

  end;

var
  FormLecturaColectorTX: TFormLecturaColectorTX;

implementation

uses UBuscadorTipoCpbte, UTransferencia,DMBuscadoresForm,
  UMuestraListaCodBarra,UDMain_FD;
{$R *.dfm}

function TFormLecturaColectorTX.Traer_Articulo(Codigo:String):String;
var CodTxt,CodigoPlu,S:String;
Aux:String;
CantPlu:Extended;
begin
  DMBuscadores.QBuscaStock.Close;
  CodTxt:=copy(Codigo,1,8);
  if DMMain_FD.JustificaCodigo='D' Then
    CodTxt:=Copy(DMMain_FD.CharCodigo, 1, 8 - Length(CodTxt)) + CodTxt
  else
    if DMMain_FD.JustificaCodigo='I' Then
       CodTxt:=CodTxt+Copy(DMMain_FD.CharCodigo, 1, 8 - Length(CodTxt));
  DMBuscadores.QBuscaStock.ParamByName('Codigo').Value:=CodTxt;
  DMbuscadores.QBuscaStock.Open;

  if Trim(DMBuscadores.QbuscaStockCODIGO_STK.AsString)='' then
    begin
      DMMain_FD.CDSCodigoBarra.Close;
      DMMain_FD.CDSCodigoBarra.Params.ParamByName('CodigoBarra').AsString:=Codigo;
      DMMain_FD.CDSCodigoBarra.Open;
      If DMMain_FD.CDSCodigoBarra.Fields[0].AsString='' Then
        begin
          DMMain_FD.CDSCodigoBarra.Close;
          DMMain_FD.CDSCodigoBarra.Params.ParamByName('CodigoBarra').AsString:=Copy(Codigo,1,length(Trim(Codigo))-1);
          DMMain_FD.CDSCodigoBarra.Open;
        end;
      If DMMain_FD.CDSCodigoBarra.Fields[0].AsString='' Then
        begin
          // BUsco por el serie ...
          DMBuscadores.QConsultaCodigoSerie.Close;
          DMBuscadores.QConsultaCodigoSerie.ParamByName('CodigoSerie').AsString:=UpperCase(Codigo);
          DMBuscadores.QConsultaCodigoSerie.Open;
          If DMBuscadores.QConsultaCodigoSerieCODIGO_STK.AsString='' Then
            begin
              // Sender.AsString:=Text;
              DMMain_FD.EncontroCodigoBarra:=False;
              // **** BUsco por Alternativo **************************...
              DMBuscadores.QConsultaPorCodAlt.Close;
              DMBuscadores.QConsultaPorCodAlt.ParamByName('Codigo').AsString:=Trim(Codigo);
              DMBuscadores.QConsultaPorCodAlt.Open;
              If DMBuscadores.QConsultaPorCodAltCODIGO_STK.AsString='' Then
                begin
                  CodigoPlu:=Codigo;
                  DMMain_FD.EncontroCodigoBarra:=False;
   // *********** Busca PLU Agregado para los chinos****************************************
                  if Length(Trim(CodigoPlu))>6 then
                    Aux:= Copy(Trim(CodigoPlu),2,5)
                  else
                    Aux:='';
                  if Aux<>'' then
                    begin
                      Aux:= '00000000'+Aux;
                      Aux:= AnsiRightStr(Aux,8);
                      DMBuscadores.QBuscaStock.Close;
                      DMBuscadores.QBuscaStock.Params.ParamByName('codigo').AsString := Aux;
                      DMBuscadores.QBuscaStock.Open;
                      if Not(DMBuscadores.QBuscaStock.IsEmpty) then
                        begin
                          //DesdePLU := True;
                          CodTxt   := DMBuscadores.QBuscaStock.Fields[0].AsString;
                          Aux      := Copy(Trim(CodigoPlu),7,6);
                          if Aux='' then Aux:='0';
                          Aux:=Copy(Aux,1,4)+'.'+Copy(Aux,5,2);
                          CantPlu:= StrToInt(Aux)*0.01;
                          if CantPlu>0 Then Cantidad:=Aux;

                        end
                      else
                        begin
                          CodTxt:=codigo;
                          DMMain_FD.EncontroCodigoBarra:=False;
                       end
                    end
                  else
                    begin
                      CodTxt:=codigo;
                      DMMain_FD.EncontroCodigoBarra:=False;
                    end;
   // ************************************************
                end
              else
                begin
                  CodTxt:=DMBuscadores.QConsultaPorCodAltCODIGO_STK.AsString;
                  DMMain_FD.EncontroCodigoBarra:=False;
                end;
  //***************************************************
            end
          else
            begin
              CodTxt:=DMBuscadores.QConsultaCodigoSerieCODIGO_STK.AsString;
              DMMain_FD.EncontroCodigoBarra:=False;
            end;
          DMBuscadores.QConsultaCodigoSerie.Close;
        end
      else
        begin
          if DMMain_FD.CDSCodigoBarra.RecordCount>1 Then
            begin
              if Not(Assigned(FormMuestraListaCodigoBarra)) Then
                FormMuestraListaCodigoBarra:=TFormMuestraListaCodigoBarra.Create(application);
              FormMuestraListaCodigoBarra.CodigoBarra:=UpperCase(Text);
              FormMuestraListaCodigoBarra.ShowModal;
              CodTxt:=FormMuestraListaCodigoBarra.Codigo;
            end
          else
            CodTxt:=DMMain_FD.CDSCodigoBarra.Fields[0].AsString;
          DMMain_FD.EncontroCodigoBarra:=True;
        end;
      DMMain_FD.CDSCodigoBarra.Close;
    end
  else
    CodTxt:=DMBuscadores.QbuscaStockCODIGO_STK.Value;
  DMBuscadores.QbuscaStock.Close;

  S:=CodTxt;
  if DMMain_FD.JustificaCodigo='D' Then
    S:=Copy(DMMain_FD.CharCodigo, 1, 8 - Length(S)) + S
  else
    if DMMain_FD.JustificaCodigo='I' Then
  S:=S+Copy(DMMain_FD.CharCodigo, 1, 8 - Length(S));

  if Length(s)>8 then
    S:=Copy(s,1,8);

  // IF AsignarArticulo(s) = False THEN
  begin
    CDSStock.Close;
    CDSStock.Params.ParamByName('Codigo').Value := Trim(S);
    CDSStock.Open;
    IF NOT (CDSStock.IsEmpty)  THEN
      begin
        CodigoArticulo:=Trim(s);
        Result:=CDSStockDetalle_Stk.AsString;
      end
    else
      begin
        CodigoArticulo:='';
        Result:='';
      end;
  end;
end;

procedure TFormLecturaColectorTX.ArmarLista;
var Lista:TListItem;
 i:integer;
 Detalle:String;
begin
  Lista:=lwDatos.Items.Add;
  Lista.Caption   :=Codigo;
  detalle:=Traer_Articulo(Codigo);
  Lista.SubItems.Add(Detalle);
  Lista.SubItems.Add(Cantidad);
  Lista.SubItems.Add(Deposito);
  Lista.SubItems.Add(NomDeposito);
  Lista.SubItems.Add(CodigoArticulo);

  ListaDepositos.Sort;
  if Not(ListaDepositos.Find(Deposito+'-'+nomdeposito,i)) Then
    ListaDepositos.Add(Deposito+'-'+nomdeposito);
end;



procedure TFormLecturaColectorTX.Desconectar;
begin
  if(IsConnected=True ) then
   begin
    Online_Disconnect(pCommData);
    IsConnected:=False;
    //Application.MessageBox('0', 'Result', MB_OK);
   end
end;

function TFormLecturaColectorTX.BorraArchivo(ArchivoStr: string): boolean;
var
  Res:   Word;
  NameStr:  String;
begin
  if(IsConnected)then begin
    NameStr := ArchivoStr;
    Res := Online_ESC_E(pCommData, Word('A'), @NameStr[1], Length(NameStr));
    Result := Res = CmdYes;
  end;
end;



procedure TFormLecturaColectorTX.BajarArchivo;
var
  Result:   Word;
  PCNameStr,
  NameStr:  String;
  sSize, lSize: longint;
  Len: byte;
begin
  if(IsConnected)then begin

    PCNameStr := 'DATOS.TXT';
    NameStr   := 'DATOS.TXT';//FileNameColectora;
    Result := Online_UpLoad(pCommData, Word('A'), @PCNameStr[1], @NameStr[1], 0, 3);

    repeat
      Result := Online_StLoad(pCommData, 0, sSize, lSize);

      With pbImportado do begin
        Max := sSize;
        Position := lSize;
        Refresh;
      end;

    until Result >= 2;

    // me asegura de cortar la transmision
    Result := Online_StLoad(pCommData, 1, sSize, lSize);

  end;

end;


function TFormLecturaColectorTX.ExisteArchivo(ArchivoStr: string): boolean;
var
  Res:   Word;
  NameStr:  String;
  Len: byte;
begin
  // Chequeo que el archivo exista

  NameStr := ArchivoStr;
  Len := Length(NameStr);
  Res := Online_ESC_J(pCommData, Word('A'), @NameStr[1], Len);

  Result := Res = cmdYes;
end;

procedure TFormLecturaColectorTX.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
    Online_Destroy(pCommData);
  Action:=cafree;
end;

procedure TFormLecturaColectorTX.FormCreate(Sender: TObject);
begin
  inherited;
  pnPrincipal.Enabled:=True;
  ComPort:=1;
  BaudRate:=38400;
  IsConnected := False;
  pCommData := Online_Create;

end;

procedure TFormLecturaColectorTX.FormDestroy(Sender: TObject);
begin
  inherited;
  FormLecturaColectorTX:=nil;
end;

procedure TFormLecturaColectorTX.FormShow(Sender: TObject);
begin
  //inherited;

end;

procedure TFormLecturaColectorTX.GenerarTxExecute(Sender: TObject);
Var SucursalComprobante,IDComprobante:integer;
  I: Integer;
CodigoDepo:String;
begin
  inherited;
  if Not(Assigned(FormBuscadorTipoCpbte)) then
    FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
  FormBuscadorTipoCpbte.TipoCpbte1:='TX';
  FormBuscadorTipoCpbte.TipoCpbte2:='';
  FormBuscadorTipoCpbte.TipoCpbte3:='';
  FormBuscadorTipoCpbte.CV        :='V';
  FormBuscadorTipoCpbte.Sucursal  := SucursalPorDefecto;
  FormBuscadorTipoCpbte.DiscriminaIVA:= '*';
  FormBuscadorTipoCpbte.ShowModal;
  SucursalComprobante:=FormBuscadorTipoCpbte.Sucursal;
  IDComprobante      :=FormBuscadorTipoCpbte.Id_Cpbte;
  if lbDepositos.ItemIndex>=0 then
    CodigoDepo:=lbdepositos.Items[lbDepositos.ItemIndex]
  else
    CodigoDepo:=lbdepositos.Items[0];

  CodigoDepo:=Copy(CodigoDepo,1,pos('-',CodigoDepo)-1);
  if FormBuscadorTipoCpbte.ModalResult=mrOk Then
    begin
      if Not(Assigned(FormTransferencias)) then
        FormTransferencias:=TFormTransferencias.Create(Self);
      FormTransferencias.Show;
      FormTransferencias.Agregar.Execute;

      FormTransferencias.CDSTranCabDEPOSITO_DESTINOSetText(FormTransferencias.CDSTranCabDEPOSITO_DESTINO,CodigoDepo);
      for I := 0 to lwDatos.Items.Count - 1 do
        begin

          if ((Trim(lwDatos.Items[i].SubItems[4]))<>'') and (Trim(lwDatos.Items[i].SubItems[2])=CodigoDepo) then
            begin
              FormTransferencias.CDSTranDet.Append;
              FormTransferencias.CDSTranDetCODIGOSetText(FormTransferencias.CDSTranDetCODIGO,lwDatos.Items[i].SubItems[4]);
              FormTransferencias.CDSTranDetCANTIDADSetText(FormTransferencias.CDSTranDetCANTIDAD,(Trim(lwDatos.Items[i].SubItems[1])));
              FormTransferencias.CDSTranDet.Post;
            end;
        end;
    end;
end;

procedure TFormLecturaColectorTX.LeerTxtExecute(Sender: TObject);
var s:String;
begin
  lwDatos.Clear;
  ListaDepositos:=TStringList.Create;
  FileNameColectora:='DATOS.TXT';
  AssignFile(ArchiTxt, FileNameColectora);
  Reset(ArchiTxt);
  while Not Eof(ArchiTxt) do
     begin
       ReadLn(ArchiTxt,s);
       Codigo  := Copy(s,1,pos(',',s)-1);
       s:=copy(s,pos(',',s)+1,100);
       s:=Trim(s);
       Cantidad:=Copy(s,1,pos(',',s)-1);
       s:=copy(s,pos(',',s)+1,100);
       s:=Trim(s);
       deposito:=s;
       CDSDepositos.Close;
       CDSDepositos.Params.ParamByName('id').Value:=StrToInt(Deposito);
       CDSDepositos.Open;
       NomDeposito:=CDSDepositosNOMBRE.Value;
       ArmarLista;
     end;
  
   lbdepositos.Items:=ListaDepositos;
   lbdepositos.Items[0];
end;

procedure TFormLecturaColectorTX.lwDatosColumnClick(Sender: TObject;
  Column: TListColumn);

begin
  inherited;
   ColumnToSort := Column.Index;
  (Sender as TCustomListView).AlphaSort;
end;

function TFormLecturaColectorTX.ProgramaCorriendo: boolean;
var
  Res:   Word;
  Len: byte;
  NameStr:  String[255];
begin
  if(IsConnected)then begin

    Res := Online_ESC_I(pCommData, Word('A'), @NameStr[1], len);

    (*
    case Res of
      CmdNone: ShowMessage('Ningun programa corriendo !!!');
      CmdOk:   begin
                 SetLength(NameStr, len);
                 ShowMessage('Ejecutando: ' + NameStr);
               end;
      else
        ShowMessage('Error: ' + IntToStr(Result));
    end;
    *)

    Result := Res = CmdOk;

  end;
end;

procedure TFormLecturaColectorTX.Conectar;
var
  Result: Word;
begin
  if(IsConnected=False) then
   begin
    Result := Online_SetupEx(pCommData, ComPort, Word('A'), Word('1'), Word('N'));
    if(Result<>0) then
    Result := Online_Connect(pCommData);
    IsConnected := Result<>0;
    if not IsConnected then
      MessageDlg('Error nro: ' + IntToStr(Result) + ' al intentar abrir COM ' + IntToStr(ComPort) + '.',
                 mtError, [mbOk], 0);
   end
end;


procedure TFormLecturaColectorTX.BitBtn1Click(Sender: TObject);
var
  ImporStr, ErrStr: TStringList;
  P, j, ImporCant, Err: integer;
  ArtiCod,S: string;
begin

  FileNameColectora := 'DATOS.TXT';
  ListaDepositos.Clear;
  lbStatus.Caption := 'Conectando...';
  lbStatus.Refresh;
  Conectar;
  if isConnected then
    begin
      if not ProgramaCorriendo then
        begin
           // Hago un retardo para darle tiempo a encender si estaba apagada
          Sleep(3000);
          if ExisteArchivo(FileNameColectora) then
            begin
              ImporStr := TStringlist.Create;
              ErrStr   := TStringlist.Create;
              //ImporStr.SaveToFile(FileName);  // Borro archivo anterior
              Screen.Cursor := crHourGlass;
              lbStatus.Caption := 'Transfiriendo Datos...';
              lbStatus.Refresh;
              BajarArchivo;
              // Levanto el archivo
              Screen.Cursor := crDefault;
              //BorrarArchivo;
              if not BorraArchivo(FileNameColectora) then
                MessageDlg('No fue posible borrar el archivo de la colectora.'#13#13 +
                           'Deberá ejecutar la opcpción <BORRAR TODO> en la colectora' +
                           'antes de continuar tomando datos para una planilla nueva.',mtError, [mbOk], 0);
                ModalResult := mrOk;

              LeerTxt.Execute;
              
            end
          else
            MessageDlg('El archivo a transferir está vacío. Tome los datos y vuelva a intentar.',
                       mtWarning, [mbOk], 0);
        end
      else
        MessageDlg('No es posible transferir ' + FileNameColectora + '.'#13 + 'El archivo no existe.',
                   mtError, [mbOk], 0)

    end
      else
        MessageDlg('Debe salir del programa de la colectora antes de transferir datos..',
                   mtError, [mbOk], 0);

  Desconectar;

  lbStatus.Caption := '';
  lbStatus.Refresh;
  pbImportado.Position := 0;

  Screen.Cursor := crDefault;

end;

procedure TFormLecturaColectorTX.DSBaseStateChange(Sender: TObject);
begin
 // inherited;

end;

procedure TFormLecturaColectorTX.lwDatosCompare(Sender: TObject; Item1,
  Item2: TListItem; Data: Integer; var Compare: Integer);
var
  ix: Integer;
begin
  if ColumnToSort = 0 then
    Compare := CompareText(Item1.Caption,Item2.Caption)
  else begin
   ix := ColumnToSort - 1;
   Compare := CompareText(Item1.SubItems[ix],Item2.SubItems[ix]);
  end;
end;

end.
