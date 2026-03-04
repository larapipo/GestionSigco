unit UListadoDebitos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase,  frxDBSet, frxClass, Db, Grids, DBGrids, StdCtrls,
  Librerias, JvToolEdit, JvExMask, JvLabel, SqlExpr, JvComponentBase, JvFormPlacement,
  DBClient, Provider, JvBaseEdits, FMTBcd, ImgList,
  ActnList, JvDBControls, JvExControls, JvGradient, Buttons,
  ToolWin, ExtCtrls, Vcl.Mask, Vcl.ComCtrls, JvAppStorage, JvAppIniStorage,
  System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, System.ImageList,
  frCoreClasses;

type
  TFormListadoDebitos = class(TFormABMBase)
    UpDown1: TUpDown;
    edNombreCta: TEdit;
    edNroCta: TEdit;
    edBanco: TEdit;
    DBGrid1: TDBGrid;
    frResumen: TfrxReport;
    frDSDebitos: TfrxDBDataset;
    BuscarCuenta: TAction;
    DSDebitos: TDataSource;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    ceCtaBco: TJvComboEdit;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    DSPBuscadorCta: TDataSetProvider;
    CDSBuscadorCta: TClientDataSet;
    CDSBuscadorCtaID_CUENTA: TIntegerField;
    CDSBuscadorCtaID_TIPO_CTA: TIntegerField;
    CDSBuscadorCtaNOMBRE: TStringField;
    CDSBuscadorCtaNRO_CUENTA: TStringField;
    CDSBuscadorCtaID_BANCO: TIntegerField;
    CDSBuscadorCtaCUIT: TStringField;
    CDSBuscadorCtaRAZONSOCIAL: TStringField;
    CDSDebitos: TClientDataSet;
    DSPDebitos: TDataSetProvider;
    CDSDebitosID_CUENTA_BANCO: TIntegerField;
    CDSDebitosFECHA: TSQLTimeStampField;
    CDSDebitosORIGEN: TStringField;
    CDSDebitosNUMERO: TIntegerField;
    RxLabel1: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel4: TJvLabel;
    RxLabel5: TJvLabel;
    edTotal: TJvCalcEdit;
    ComBuscadorCta: TComBuscador;
    QDebitos: TFDQuery;
    QBuscCta: TFDQuery;
    QCtaBco: TFDQuery;
    QCtaBcoID_CUENTA: TIntegerField;
    QCtaBcoID_TIPO_CTA: TIntegerField;
    QCtaBcoNOMBRE: TStringField;
    QCtaBcoNRO_CUENTA: TStringField;
    QCtaBcoID_BANCO: TIntegerField;
    QCtaBcoCUIT: TStringField;
    QCtaBcoRAZONSOCIAL: TStringField;
    QCtaBcoMUESTRABANCO: TStringField;
    CDSDebitosIMPORTE: TFloatField;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarCuentaExecute(Sender: TObject);
    procedure ceCtaBcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ceCtaBcoKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   procedure Sumar;
   function AsignarCtaBco(dato:Integer):Boolean;
  end;

var
  FormListadoDebitos: TFormListadoDebitos;

implementation

{$R *.DFM}

uses UDMain_fd;

procedure TFormListadoDebitos.Sumar;
var p:TBookmark;
begin
  p:=CDSDebitos.GetBookmark;
  edTotal.Value:=0;
  CDSDebitos.DisableControls;
  CDSDebitos.First;
  while not(CDSDebitos.Eof) do
    begin
      edTotal.Value:=edTotal.Value+CDSDebitosIMPORTE.AsFloat;
      CDSDebitos.Next;
    end;
  CDSDebitos.GotoBookmark(p);
  CDSDebitos.FreeBookmark(p);
  CDSDebitos.EnableControls;
end;

