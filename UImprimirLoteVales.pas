unit UImprimirLoteVales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, ComCtrls, StdCtrls, Mask, JvExMask, JvToolEdit, DB,
  SqlExpr, JvComponentBase, JvFormPlacement, ImgList,
  ActnList, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, ToolWin,
  ExtCtrls,DateUtils, Grids, DBGrids, JvExDBGrids, JvDBGrid, Provider, DBClient,
  JvAppStorage, JvAppIniStorage, System.Actions, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormImpresionLoteVales = class(TFormABMBase)
    Panel2: TPanel;
    Label1: TLabel;
    desde: TJvDateEdit;
    Label2: TLabel;
    hasta: TJvDateEdit;
    UpDown1: TUpDown;
    dbgVales: TJvDBGrid;
    QVales: TFDQuery;
    CDSVales: TClientDataSet;
    DSPVales: TDataSetProvider;
    DSVales: TDataSource;
    CDSValesTIPOCPBTE: TStringField;
    CDSValesCLASECPBTE: TStringField;
    CDSValesCODIGO: TStringField;
    CDSValesIMPORTE: TFloatField;
    CDSValesNROCPBTE: TStringField;
    CDSValesNOMBRE: TStringField;
    CDSValesFECHA: TSQLTimeStampField;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    CDSValesID: TIntegerField;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgValesTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImpresionLoteVales: TFormImpresionLoteVales;

implementation

uses UDMain_FD, UAdelantosSueldos;
{$R *.dfm}

procedure TFormImpresionLoteVales.btImprimirClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  if Not(Assigned(FormAdelantosSueldo)) then
    FormAdelantosSueldo:=TFormAdelantosSueldo.Create(Self);
  FormAdelantosSueldo.Show;
  for I := 0 to dbgVales.SelectedRows.Count - 1 do
    begin
      {$IF CompilerVersion < 24}
        dbgVales.DataSource.DataSet.GotoBookmark(Pointer(dbgVales.SelectedRows.Items[i]));
      {$ELSE}
        dbgVales.DataSource.DataSet.GotoBookmark((dbgVales.SelectedRows.Items[i]));
      {$ENDIF}

      FormAdelantosSueldo.DatoNew  :=dbgVales.DataSource.DataSet.FieldByName('id').AsString;
      FormAdelantosSueldo.TipoCpbte:='VA';
      FormAdelantosSueldo.Recuperar.Execute;
      FormAdelantosSueldo.Imprimir.Execute;
      Sleep(100);
    end;
  FormAdelantosSueldo.Salir.Execute;
end;

procedure TFormImpresionLoteVales.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSVales.Close;
  CDSVales.IndexFieldNames:='';
  CDSVales.IndexDefs.Clear;
  CDSVales.Params.ParamByName('desde').Value:=Desde.Date;
  CDSVales.Params.ParamByName('hasta').Value:=Hasta.Date;
  CDSVales.Open;
  CDSVales.IndexFieldNames:='Nombre';

end;

procedure TFormImpresionLoteVales.dbgValesTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var Campo:String;
begin
  inherited;
 try
    Campo := Field.FieldName;
    with dbgVales.DataSource.DataSet as TClientDataSet do
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

procedure TFormImpresionLoteVales.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormImpresionLoteVales.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  autoSize:=true;
  DecodeDate(Date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
end;

procedure TFormImpresionLoteVales.FormDestroy(Sender: TObject);
begin
  inherited;
   FormImpresionLoteVales:=nil;
end;

procedure TFormImpresionLoteVales.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  dbgVales.SelectAll; 
end;

procedure TFormImpresionLoteVales.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  dbgVales.UnselectAll;
end;

procedure TFormImpresionLoteVales.UpDown1Click(Sender: TObject; Button: TUDBtnType);
var d,m,y:word;
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
  Buscar.Execute;
end;

end.
