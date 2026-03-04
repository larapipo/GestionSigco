unit UNovedadesFact;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvExControls, JvLabel,
  JvDBControls, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, Datasnap.Provider, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids,Librerias, JvDBGridExport, DataExport, DataToXLS, frCoreClasses,
  frxClass, frxDBSet, Vcl.DBCtrls, JvDBLookup, AdvOfficeButtons;

type
  TFormListadoNovedadesFac = class(TFormABMBase)
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    desde: TJvDateEdit;
    hasta: TJvDateEdit;
    ldesde: TLabel;
    UpDown1: TUpDown;
    lhasta: TLabel;
    CDSNovedades: TClientDataSet;
    DSPNovedades: TDataSetProvider;
    QNovedades: TFDQuery;
    DSNovedades: TDataSource;
    DBGNovedades: TDBGrid;
    CDSNovedadesFECHAVTA: TSQLTimeStampField;
    CDSNovedadesNOMBRE: TStringField;
    CDSNovedadesNROCPBTE: TStringField;
    CDSNovedadesDETALLE: TStringField;
    CDSNovedadesPRECIO_OLD: TFloatField;
    CDSNovedadesPRECIO: TFloatField;
    CDSNovedadesDIFERENCIA: TFloatField;
    CDSNovedadesUSUARIO: TStringField;
    SaveDialog1: TSaveDialog;
    DataToXLS: TDataToXLS;
    Label1: TLabel;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    CDSNovedadesDIFERENCIANRO: TFloatField;
    BuscarVendedor: TAction;
    QVendedores: TFDQuery;
    DSPVendedores: TDataSetProvider;
    CDSVendedores: TClientDataSet;
    DSVendedores: TDataSource;
    CDSVendedoresNOMBRE: TStringField;
    dbcVendedor: TJvDBLookupCombo;
    CDSVendedoresCODIGO: TStringField;
    Imprimir: TAction;
    btImprimir: TBitBtn;
    ExportarXLS: TAction;
    Button1: TBitBtn;
    ToolButton1: TToolButton;
    chkAllvendedores: TAdvOfficeCheckBox;
    CDSNovedadesCANTIDAD: TFloatField;
    chkSoloFacturasPagas: TAdvOfficeCheckBox;
    QNovedadesFP: TFDQuery;
    DSPNovedadesSP: TDataSetProvider;
    CDSNovedadesTOTALDIF: TFloatField;
    procedure BuscarExecute(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormCreate(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure DBCVendedorExit(Sender: TObject);
    procedure chkAllvendedoresClick(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure ExportarXLSExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbcVendedorChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoNovedadesFac: TFormListadoNovedadesFac;

implementation

{$R *.dfm}

uses UDMain_FD;

procedure TFormListadoNovedadesFac.BuscarExecute(Sender: TObject);
begin
  inherited;
    if chkSoloFacturasPagas.Checked then
    begin
      CDSNovedades.close;
      CDSNovedades.ProviderName:='DSPNovedadesSP';
    end
    else
    begin
      CDSNovedades.close;
      CDSNovedades.ProviderName:='DSPNovedades';
    end;

    CDSNovedades.Close;
    CDSNovedades.Params.ParamByName('desde').AsDate       := desde.date;
    CDSNovedades.Params.ParamByName('hasta').AsDate       := hasta.Date;
    if DBCVendedor.enabled=false then
      CDSNovedades.Params.ParamByName('vendedor').asstring       := '******'
      else
    CDSNovedades.Params.ParamByName('vendedor').asstring       := DBCVendedor.LookupSource.DataSet.FieldByName('codigo').asstring ;
    CDSNovedades.Open;

end;

procedure TFormListadoNovedadesFac.chkAllvendedoresClick(Sender: TObject);
begin
  inherited;
  if chkAllvendedores.Checked then
    begin
      DBCVendedor.Color   := clScrollBar;
      DBCVendedor.Enabled := False;
      DBCVendedor.ClearValue;

    end
  else
    Begin
      DBCVendedor.Enabled := True;
      DBCVendedor.Color   := clWindow;

    End;

end;

procedure TFormListadoNovedadesFac.dbcVendedorChange(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormListadoNovedadesFac.DBCVendedorExit(Sender: TObject);
begin
  inherited;
  CDSVendedores.Close;
end;

procedure TFormListadoNovedadesFac.ExportarXLSExecute(Sender: TObject);
begin
  inherited;
  if SaveDialog1.Execute then
    DataToXLS.SaveToFile(SaveDialog1.FileName);
end;

procedure TFormListadoNovedadesFac.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormListadoNovedadesFac.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  DBCVendedor.Enabled := False;
  DBCVendedor.Color   := clScrollBar;
  decodedate(date,y,m,d);
  Desde.date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
    CDSVendedores.close;
  CDSVendedores.open;

end;

procedure TFormListadoNovedadesFac.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoNovedadesFac:=nil;
end;

procedure TFormListadoNovedadesFac.ImprimirExecute(Sender: TObject);
begin
  inherited;
  if Not(CDSNovedades.IsEmpty) Then
    begin
      frxReport1.PrintOptions.Printer:=PrNomListados;
      frxReport1.SelectPrinter;
      frxReport1.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoNovedadesFactura.fr3');
      frxReport1.ShowReport;
    end
  else ShowMessage('No Hay datos para Listar......');
end;

procedure TFormListadoNovedadesFac.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReport1.DesignReport;
end;

procedure TFormListadoNovedadesFac.UpDown1Click(Sender: TObject; Button: TUDBtnType);

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
  Buscar.Execute;
  DBGNovedades.setFocus;
  //  Desde.SetFocus;
end;
end.
