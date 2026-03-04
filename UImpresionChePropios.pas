unit UImpresionChePropios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Data.SqlExpr,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, frxClass,MiLib,
  Datasnap.Provider, Datasnap.DBClient, frxDBSet, frxExportPDF, frxDMPExport,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  frxExportBaseDialog, frCoreClasses;

type
  TFormImpresionChePropios = class(TForm)
    frReport: TfrxReport;
    dbgCheques: TDBGrid;
    pnBase: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DSCheques: TDataSource;
    CDSCheques: TClientDataSet;
    DSPCheques: TDataSetProvider;
    CDSChequesIDMOVCAJA: TIntegerField;
    CDSChequesID_CHEQUE_PRO: TIntegerField;
    CDSChequesID_CHEQUERA: TIntegerField;
    CDSChequesID_BANCO: TIntegerField;
    CDSChequesNOMBRE: TStringField;
    CDSChequesFECHA_EMISION: TSQLTimeStampField;
    CDSChequesFECHA_COBRO: TSQLTimeStampField;
    CDSChequesORDEN_DE: TStringField;
    CDSChequesNUMERO: TIntegerField;
    CDSChequesOBSERVACIONES: TStringField;
    frDBChequesLst: TfrxDBDataset;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxPDFExport1: TfrxPDFExport;
    chPreview: TCheckBox;
    CDSChequesIMPLETRA: TStringField;
    QCheques: TFDQuery;
    CDSChequesIMPORTE: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure pnBaseDblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CDSChequesCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    FId:Integer;
    FTipoCpbte:String;
    FPathReportes:String;
  public
    { Public declarations }
  published
    PROPERTY TipoCpbte: STRING read FTipoCpbte write FTipoCpbte;
    PROPERTY Id: Integer read FId write FId;
    PROPERTY PathReportes: STRING read FPathReportes write FPathReportes;

  end;

var
  FormImpresionChePropios: TFormImpresionChePropios;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormImpresionChePropios.BitBtn1Click(Sender: TObject);
begin
 frReport.LoadFromFile( PathReportes+'\ChequesPropios.fr3');
 frReport.PrepareReport();
 if chPreview.Checked then
   frReport.ShowReport()
 else
   frReport.Print;
 
end;

procedure TFormImpresionChePropios.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormImpresionChePropios.CDSChequesCalcFields(DataSet: TDataSet);
begin
  CDSChequesIMPLETRA.Value:= numero2letras(CDSChequesIMPORTE.AsFloat);
end;

procedure TFormImpresionChePropios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormImpresionChePropios.FormCreate(Sender: TObject);
begin
  CDSCheques.Close;
  CDSCheques.Params.ParamByName('tipocpbte').AsString :=FTipoCpbte;
  CDSCheques.Params.ParamByName('idcpbte').AsInteger  :=FId;
  CDSCheques.Open;

  AutoSize:=True;

end;

procedure TFormImpresionChePropios.FormDestroy(Sender: TObject);
begin
  FormImpresionChePropios:=nil;
end;

procedure TFormImpresionChePropios.FormShow(Sender: TObject);
begin
  CDSCheques.Close;
  CDSCheques.Params.ParamByName('tipocpbte').AsString :=FTipoCpbte;
  CDSCheques.Params.ParamByName('idcpbte').AsInteger  :=FId;
  CDSCheques.Open;

end;

procedure TFormImpresionChePropios.pnBaseDblClick(Sender: TObject);
begin
  frReport.DesignReport;
end;

end.
