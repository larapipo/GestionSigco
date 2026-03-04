unit UUltimasVtasMensual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, JvDBGridFooter, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, JvExControls, JvGradient, StdCtrls,   DB, DBClient, Provider,
  Mask,  Librerias, FMTBcd, SqlExpr, JvExMask, JvToolEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons;

type
  TFormUltimaVtaMensual = class(TForm)
    pnPrincipal: TPanel;
    pnCabecera: TPanel;
    Panel2: TPanel;
    Splitter1: TSplitter;
    Panel4: TPanel;
    Splitter2: TSplitter;
    Panel3: TPanel;
    JvGradient3: TJvGradient;
    dbgFacturasDet: TJvDBGrid;
    dbgFacturasCab: TJvDBGrid;
    dbgArticulos: TJvDBGrid;
    JvDBGridFooter2: TJvDBGridFooter;
    JvDBGridFooter3: TJvDBGridFooter;
    DSArticulos: TDataSource;
    DSFacCab: TDataSource;
    DSFacDet: TDataSource;
    DSPArticulos: TDataSetProvider;
    DSPFacCab: TDataSetProvider;
    DSPFacDet: TDataSetProvider;
    CDSArticulos: TClientDataSet;
    CDSFacCab: TClientDataSet;
    CDSFacDet: TClientDataSet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    UpDown1: TUpDown;
    Label4: TLabel;
    Label5: TLabel;
    CDSArticulosCODIGOARTICULO: TStringField;
    CDSArticulosDETALLE: TStringField;
    CDSFacCabTIPOCPBTE: TStringField;
    CDSFacCabCLASECPBTE: TStringField;
    CDSFacCabNROCPBTE: TStringField;
    CDSFacCabID_FC: TIntegerField;
    CDSFacDetID_CABFAC: TIntegerField;
    CDSFacDetCODIGOARTICULO: TStringField;
    CDSFacDetDETALLE: TStringField;
    QArticulos: TFDQuery;
    CDSArticulosSUM: TFloatField;
    CDSArticulosSUM_1: TFloatField;
    QFacCab: TFDQuery;
    CDSFacCabFECHAVTA: TSQLTimeStampField;
    CDSFacCabTOTAL: TFloatField;
    QFacDet: TFDQuery;
    CDSFacDetCANTIDAD: TFloatField;
    CDSFacDetUNITARIO_TOTAL: TFloatField;
    CDSFacDetTOTAL: TFloatField;
    desde: TJvDateEdit;
    hasta: TJvDateEdit;
    SpeedButton1: TSpeedButton;
    JvDBGridFooter1: TJvDBGridFooter;
    Panel1: TPanel;
    Panel5: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbgArticulosTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbgFacturasCabTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbgFacturasDetTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    FFecha:TDate;
    FCodigo:String;
  public
    { Public declarations }
  published
    property fecha:Tdate read FFecha write fFecha;
    property Codigo :String read FCodigo write fcodigo;
  end;

var
  FormUltimaVtaMensual: TFormUltimaVtaMensual;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormUltimaVtaMensual.dbgArticulosTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
  CDSArticulos.IndexFieldNames:=Field.FieldName;
end;

procedure TFormUltimaVtaMensual.dbgFacturasCabTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
  CDSFacCab.IndexFieldNames:=Field.FieldName;
end;

procedure TFormUltimaVtaMensual.dbgFacturasDetTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
  CDSFacDet.IndexFieldNames:=Field.FieldName;
end;

procedure TFormUltimaVtaMensual.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormUltimaVtaMensual.FormCreate(Sender: TObject);
begin
  AutoSize:=False;
end;

procedure TFormUltimaVtaMensual.FormDestroy(Sender: TObject);
begin
  FormUltimaVtaMensual:=nil;
end;

procedure TFormUltimaVtaMensual.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_ESCAPE Then Close;
  
end;

procedure TFormUltimaVtaMensual.FormShow(Sender: TObject);
var d,m,y:word;
begin
  DecodeDate(FFecha,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(y,m));
//  Desde.Date := IncMonth(Hasta.Date,(-1*RangoFechas))+1;

  Desde.Date := IncMonth(Hasta.Date,(-1));
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(y,m))+1;

  CDSArticulos.Close;
  CDSArticulos.Params.ParamByName('Desde').Value:=Desde.date;
  CDSArticulos.Params.ParamByName('Hasta').Value:=Hasta.date;
  CDSArticulos.Params.ParamByName('Codigo').Value:=FCodigo;
  CDSArticulos.Open;

  CDSFacCab.Close;
  CDSFacCab.Params.ParamByName('desde').Value:=Desde.date;
  CDSFacCab.Params.ParamByName('hasta').Value:=hasta.date;
  CDSFacCab.Params.ParamByName('codigo').Value:=FCodigo;
  CDSFacCab.Open;

  CDSFacDet.Close;
  CDSFacDet.Params.ParamByName('id').Value:=CDSFacCabID_FC.Value;
  CDSFacDet.Open;


end;

procedure TFormUltimaVtaMensual.SpeedButton1Click(Sender: TObject);
begin
  updown1Click(sender,btNext);
end;

procedure TFormUltimaVtaMensual.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
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

  CDSArticulos.Close;
  CDSArticulos.Params.ParamByName('Desde').Value:=Desde.date;
  CDSArticulos.Params.ParamByName('Hasta').Value:=Hasta.date;
  CDSArticulos.Params.ParamByName('Codigo').Value:=FCodigo;
  CDSArticulos.Open;

  CDSFacCab.Close;
  CDSFacCab.Params.ParamByName('desde').Value:=Desde.date;
  CDSFacCab.Params.ParamByName('hasta').Value:=hasta.date;
  CDSFacCab.Params.ParamByName('codigo').Value:=FCodigo;
  CDSFacCab.Open;

  CDSFacDet.Close;
  CDSFacDet.Params.ParamByName('id').Value:=CDSFacCabID_FC.Value;
  CDSFacDet.Open;


end;

end.