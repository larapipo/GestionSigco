unit UCopiaPrecios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, Grids, DBGrids, JvExDBGrids, JvDBGrid, StdCtrls,
  ExtCtrls, Provider, DBClient, SqlExpr, JvExControls, JvDBLookup, ActnList,
  System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormCopiaPrecios = class(TForm)
    spCopiarPrecios: TFDStoredProc;
    QListas: TFDQuery;
    CDSLista: TClientDataSet;
    DSPLista: TDataSetProvider;
    DSLista: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    dbgStock: TJvDBGrid;
    QArticulosCopia: TFDQuery;
    CDSArticulosCopia: TClientDataSet;
    DSArticulosCopia: TDataSource;
    DSPArticulosCopias: TDataSetProvider;
    QArticulosCopiaCODIGO: TStringField;
    QArticulosCopiaDETALLE: TStringField;
    QArticulosCopiaCOD_COPIA: TStringField;
    QArticulosCopiaRECARGO: TFloatField;
    QArticulosCopiaMUESTRAARTCOPIA: TStringField;
    CDSArticulosCopiaCODIGO: TStringField;
    CDSArticulosCopiaDETALLE: TStringField;
    CDSArticulosCopiaCOD_COPIA: TStringField;
    CDSArticulosCopiaRECARGO: TFloatField;
    CDSArticulosCopiaMUESTRAARTCOPIA: TStringField;
    Button1: TButton;
    Label2: TLabel;
    cbLista: TJvDBLookupCombo;
    DSPStock: TDataSetProvider;
    CDSStock: TClientDataSet;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    CDSStockDETALLE_STK_ADICIONAL: TStringField;
    CDSStockCODIGO_BARRAS: TStringField;
    CDSStockRUBRO_STK: TStringField;
    CDSStockSUBRUBRO_STK: TStringField;
    CDSStockMARCA_STK: TStringField;
    CDSStockTASA_IVA: TIntegerField;
    CDSStockSOBRETASA_IVA: TIntegerField;
    CDSStockCOSTO_EXENTO_STK: TFloatField;
    CDSStockCOSTO_GRAVADO_STK: TFloatField;
    CDSStockCOSTO_TOTAL_STK: TFloatField;
    CDSStockREEMPLAZO_STK: TStringField;
    CDSStockFIJACION_PRECIO_GRAVADO: TFloatField;
    CDSStockFIJACION_PRECIO_EXENTO: TFloatField;
    CDSStockFIJACION_PRECIO_TOTAL: TFloatField;
    CDSStockFUAP: TSQLTimeStampField;
    CDSStockUNIDAD: TStringField;
    CDSStockCONTROLASTOCK: TStringField;
    CDSStockCODIGO_PROVEEDOR: TStringField;
    CDSStockCLASE_ARTICULO: TIntegerField;
    CDSStockMODO_GRAVAMEN: TStringField;
    CDSStockCON_IMP_INT: TStringField;
    CDSStockIMPUESTO_INTERNOS: TFloatField;
    CDSStockGRAVADO_IB: TStringField;
    CDSStockTASA_IB: TIntegerField;
    CDSStockACTUALIZACOSTO: TStringField;
    CDSStockDEPRODUCCION: TStringField;
    CDSStockPRODUCCIONDIRECTA: TStringField;
    CDSStockUNIDAD_COMPRA: TStringField;
    CDSStockCONTENIDO_COMPRA: TFloatField;
    CDSStockCONTROL_SERIE: TStringField;
    CDSStockUSA_CODIGOBARRA: TStringField;
    CDSStockUNIDAD_ULTIMAUSADA: TStringField;
    CDSStockID_TABLAPRECIOS: TIntegerField;
    CDSStockID_TABLAPRECIOSDETALLE: TIntegerField;
    CDSStockCODIGO_PRECIO: TIntegerField;
    CDSStockFECHA_ALTA: TSQLTimeStampField;
    CDSStockCOSTO_GRAVADO_SOMBRA: TFloatField;
    CDSStockCOSTO_EXENTO_SOMBRA: TFloatField;
    CDSStockFECHA_ACT_SOMBRA: TSQLTimeStampField;
    CDSStockFECHA_ULTIMAVTA: TSQLTimeStampField;
    CDSStockMONEDA: TIntegerField;
    CDSStockCOSTO_GRAVADO_P: TFloatField;
    CDSStockCOSTO_EXENTO_P: TFloatField;
    CDSStockCOSTO_TOTAL_P: TFloatField;
    CDSStockPOSICION: TStringField;
    CDSStockPRESENTACION_UNIDAD: TStringField;
    CDSStockPRESENTACION_CANTIDAD: TFloatField;
    CDSStockEDITAPRECIO: TStringField;
    CDSStockEDITADETALLE: TStringField;
    CDSStockURL: TStringField;
    CDSStockFECHA_ULTIMA_COMPRA: TSQLTimeStampField;
    CDSStockMUESTRARUBRO: TStringField;
    CDSStockMUESTRASUBRUBRO: TStringField;
    CDSStockMUESTRAMARCA: TStringField;
    CDSStockMUESTRATASA: TStringField;
    CDSStockMUESTRATASAPORCENTAJE: TFloatField;
    CDSStockMUESTRASOBRETASA: TStringField;
    CDSStockMUESTRASOBRETASAPROCENTAJE: TFloatField;
    CDSStockMUESTRATASAIB: TFloatField;
    CDSStockMUESTRATABLAPRECIODETALLE: TStringField;
    CDSStockMUESTRATABLAPRECIO1: TFloatField;
    CDSStockMUESTRATABLAPRECIO2: TFloatField;
    CDSListaID: TIntegerField;
    CDSListaNOMBRE: TStringField;
    CDSListaRECARGOBASE: TFloatField;
    CDSListaFECHA: TSQLTimeStampField;
    CDSListaPORDEFECTO: TStringField;
    CDSListaF_PAGO: TIntegerField;
    CDSListaUSO_ADMINISTRADOR: TStringField;
    CDSListaCLONADA: TStringField;
    CDSListaID_LISTA_CLONADA: TIntegerField;
    CDSListaCOEFICIENTE: TFloatField;
    CDSListaEXCLUSIVO_EFECTIVO: TStringField;
    ActionList: TActionList;
    BuscarArticulos: TAction;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure dbgStockKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbgStockEditButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgStockColEnter(Sender: TObject);
    procedure CDSArticulosCopiaCODIGOSetText(Sender: TField;
      const Text: string);
    procedure CDSArticulosCopiaCOD_COPIASetText(Sender: TField;
      const Text: string);
    procedure BuscarArticulosExecute(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CDSArticulosCopiaAfterPost(DataSet: TDataSet);
    procedure dbgStockDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AsignarArticulo(Codigo:String;Origen:byte);
  end;

var
  FormCopiaPrecios: TFormCopiaPrecios;

implementation

uses UDMain_FD, UBuscadorArticulos, UStock_2;

{$R *.dfm}

procedure TFormCopiaPrecios.AsignarArticulo(Codigo:String;Origen:Byte);
begin
  CDSStock.Close;
  CDSStock.Params.ParamByName('Codigo').AsString:=Codigo;
  CDSStock.Open;
  if (Not(CDSStock.IsEmpty)) then
    begin
      if Origen=0 then
        begin
          CDSArticulosCopiaCODIGO.Value :=CDSStockCODIGO_STK.Value;
          CDSArticulosCopiaDETALLE.Value:=CDSStockDETALLE_STK.Value;
        end
      else
        if Origen=1 then
          begin
            CDSArticulosCopiaCOD_COPIA.Value       :=CDSStockCODIGO_STK.Value;
            CDSArticulosCopiaMUESTRAARTCOPIA.Value :=CDSStockDETALLE_STK.Value;
          end;
    end;
 CDSStock.Close;
end;

procedure TFormCopiaPrecios.BuscarArticulosExecute(Sender: TObject);
begin
  if Not(Assigned(FormBuscadorArticulos)) then
    begin
      IF (dbgStock.SelectedField = CDSArticulosCopiaCODIGO)  or
         (dbgStock.SelectedField = CDSArticulosCopiaCOD_COPIA)  THEN
      begin
        IF (Assigned(FormBuscadorArticulos)) THEN
          FreeAndNil(FormBuscadorArticulos);
        if Not(Assigned(FormBuscadorArticulos)) then
          FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
             //FormBuscadorArticulos.CampoNro          := 1;
        FormBuscadorArticulos.Param1:=1;
        FormBuscadorArticulos.Param2:=3;
        FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
        FormBuscadorArticulos.Esquema     :=-1;

        FormBuscadorArticulos.Showmodal;
        if (FormBuscadorArticulos.Codigo<>'') then
          begin
             CDSArticulosCopia.Edit;
             if(dbgStock.SelectedField = CDSArticulosCopiaCODIGO)  then
               CDSArticulosCopiaCODIGOSetText(CDSArticulosCopiaCODIGO,FormBuscadorArticulos.Codigo)
             else
               if (dbgStock.SelectedField = CDSArticulosCopiaCOD_COPIA) then
                 CDSArticulosCopiaCOD_COPIASetText(CDSArticulosCopiaCOD_COPIA,FormBuscadorArticulos.Codigo);

             CDSArticulosCopia.Post;
          end;
      end;
    end;
end;

procedure TFormCopiaPrecios.Button1Click(Sender: TObject);
begin
  CDSArticulosCopia.Close;
  CDSArticulosCopia.Open;
end;

procedure TFormCopiaPrecios.Button2Click(Sender: TObject);
begin
  if (cbLista.KeyValue>-1) then
    begin
      spCopiarPrecios.Close;
      spCopiarPrecios.ParamByName('lista').Value:=cbLista.KeyValue;
      spCopiarPrecios.ExecProc;
      spCopiarPrecios.Close;
    end
  else
    ShowMessage('Seleccionar una Lista....');  
end;

procedure TFormCopiaPrecios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormCopiaPrecios.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  CDSLista.Close;
  CDSLista.Open;
end;

procedure TFormCopiaPrecios.FormDestroy(Sender: TObject);
begin
  FormCopiaPrecios:=nil;
end;

procedure TFormCopiaPrecios.CDSArticulosCopiaAfterPost(DataSet: TDataSet);
begin
 CDSArticulosCopia.ApplyUpdates(0);
end;

procedure TFormCopiaPrecios.CDSArticulosCopiaCODIGOSetText(Sender: TField;
  const Text: string);
begin
  if (Text<>'') and (Text<>#13) then
    begin
     if DMMain_FD.JustificaCodigo='D' Then
        Sender.AsString:=Copy(DMMain_FD.CharCodigo, 1, 8 - Length(Text)) + Text
      else
        if DMMain_FD.JustificaCodigo='I' Then
          Sender.AsString:=Text+Copy(DMMain_FD.CharCodigo, 1, 8 - Length(Text));

    //verifico si existe....
      AsignarArticulo(Sender.AsString,0);
    end;
end;

procedure TFormCopiaPrecios.CDSArticulosCopiaCOD_COPIASetText(Sender: TField;
  const Text: string);
begin
if (Text<>'') and (Text<>#13) then
    begin
      if DMMain_FD.JustificaCodigo='D' Then
        Sender.AsString:=Copy(DMMain_FD.CharCodigo, 1, 8 - Length(Text)) + Text
      else
        if DMMain_FD.JustificaCodigo='I' Then
          Sender.AsString:=Text+Copy(DMMain_FD.CharCodigo, 1, 8 - Length(Text));
      AsignarArticulo(Sender.AsString,1);
    end;
end;

procedure TFormCopiaPrecios.dbgStockColEnter(Sender: TObject);
begin
   if dbgStock.SelectedIndex=1 then
     dbgStock.SelectedIndex:=2
   else
     if dbgStock.SelectedIndex=3 then
       dbgStock.SelectedIndex:=4;
end;

procedure TFormCopiaPrecios.dbgStockDblClick(Sender: TObject);
begin
   if Not(Assigned(FormStock_2)) then
     FormStock_2:=TFormStock_2.Create(Self);
   FormStock_2.DatoNew:=CDSArticulosCopiaCODIGO.AsString;
   FormStock_2.Recuperar.Execute;
   FormStock_2.Show;

end;

procedure TFormCopiaPrecios.dbgStockEditButtonClick(Sender: TObject);
begin
  BuscarArticulos.Execute;
end;

procedure TFormCopiaPrecios.dbgStockKeyPress(Sender: TObject; var Key: Char);
begin
  IF (Key = #10) THEN
      BEGIN
        Key := #0;
        BuscarArticulos.Execute;
      END
   else
     if key=#13 then
       begin
         if dbgStock.SelectedIndex<4 Then
           dbgStock.SelectedIndex:=dbgStock.SelectedIndex+1
         else
           begin
             dbgStock.DataSource.DataSet.Append;
             dbgStock.SelectedIndex:=0;
           end;
       end;
end;

end.
