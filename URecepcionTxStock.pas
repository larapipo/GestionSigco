unit URecepcionTxStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvExControls, JvGradient, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, DBCtrls, ExtCtrls, ActnList, DB, DBClient,IniFiles,
  JvDBLookup, Provider, System.Actions;

type
  TFormRecepcionTxStock = class(TForm)
    pnPrincipal: TPanel;
    lbArchivos: TListBox;
    dbgDet: TJvDBGrid;
    Panel1: TPanel;
    btLeer: TBitBtn;
    btCancel: TBitBtn;
    btOk: TBitBtn;
    CDSCab: TClientDataSet;
    DSCab: TDataSource;
    DSDet: TDataSource;
    CDSDet: TClientDataSet;
    ActionList1: TActionList;
    LeerArchivos: TAction;
    Borrar: TAction;
    CDSSubDet: TClientDataSet;
    CDSDepositos: TClientDataSet;
    DSPDepositos: TDataSetProvider;
    CDSDepositosID: TIntegerField;
    CDSDepositosNOMBRE: TStringField;
    CDSDepositosSUCURSAL: TIntegerField;
    CDSDepositosCENTRALIZA_STOCK: TStringField;
    DSDepositos: TDataSource;
    chTodos: TCheckBox;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel3: TPanel;
    Label3: TLabel;
    dbcDepositos: TJvDBLookupCombo;
    SpeedButton1: TSpeedButton;
    DBText1: TDBText;
    Splitter1: TSplitter;
    procedure BorrarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LeerArchivosExecute(Sender: TObject);
    procedure lbArchivosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbArchivosClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
  private
    { Private declarations }
    FCDSCabecera:TClientDataSet;
    FCDSDetalle :TClientDataSet;
    FCDSSubDet  :TClientDataSet;
    FNombreArchivoCab,
    FNombreArchivoDet,
    FNombreArchivoSub:String;
    FDirectorio:String;
  public
    { Public declarations }
    ArchivoIni:TIniFile;
    sDirectorio:String;
  published
    property CDSCabecera   :TClientDataSet read FCDSCabecera write FCDSCabecera;
    property CDSDetalle    :TClientDataSet read FCDSDetalle write FCDSDetalle;
    property CDSSubDetalle :TClientDataSet read FCDSSubDet write FCDSSubDet;

    property Directorio :string read FDirectorio write FDirectorio;
    property NombreArchivoCab:String read FNombreArchivoCab write FNombreArchivoCab;
    property NombreArchivoDet:String read FNombreArchivoDet write FNombreArchivoDet;
    property NombreArchivoSub:String read FNombreArchivoSub write FNombreArchivoSub;

  end;

var
  FormRecepcionTxStock: TFormRecepcionTxStock;

implementation

uses UDMain_FD,DMBuscadoresForm;
{$R *.dfm}

procedure TFormRecepcionTxStock.BorrarExecute(Sender: TObject);
var cab,det,sub:string;
begin
  if MessageDlg('Borrar Movimiento de Transferencia?',TMsgDlgType.mtConfirmation,mbYesNo,0,mbYes)=mrYes then
    begin
      if lbArchivos.Items.Count>0 then
        begin
          Cab:=sDirectorio+lbArchivos.Items[lbArchivos.ItemIndex];
          Det:=StringReplace(cab,'Cab','Det',[rfReplaceAll]);
          Sub:=StringReplace(cab,'Cab','Sub',[rfReplaceAll]);

          Det:=StringReplace(det,'XML','XM_',[rfReplaceAll]);
          Sub:=StringReplace(sub,'XML','XM_',[rfReplaceAll]);

    //      Det:=Copy(Det,1,Pos('-',Cab)-1)+'.xm_';
    //      Sub:=Copy(Sub,1,Pos('-',Cab)-1)+'.xm_';

          DeleteFile(cab);
          DeleteFile(det);
          DeleteFile(Sub);

          lbArchivos.DeleteSelected;
          lbArchivos.Clear;
          LeerArchivos.Execute;
          if lbArchivos.Count>0 Then
            begin
             lbArchivos.ItemIndex:=0;
             lbArchivosClick(Sender);
            end
          else
            begin
              CDSDet.EmptyDataSet;
              dbgDet.Refresh;
            end;

        end;
    end;
end;

procedure TFormRecepcionTxStock.btCancelClick(Sender: TObject);
begin
  FNombreArchivoCab:='';
  FNombreArchivoDet:='';
  FNombreArchivoSub:='';
  ModalResult:=mrCancel;
end;

procedure TFormRecepcionTxStock.btOkClick(Sender: TObject);
begin
  FCDSCabecera:=CDSCab;
  FCDSDetalle :=CDSDet;
  FCDSSubDet  :=CDSSubDet;
  if (lbArchivos.Count<=0) then
    begin
      FNombreArchivoCab:='';
      FNombreArchivoDet:='';
      FNombreArchivoSub:='';
      ModalResult:=mrCancel;
    end;
