unit UCambioPrecioExpress;

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
  AdvCombo, AdvDBComboBox, Vcl.Grids, Vcl.DBGrids, JvDBLookup,System.StrUtils;

type
  TFormCambioPrecioExpres = class(TFormABMBase)
    pnCabecera: TPanel;
    Label1: TLabel;
    QStock: TFDQuery;
    dbgStock: TDBGrid;
    mStock: TFDMemTable;
    mStockCODIGO: TStringField;
    mStockDETALLE: TStringField;
    mStockPRECIO: TFloatField;
    DSStock: TDataSource;
    QLista: TFDQuery;
    DSLista: TDataSource;
    QListaID: TIntegerField;
    QListaNOMBRE: TStringField;
    dbcListas: TJvDBLookupCombo;
    Label4: TLabel;
    QStockDETALLE_STK: TStringField;
    QStockPRECIO: TFloatField;
    QStockCODIGO_STK: TStringField;
    mStockIVA: TFloatField;
    QStockTASA: TFloatField;
    QStockFIJACION_PRECIO_GRAVADO: TFloatField;
    mStockPGRAVADO: TFloatField;
    spActualiza: TFDStoredProc;
    ActualizaPrecio: TAction;
    ToolButton1: TToolButton;
    btImportar: TBitBtn;
    Panel2: TPanel;
    procedure mStockCODIGOSetText(Sender: TField; const Text: string);
    procedure FormCreate(Sender: TObject);
    procedure dbgStockKeyPress(Sender: TObject; var Key: Char);
    procedure ActualizaPrecioExecute(Sender: TObject);
    procedure btImportarClick(Sender: TObject);
    procedure mStockAfterInsert(DataSet: TDataSet);
    procedure dbgStockColEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function AsignarArticulo(Codigo:String):Boolean;
  end;

var
  FormCambioPrecioExpres: TFormCambioPrecioExpres;

implementation

{$R *.dfm}

uses UDMain_FD, DMBuscadoresForm, UMuestraListaCodBarra, UBuscadorArticulos;

procedure TFormCambioPrecioExpres.ActualizaPrecioExecute(Sender: TObject);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
    try
      spActualiza.Close;
      spActualiza.ParamByName('codigo').AsString := mStockCODIGO.Value;
      spActualiza.ParamByName('costo').Value     := mStockPGRAVADO.Value;
      spActualiza.ParamByName('precio').Value    := mStockPRECIO.Value/(1+(mStockIVA.Value*0.01));
      spActualiza.ParamByName('lista').Value     := dbcListas.KeyValue;//   StrToInt(Edit1.Text);
      //if chbTodasListas.Checked then
      //  spActualiza.ParamByName('lista').Clear;//   StrToInt(Edit1.Text);

      spActualiza.ParamByName('Fecha').AsDate    := Date;//   StrToInt(Edit1.Text);
      spActualiza.ParamByName('codigo_reemplazo').Clear;

      spActualiza.ExecProc;
      DMMain_FD.fdcGestion.Commit;
      DMMain_FD.LogFileFD(0,2,'Actualizacion Vta Cambio Express >>Lista de Precios: '+dbcListas.Text+
                         ' >>Fecha: '+DateToStr(Date)+
                         ' >>Actualiza Lista: '+ IntToStr(dbcListas.KeyValue),
                         ' ACTCOSVTA');

      spActualiza.Close;
    except
      DMMain_FD.fdcGestion.rollback;
      spActualiza.Close;
    end;
end;

function TFormCambioPrecioExpres.AsignarArticulo(Codigo: string): Boolean;
begin
   if length(codigo)<=8 then
     begin
       QStock.Close;
       QStock.ParamByName('codigo').Value := Codigo;
       QStock.ParamByName('lista').Value  := dbcListas.KeyValue;
       QStock.Open;
       if Not(QStock.IsEmpty) then
         begin
           if mStock.State=dsBrowse then
             mStock.Append;
           if mStock.State=dsEdit then
             begin
               mStock.Post;
               mStock.Append;
             end;

           mStockCODIGO.Value    := QStockCODIGO_STK.Value;
           mStockDETALLE.Value   := QStockDETALLE_STK.Value;
           mStockPGRAVADO.Value  := QStockFIJACION_PRECIO_GRAVADO.Value;
           mStockIVA.Value       := QStockTASA.Value;

           mStockPRECIO.Value    := QStockPRECIO.Value;
           Result:=True;

           dbgStock.SelectedIndex := 1;
         end;
     end
       else Result:=False;
end;

procedure TFormCambioPrecioExpres.btImportarClick(Sender: TObject);
begin
  inherited;
  mStock.First;
  while not(mStock.Eof) do
    begin
      ActualizaPrecio.Execute;
      mStock.Next;
    end;
  mStock.Close;
  mStock.Open;
  mStock.EmptyDataSet;
end;

procedure TFormCambioPrecioExpres.dbgStockColEnter(Sender: TObject);
begin
  inherited;
  if dbgStock.SelectedIndex=1 Then
    dbgStock.SelectedIndex:=2;

end;

procedure TFormCambioPrecioExpres.dbgStockKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key=#13 then
    begin
      key:=#0;
      IF (dbgStock.SelectedIndex < 3) THEN
        dbgStock.SelectedIndex := dbgStock.SelectedIndex + 1
      ELSE
        BEGIN
          IF (dbgStock.DataSource.DataSet.Eof) THEN
            dbgStock.DataSource.DataSet.Append;
          dbgStock.SelectedIndex := 0;
        END;
    end;
end;

procedure TFormCambioPrecioExpres.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormCambioPrecioExpres.FormCreate(Sender: TObject);
begin
  inherited;
  autoSize :=False;
  QLista.Close;
  QLista.Open;
  dbcListas.KeyValue :=DMMain_FD.ListaPorDefecto(-1);
  mStock.Open;
end;

procedure TFormCambioPrecioExpres.FormDestroy(Sender: TObject);
begin
  inherited;
  FormCambioPrecioExpres :=nil
end;

procedure TFormCambioPrecioExpres.FormResize(Sender: TObject);
begin
  inherited;
  if FormCambioPrecioExpres<>nil then
    if FormCambioPrecioExpres.Width<>888 then
      FormCambioPrecioExpres.Width:=888;

end;

procedure TFormCambioPrecioExpres.mStockAfterInsert(DataSet: TDataSet);
begin
  inherited;
  dbgStock.SelectedIndex:=0;
end;

procedure TFormCambioPrecioExpres.mStockCODIGOSetText(Sender: TField;
  const Text: string);
var s,CodTxt:String;
begin
  inherited;
 if (Text<>'') and (Text[1]<>#13) Then
    begin
      // Quitar enter de la cadena....
      CodTxt := AnsiReplaceStr(Text, #13, '');
      CodTxt := AnsiReplaceStr(CodTxt, #10, '');

      Sender.AsString := DMMain_FD.SearchCodigo(Trim(CodTxt),DSStock, false);
      S:= Trim(Sender.AsString);
      IF AsignarArticulo(s) = False THEN
        BEGIN
           sender.AsString:='';
           dbgStock.SelectedIndex:=0;
        end;
    END;

   //      DatoNew :=Aux;
//      Recuperar.Execute;
//      CodigoEAN.SetFocus;
//      CodigoEAN.SelectAll;

end;

end.
