unit UBorradorPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  Provider, DBClient, SqlExpr, JvComponentBase, JvFormPlacement,
  ImgList,  ActnList, ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls, frxClass,
  frxDBSet, JvAppStorage, JvAppIniStorage, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, System.ImageList,
  frCoreClasses;

type
  TFormBorradorPedido = class(TFormABMBase)
    CDSBorrador: TClientDataSet;
    DSPBorrador: TDataSetProvider;
    dbgBorrador: TJvDBGrid;
    CDSBorradorID: TIntegerField;
    CDSBorradorCODIGO: TStringField;
    CDSBorradorDETALLE: TStringField;
    Panel2: TPanel;
    CDSBorradorPROVEEDOR: TStringField;
    CDSBorradorNOMBRE: TStringField;
    BuscaProveedor: TAction;
    DSPProveedor: TDataSetProvider;
    CDSProveedor: TClientDataSet;
    CDSProveedorCODIGO: TStringField;
    CDSProveedorNOMBRE: TStringField;
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    frReporte: TfrxReport;
    frxDBBorrador: TfrxDBDataset;
    DSBorrador: TDataSource;
    BitBtn1: TBitBtn;
    ToolButton2: TToolButton;
    ItemProv: TAction;
    chBorrar: TCheckBox;
    ToolButton3: TToolButton;
    QBorrador: TFDQuery;
    QBorradorID: TIntegerField;
    QBorradorCODIGO: TStringField;
    QBorradorDETALLE: TStringField;
    QBorradorCANTIDAD: TFloatField;
    QBorradorPROVEEDOR: TStringField;
    QBorradorNOMBRE: TStringField;
    Label1: TLabel;
    CDSBorradorCANTIDAD: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure dbgBorradorEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure dbgBorradorMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbgBorradorTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure BuscaProveedorExecute(Sender: TObject);
    procedure CDSBorradorAfterPost(DataSet: TDataSet);
    procedure CDSBorradorAfterDelete(DataSet: TDataSet);
    procedure btImprimirClick(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure dbgBorradorColEnter(Sender: TObject);
    procedure dbgBorradorEnter(Sender: TObject);
    procedure CDSBorradorPROVEEDORSetText(Sender: TField; const Text: string);
    procedure dbgBorradorKeyPress(Sender: TObject; var Key: Char);
    procedure ItemProvExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    FCodigo:String;
    FLista:TStringList;
  public
    { Public declarations }
  published
    Property Codigo:String read FCodigo write FCodigo;
    property Lista :TStringList read FLista Write FLista;
  end;

var
  FormBorradorPedido: TFormBorradorPedido;

implementation

{$R *.dfm}
uses  UDMain_FD, UBuscadorProveedor;

procedure TFormBorradorPedido.BorrarExecute(Sender: TObject);
begin
//  inherited;
  CDSBorrador.Delete;
  CDSBorrador.ApplyUpdates(0);
  Buscar.Execute;
end;

procedure TFormBorradorPedido.btImprimirClick(Sender: TObject);
begin
  inherited;
  CDSBorrador.IndexFieldNames:='PROVEEDOR';
 
  frReporte.PrintOptions.Printer:=PrNomListados;
  frReporte.SelectPrinter;

  frReporte.LoadFromFile(DMMain_FD.PathReportesLst+'\BorradorPedido.fr3');


  // frCtaCte.PrepareReport;
  frReporte.ShowReport;
end;

procedure TFormBorradorPedido.BuscaProveedorExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
  FormBuscadorProveedor.Tipo:='''N'''+','+'''G'''+','+'''S'''; // Act+Inac+Judiciales
  FormBuscadorProveedor.ShowModal;
  if FormBuscadorProveedor.Codigo<>'' Then
//  QProveedores.Close;
//  QProveedores.Open;
//  IF wwBuscadorProveedores.Execute THEN
    BEGIN
      if CDSBorrador.State=dsBrowse then
        CDSBorrador.Edit;

      CDSProveedor.Close;
      CDSProveedor.Params.ParamByName('Codigo').Value := FormBuscadorProveedor.Codigo;
      CDSProveedor.Open;
      IF NOT (CDSProveedor.IsEmpty) THEN
        BEGIN
          CDSBorradorNOMBRE.Value := CDSProveedorNOMBRE.Value;
          CDSBorradorPROVEEDOR.Value := CDSProveedorCODIGO.Value;
        END;
    END;
//  QProveedores.Close;

end;

procedure TFormBorradorPedido.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBorrador.Close;
  CDSBorrador.IndexDefs.Clear;
  CDSBorrador.IndexName:='';
  CDSBorrador.Open;
end;

procedure TFormBorradorPedido.CDSBorradorAfterDelete(DataSet: TDataSet);
begin
  inherited;
CDSBorrador.ApplyUpdates(0);
end;

procedure TFormBorradorPedido.CDSBorradorAfterPost(DataSet: TDataSet);
begin
  inherited;
  CDSBorrador.ApplyUpdates(0);
end;

procedure TFormBorradorPedido.CDSBorradorPROVEEDORSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if Text<>'' then
    begin
      Sender.ASString:= Copy('000000', 1, 6 - (Length(Text))) + Text;
      if CDSBorrador.State=dsBrowse then
        CDSBorrador.Edit;
      CDSProveedor.Close;
      CDSProveedor.Params.ParamByName('Codigo').Value := Sender.AsString;
      CDSProveedor.Open;
      IF NOT (CDSProveedor.IsEmpty) THEN
        BEGIN
          CDSBorradorNOMBRE.Value    := CDSProveedorNOMBRE.Value;
          CDSBorradorPROVEEDOR.Value := CDSProveedorCODIGO.Value;
        END;
    END;

end;

procedure TFormBorradorPedido.dbgBorradorColEnter(Sender: TObject);
begin
  inherited;
  if (dbgBorrador.SelectedIndex<=1)  then
    dbgBorrador.SelectedIndex:=2
  else
    if (dbgBorrador.SelectedIndex>3)  then
      dbgBorrador.SelectedIndex:=3



end;

procedure TFormBorradorPedido.dbgBorradorEndDrag(Sender, Target: TObject; X,
  Y: Integer);
begin
  inherited;
 //Borrar.Execute;
end;

procedure TFormBorradorPedido.dbgBorradorEnter(Sender: TObject);
begin
  inherited;
  dbgBorrador.SelectedIndex:=2;
end;

procedure TFormBorradorPedido.dbgBorradorKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 if (Key=#10) and (dbgBorrador.SelectedIndex = 3) then
    BuscaProveedor.Execute;
end;

procedure TFormBorradorPedido.dbgBorradorMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
//  if (Button=mbLeft) { and (Shift=[ssShift,ssLeft]) }	then
//    dbgBorrador.DragMode:=dmAutomatic
//  else
//    dbgBorrador.DragMode:=dmManual;
end;

procedure TFormBorradorPedido.dbgBorradorTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
  inherited;
 try
    Campo := Field.FieldName;
    with dbgBorrador.DataSource.DataSet as TClientDataSet do
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

procedure TFormBorradorPedido.DSBaseStateChange(Sender: TObject);
begin
//  inherited;
end;

procedure TFormBorradorPedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormBorradorPedido.FormCreate(Sender: TObject);
begin
//  inherited;
  AutoSize:=False;
 // AddClientDataSet(CDSBorrador,DSPBorrador);
  CDSBorrador.Open;
  ItemProv.Visible := False;
  chBorrar.Visible := False;
  Lista:=TStringList.Create;
  Lista.Clear;
end;

procedure TFormBorradorPedido.FormDestroy(Sender: TObject);
begin
  inherited;
  FormBorradorPedido:=Nil;
end;

procedure TFormBorradorPedido.FormResize(Sender: TObject);
begin
  inherited;
  if FormBorradorPedido<>nil then
    if FormBorradorPedido.Width<>892 then
      FormBorradorPedido.Width:=892;

end;

procedure TFormBorradorPedido.FormShow(Sender: TObject);
begin
//  inherited;

end;

procedure TFormBorradorPedido.ItemProvExecute(Sender: TObject);
begin
  inherited;
  Lista.Clear;
  CDSBorrador.First;
  while Not(CDSBorrador.Eof) do
    begin
      if CDSBorradorPROVEEDOR.Value=Codigo then
        begin
          Lista.Add(CDSBorradorCODIGO.Value+';'+FormatFloat('0.00',CDSBorradorCANTIDAD.AsFloat));
          if chBorrar.Checked then
            begin
              CDSBorrador.Delete;
              CDSBorrador.First;
            end;
        end;
      CDSBorrador.Next;
    end;
  Close;
end;

procedure TFormBorradorPedido.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frReporte.DesignReport;
end;

end.
