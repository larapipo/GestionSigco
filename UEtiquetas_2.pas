unit UEtiquetas_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB, Vcl.Buttons, Vcl.StdCtrls,IniFiles, Vcl.Mask, JvExMask, JvToolEdit,
  JvDBControls, frxClass, frxDBSet, Datasnap.DBClient, frCoreClasses;

type
  TFormEtiquetaOP = class(TForm)
    pnPrincipal: TPanel;
    dbgEtiquetas: TDBGrid;
    DSEtiquetas: TDataSource;
    Label1: TLabel;
    edEtiqueta1: TEdit;
    sbReporte: TSpeedButton;
    OpenDialog: TOpenDialog;
    frEtiq: TfrxReport;
    frDSEtiq: TfrxDBDataset;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    chPreview: TCheckBox;
    FElaboracion: TJvDateEdit;
    FVencimiento: TJvDateEdit;
    CDSEtiquetas: TClientDataSet;
    Panel1: TPanel;
    procedure dbgEtiquetasColEnter(Sender: TObject);
    procedure dbgEtiquetasEnter(Sender: TObject);
    procedure sbReporteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure pnPrincipalDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    ArchivoIni:TIniFile;
    { Public declarations }
  end;

var
  FormEtiquetaOP: TFormEtiquetaOP;

implementation

uses UOrdenProduccion, UDMain_FD;

{$R *.dfm}

procedure TFormEtiquetaOP.BitBtn1Click(Sender: TObject);
begin
  //frEtiq.PrintOptions.Printer:=PrNomCpbte;
  frEtiq.SelectPrinter;

  frEtiq.LoadFromFile(DMMain_FD.PathReportesLst+'\'+ edEtiqueta1.Text);

  //Preview:='S';
  frEtiq.PrintOptions.ShowDialog:=False;

  DSEtiquetas.DataSet.First;
  while Not(DSEtiquetas.DataSet.Eof) do
    begin
      if DSEtiquetas.DataSet.FieldByName('MUESTRACOPIAS').AsString<>'' then
        if DSEtiquetas.DataSet.FieldByName('MUESTRACOPIAS').Value>0 then
          begin
            frEtiq.PrintOptions.Copies :=DSEtiquetas.DataSet.FieldByName('MUESTRACOPIAS').Value;
            frEtiq.Variables['FechaElaboracion']  :=''''+DateToStr(FElaboracion.Date)+'''';
            frEtiq.Variables['FechaVencimiento']  :=''''+DateToStr(FVencimiento.Date)+'''';
            frEtiq.PrepareReport;
            if chPreview.Checked Then
              frEtiq.ShowReport
            else
              begin
                frEtiq.Print;
              end;
          end;
      DSEtiquetas.DataSet.Next;
    end;

end;

procedure TFormEtiquetaOP.dbgEtiquetasColEnter(Sender: TObject);
begin
  if dbgEtiquetas.SelectedIndex<2 then
    dbgEtiquetas.SelectedIndex:=2;
end;

procedure TFormEtiquetaOP.dbgEtiquetasEnter(Sender: TObject);
begin
 if dbgEtiquetas.SelectedIndex>1 then
    dbgEtiquetas.SelectedIndex:=2;
end;

procedure TFormEtiquetaOP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'EtiqutetasRotulos.Ini');
  //*************************************************************
  ArchivoIni.WriteString('etiqueta', 'chica', edEtiqueta1.Text);
  ArchivoIni.WriteDateTime('etiqueta', 'Elaboracion', FElaboracion.Date);
  ArchivoIni.WriteDateTime('etiqueta', 'vto', FVencimiento.Date);
  ArchivoIni.Free;

end;

procedure TFormEtiquetaOP.FormCreate(Sender: TObject);
begin
  AutoSize :=True;
  ArchivoIni       := TIniFile.Create(ExtractFilePath(ParamStr(0))+'EtiqutetasRotulos.Ini');
  edEtiqueta1.Text := ArchivoIni.ReadString('etiqueta', 'chica', '');
  FElaboracion.Date:= ArchivoIni.ReadDateTime('etiqueta', 'Elaboracion', Date);
  FVencimiento.Date:= ArchivoIni.ReadDateTime('etiqueta', 'vto', Date);
  ArchivoIni.Free;
  OpenDialog.InitialDir:=DMMain_FD.PathReportesLst;
  if (Owner as TForm).Name='FormCompra_2' then
    begin
      dbgEtiquetas.Columns[0].FieldName:='CODIGOARTICULO';
    end
  else
    dbgEtiquetas.Columns[0].FieldName:='CODIGO';

end;

procedure TFormEtiquetaOP.FormDestroy(Sender: TObject);
begin
  FormEtiquetaOP:=nil;
end;

procedure TFormEtiquetaOP.FormShow(Sender: TObject);
var Campo:TField;
begin
  dbgEtiquetas.Columns[0].Title.Caption :='Codigo';
  dbgEtiquetas.Columns[1].Title.Caption :='Detalle';
  dbgEtiquetas.Columns[2].Title.Caption :='Copias';

  dbgEtiquetas.Columns[0].Width:=104;
  dbgEtiquetas.Columns[1].Width:=308;
  dbgEtiquetas.Columns[2].Width:=84;


end;

procedure TFormEtiquetaOP.pnPrincipalDblClick(Sender: TObject);
begin
  frEtiq.DesignReport;
end;

procedure TFormEtiquetaOP.sbReporteClick(Sender: TObject);
var Lon1,Lon2:Integer;
begin
 if OpenDialog.Execute Then
    if OpenDialog.FileName<>'' Then
      begin
        edEtiqueta1.Text:= OpenDialog.FileName;
        Lon1:=Length(OpenDialog.InitialDir);
        Lon2:=Length(OpenDialog.FileName);
        edEtiqueta1.Text:=Copy(OpenDialog.FileName,Lon1+2,Lon2-Lon1-1);
      end
    else
      edEtiqueta1.Text:='';
end;

end.