function TFormListadoDebitos.AsignarCtaBco(dato:Integer):Boolean;
begin
  QCtaBco.Close;
  QCtaBco.ParamByName('id').AsInteger := Dato;
  QCtaBco.Open;
  if not(QCtaBco.IsEmpty) Then
    begin
      Result:=True;
      ceCtaBco.Text      := inttostr(Dato);
      edNombreCta.Text   := QCtaBcoNOMBRE.Value;
      edBanco.Text       := QCtaBcoMUESTRABANCO.Value;
      edNroCta.Text      := QCtaBcoNRO_CUENTA.Value;
    end
  else
    begin
      Result:=False;
      ceCtaBco.Text      :='';
      edNombreCta.Text   := '';
      edBanco.Text       := '';
      edNroCta.Text      := '';
    end
end;



procedure TFormListadoDebitos.UpDown1Click(Sender: TObject; Button: TUDBtnType);
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  if ceCtaBco.Text<>'' Then
  Buscar.Execute;
  //  Desde.SetFocus;
end;  

procedure TFormListadoDebitos.BuscarCuentaExecute(Sender: TObject);
begin
  inherited;
  CDSBuscadorCta.Close;
  CDSBuscadorCta.Open;
  comBuscadorCta.Execute;
  if comBuscadorCta.rOk Then
      AsignarCtaBco(comBuscadorCta.Id);
  CDSBuscadorCta.Close;
  Buscar.Execute;

end;

procedure TFormListadoDebitos.ceCtaBcoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if (key=vk_delete) or (Key=VK_back) Then
    begin
      ceCtaBco.Text:='';
      edNombreCta.Text:='';
    end;
end;

procedure TFormListadoDebitos.ceCtaBcoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if Key=#13 Then
    begin
     key:=#0;
      if Not(AsignarCtaBco(StrToInt(ceCtaBco.Text))) Then
        begin
          QDebitos.Close;
          ceCtaBco.Text:='';
          ceCtaBco.SetFocus;
        end
      else
          Buscar.Execute;
     end;
end;

procedure TFormListadoDebitos.BuscarExecute(Sender: TObject);
begin
  inherited;
  if (Trim(ceCtaBco.Text)<>'') then
    begin
      CDSDebitos.Close;
      CDSDebitos.Params.ParamByName('desde').AsDate := Desde.Date;
      CDSDebitos.Params.ParamByName('hasta').AsDate := hasta.Date;
      CDSDebitos.Params.ParamByName('id').AsInteger := StrToInt(ceCtaBco.Text);
      CDSDebitos.Open;
      Sumar;
    end
  else
    ShowMessage('No hay Cta de Banco...');  
end;

procedure TFormListadoDebitos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormListadoDebitos.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
end;

procedure TFormListadoDebitos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoDebitos:=nil;
end;

procedure TFormListadoDebitos.FormShow(Sender: TObject);
VAR M,D,A:Word;
begin
  inherited;
  DecodeDate(Date,A,M,D);
  Desde.Date:=EncodeDate(A,M,1);
  Hasta.Date:=EncodeDate(A,M,DaysInMonth(A,M))
end;

procedure TFormListadoDebitos.ImprimirExecute(Sender: TObject);
begin
  inherited;
  frResumen.PrintOptions.Printer:=PrNomListados;
  frResumen.SelectPrinter;
  frResumen.LoadFromFile(DMMain_FD.PathReportesCpbte+'\ListadoDebitosBanco.fr3');
  frResumen.Variables['Banco']:= ''''+edNombreCta.Text+'''';
  frResumen.Variables['NroCta']:= ''''+edNroCta.Text+'''';
  frResumen.Variables['Desde']:= ''''+DateToStr(Desde.Date)+'''';
  frResumen.Variables['Hasta']:= ''''+DateToStr(Hasta.Date)+'''';
  frResumen.PrintOptions.Copies := 1;
  // frCtaCte.PrepareReport;
  frResumen.ShowReport;

end;

procedure TFormListadoDebitos.sbEstadoClick(Sender: TObject);
begin
  inherited;
  frResumen.DesignReport;
end;

end.