end;

procedure TFormRecepcionTxStock.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  ArchivoIni             := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.NombreIni);
  CDSDepositos.Open;
  dbcDepositos.KeyValue  := ArchivoIni.ReadInteger('Deposito', 'Deposito', -1);
  chTodos.Enabled        := ArchivoIni.ReadString('stock', 'SucursalAdmin','-1') =
                            ArchivoIni.ReadString('Sucursal', 'Sucursal', '0'); ;
  chTodos.Checked        := ArchivoIni.ReadString('stock', 'SucursalAdmin','-1') =
                            ArchivoIni.ReadString('Sucursal', 'Sucursal', '0'); ;

  ArchivoIni.Free;

end;

procedure TFormRecepcionTxStock.FormShow(Sender: TObject);
begin
  lbArchivos.Clear;
  LeerArchivos.Execute;
  if lbArchivos.Items.Count>0 then
    begin
      lbArchivos.SetFocus;
      //lbArchivos.ItemIndex:=0;
      lbArchivos.ItemIndex:=0;
      lbArchivosClick(Sender);
    end;
end;

procedure TFormRecepcionTxStock.lbArchivosClick(Sender: TObject);
var Cab,Det,Sub:String;
i:integer;
begin
  FNombreArchivoCab:='';
  FNombreArchivoDet:='';
  FNombreArchivoSub:='';
  if lbArchivos.Count>0 then
    begin
      if lbArchivos.ItemIndex<0 then
        lbArchivos.ItemIndex:=0;

      Cab:=sDirectorio+lbArchivos.Items[lbArchivos.ItemIndex];
      Det:=StringReplace(cab,'Cab','Det',[rfReplaceAll]);
      Sub:=StringReplace(cab,'Cab','Sub',[rfReplaceAll]);
      delete(Det,Length(Det),1);
      Det:=Det+'_';

      delete(Sub,Length(Det),1);
      Sub:=Sub+'_';

      CDSCab.LoadFromFile(Cab);
      CDSDet.LoadFromFile(Det);
      CDSSubDet.LoadFromFile(Sub);

      FNombreArchivoCab:=Cab;
      FNombreArchivoDet:=Det;
      FNombreArchivoSub:=Sub;

      for I := 0 to dbgDet.Columns.Count - 1 do
        begin
          dbgDet.Columns.Items[i].Visible:=False;
          if dbgDet.Columns.Items[i].FieldName='CODIGO' then
            begin
              dbgDet.Columns.Items[i].Visible:=True;
              dbgDet.Columns.Items[i].Title.Caption:='Codigo';
              dbgDet.Columns.Items[i].Title.Alignment:=taCenter;
            end;
          if dbgDet.Columns.Items[i].FieldName='DETALLE' then
            begin
              dbgDet.Columns.Items[i].Visible:=True;
              dbgDet.Columns.Items[i].Title.Caption:='Nombre';
              dbgDet.Columns.Items[i].Title.Alignment:=taCenter;
            end;
          if dbgDet.Columns.Items[i].FieldName='CANTIDAD' then
            begin
              dbgDet.Columns.Items[i].Visible:=True;
              dbgDet.Columns.Items[i].Title.Caption :='Cant.';
              dbgDet.Columns.Items[i].Title.Alignment:=taCenter;
              TNumericField(dbgDet.Fields[i]).DisplayFormat := ',0.00';
              dbgdet.Columns.Items[i].Width :=90;
            end;
        end;
    end
  else
    begin
    //  if CDSDet.RecordCount>0 then
      dbgDet.Refresh;
    end;
end;

procedure TFormRecepcionTxStock.lbArchivosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=VK_DELETE then
    Borrar.Execute;
end;

procedure TFormRecepcionTxStock.LeerArchivosExecute(Sender: TObject);
var
  Busqueda: TSearchRec;
  iResultado: Integer;
  aux:string;
begin
  // Nos aseguramos que termine en contrabarra
//  CDSDet.EmptyDataSet;
  if FDirectorio<>'' then
    begin
      sDirectorio := FDirectorio+'\';
      aux:=sDirectorio + '*-a-['+dbcDepositos.LookupSource.DataSet.FieldByName('id').AsString+']'+'*.xml';
      if chTodos.Checked then
        aux:=sDirectorio + '*.xml';

      dbgDet.Refresh;  
      lbArchivos.Clear;
      iResultado :=  FindFirst( aux, faAnyFile, Busqueda );
      while iResultado = 0 do
        begin
          // ¿Ha encontrado un archivo y no es un directorio?
          if ( Busqueda.Attr and faArchive = faArchive ) and
             ( Busqueda.Attr and faDirectory <> faDirectory ) then
            lbArchivos.Items.Add(Busqueda.Name);
          iResultado := FindNext( Busqueda );
        end;

      FindClose( Busqueda );
      lbArchivos.OnClick(sender);
    end;
end;

end.
