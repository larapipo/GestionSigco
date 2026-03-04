unit UChequesEmitidosDetalle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, JvgStringGrid, DB, JvExGrids, JvStringGrid,
  StdCtrls, DBCtrls, JvExForms, JvScrollBox, JvGrids, ComCtrls, DBGrids,
  ActnList, DBClient, Provider, JvExDBGrids, JvDBGrid, JvExControls, JvGradient,
  ExtCtrls,Librerias, JvDBLookup, frxClass, frxDBSet, 
  frxExportHTML, frxExportCSV, frxExportPDF, Buttons, FMTBcd, SqlExpr, Mask,
  JvExMask, JvToolEdit, System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frxExportBaseDialog, frCoreClasses;

type
  TFormChequesEmitidosDetalle = class(TForm)
    DS1: TDataSource;
    DSPCheques: TDataSetProvider;
    CDS1: TClientDataSet;
    CDS2: TClientDataSet;
    DS2: TDataSource;
    DS8: TDataSource;
    CDS8: TClientDataSet;
    CDS9: TClientDataSet;
    DS9: TDataSource;
    CDS16: TClientDataSet;
    DS16: TDataSource;
    CDS15: TClientDataSet;
    DS15: TDataSource;
    CDS23: TClientDataSet;
    DS23: TDataSource;
    CDS22: TClientDataSet;
    DS22: TDataSource;
    Panel1: TPanel;
    pn1: TPanel;
    lbSuma1: TLabel;
    Panel28: TPanel;
    JvGradient1: TJvGradient;
    lb1: TLabel;
    dbg1: TJvDBGrid;
    pn2: TPanel;
    lbSuma2: TLabel;
    Panel2: TPanel;
    JvGradient2: TJvGradient;
    lb2: TLabel;
    dbg2: TJvDBGrid;
    pn3: TPanel;
    lbSuma3: TLabel;
    Panel3: TPanel;
    JvGradient3: TJvGradient;
    lb3: TLabel;
    dbg3: TJvDBGrid;
    pn4: TPanel;
    lbSuma4: TLabel;
    Panel4: TPanel;
    JvGradient4: TJvGradient;
    lb4: TLabel;
    dbg4: TJvDBGrid;
    pn5: TPanel;
    lbSuma5: TLabel;
    Panel5: TPanel;
    JvGradient5: TJvGradient;
    lb5: TLabel;
    dbg5: TJvDBGrid;
    pn6: TPanel;
    lbSuma6: TLabel;
    Panel6: TPanel;
    JvGradient6: TJvGradient;
    lb6: TLabel;
    dbg6: TJvDBGrid;
    pn7: TPanel;
    lbSuma7: TLabel;
    Panel7: TPanel;
    JvGradient7: TJvGradient;
    lb7: TLabel;
    dbg7: TJvDBGrid;
    pn8: TPanel;
    lbSuma8: TLabel;
    Panel8: TPanel;
    JvGradient8: TJvGradient;
    lb8: TLabel;
    dbg8: TJvDBGrid;
    pn9: TPanel;
    lbSuma9: TLabel;
    Panel10: TPanel;
    JvGradient9: TJvGradient;
    lb9: TLabel;
    dbg9: TJvDBGrid;
    pn10: TPanel;
    lbSuma10: TLabel;
    Panel12: TPanel;
    JvGradient10: TJvGradient;
    lb10: TLabel;
    dbg10: TJvDBGrid;
    pn11: TPanel;
    lbSuma11: TLabel;
    Panel14: TPanel;
    JvGradient11: TJvGradient;
    lb11: TLabel;
    dbg11: TJvDBGrid;
    pn12: TPanel;
    lbSuma12: TLabel;
    Panel16: TPanel;
    JvGradient12: TJvGradient;
    lb12: TLabel;
    dbg12: TJvDBGrid;
    pn13: TPanel;
    lbSuma13: TLabel;
    Panel18: TPanel;
    JvGradient13: TJvGradient;
    lb13: TLabel;
    dbg13: TJvDBGrid;
    pn14: TPanel;
    lbSuma14: TLabel;
    Panel20: TPanel;
    JvGradient14: TJvGradient;
    lb14: TLabel;
    dbg14: TJvDBGrid;
    pn15: TPanel;
    lbSuma15: TLabel;
    Panel22: TPanel;
    JvGradient15: TJvGradient;
    lb15: TLabel;
    dbg15: TJvDBGrid;
    pn16: TPanel;
    lbSuma16: TLabel;
    Panel24: TPanel;
    JvGradient16: TJvGradient;
    lb16: TLabel;
    dbg16: TJvDBGrid;
    pn17: TPanel;
    lbSuma17: TLabel;
    Panel26: TPanel;
    JvGradient17: TJvGradient;
    lb17: TLabel;
    dbg17: TJvDBGrid;
    pn18: TPanel;
    lbSuma18: TLabel;
    Panel29: TPanel;
    JvGradient18: TJvGradient;
    lb18: TLabel;
    dbg18: TJvDBGrid;
    pn19: TPanel;
    lbSuma19: TLabel;
    Panel31: TPanel;
    JvGradient19: TJvGradient;
    lb19: TLabel;
    dbg19: TJvDBGrid;
    pn20: TPanel;
    lbSuma20: TLabel;
    Panel33: TPanel;
    JvGradient20: TJvGradient;
    lb20: TLabel;
    dbg20: TJvDBGrid;
    pn21: TPanel;
    lbSuma21: TLabel;
    Panel35: TPanel;
    JvGradient21: TJvGradient;
    lb21: TLabel;
    dbg21: TJvDBGrid;
    pn22: TPanel;
    lbSuma22: TLabel;
    Panel37: TPanel;
    JvGradient22: TJvGradient;
    lb22: TLabel;
    dbg22: TJvDBGrid;
    pn23: TPanel;
    lbSuma23: TLabel;
    Panel39: TPanel;
    JvGradient23: TJvGradient;
    lb23: TLabel;
    dbg23: TJvDBGrid;
    pn24: TPanel;
    lbSuma24: TLabel;
    Panel41: TPanel;
    JvGradient24: TJvGradient;
    lb24: TLabel;
    dbg24: TJvDBGrid;
    pn25: TPanel;
    lbSuma25: TLabel;
    Panel43: TPanel;
    JvGradient25: TJvGradient;
    lb25: TLabel;
    dbg25: TJvDBGrid;
    pn26: TPanel;
    lbSuma26: TLabel;
    Panel45: TPanel;
    JvGradient26: TJvGradient;
    lb26: TLabel;
    dbg26: TJvDBGrid;
    pn27: TPanel;
    lbSuma27: TLabel;
    Panel47: TPanel;
    JvGradient27: TJvGradient;
    lb27: TLabel;
    dbg27: TJvDBGrid;
    pn28: TPanel;
    lbSuma28: TLabel;
    Panel49: TPanel;
    JvGradient28: TJvGradient;
    lb28: TLabel;
    dbg28: TJvDBGrid;
    pn29: TPanel;
    lbSuma29: TLabel;
    Panel51: TPanel;
    JvGradient29: TJvGradient;
    lb29: TLabel;
    dbg29: TJvDBGrid;
    pn30: TPanel;
    lbSuma30: TLabel;
    Panel53: TPanel;
    JvGradient30: TJvGradient;
    lb30: TLabel;
    dbg30: TJvDBGrid;
    pn31: TPanel;
    lbSuma31: TLabel;
    Panel55: TPanel;
    JvGradient31: TJvGradient;
    lb31: TLabel;
    dbg31: TJvDBGrid;
    pn32: TPanel;
    lbSuma32: TLabel;
    Panel57: TPanel;
    JvGradient32: TJvGradient;
    lb32: TLabel;
    dbg32: TJvDBGrid;
    pn33: TPanel;
    lbSuma33: TLabel;
    Panel59: TPanel;
    JvGradient33: TJvGradient;
    lb33: TLabel;
    dbg33: TJvDBGrid;
    pn34: TPanel;
    lbSuma34: TLabel;
    Panel61: TPanel;
    JvGradient34: TJvGradient;
    lb34: TLabel;
    dbg34: TJvDBGrid;
    pn35: TPanel;
    lbSuma35: TLabel;
    Panel63: TPanel;
    JvGradient35: TJvGradient;
    lb35: TLabel;
    dbg35: TJvDBGrid;
    pnCabecera: TPanel;
    lbLunes: TLabel;
    lbMartes: TLabel;
    lbMiercoles: TLabel;
    lbJueves: TLabel;
    lbViernes: TLabel;
    lbSabado: TLabel;
    lbDomingo: TLabel;
    DSCtasBancarias: TDataSource;
    CDS3: TClientDataSet;
    CDS4: TClientDataSet;
    DS3: TDataSource;
    DS5: TDataSource;
    CDS5: TClientDataSet;
    CDS6: TClientDataSet;
    CDS7: TClientDataSet;
    DS6: TDataSource;
    DS7: TDataSource;
    DS4: TDataSource;
    CDS10: TClientDataSet;
    CDS11: TClientDataSet;
    DS10: TDataSource;
    DS12: TDataSource;
    CDS12: TClientDataSet;
    CDS13: TClientDataSet;
    CDS14: TClientDataSet;
    DS13: TDataSource;
    DS14: TDataSource;
    DS11: TDataSource;
    CDS21: TClientDataSet;
    DS21: TDataSource;
    CDS20: TClientDataSet;
    DS20: TDataSource;
    CDS19: TClientDataSet;
    DS19: TDataSource;
    CDS18: TClientDataSet;
    DS18: TDataSource;
    CDS17: TClientDataSet;
    DS17: TDataSource;
    CDS28: TClientDataSet;
    DS28: TDataSource;
    CDS27: TClientDataSet;
    DS27: TDataSource;
    CDS26: TClientDataSet;
    DS26: TDataSource;
    CDS25: TClientDataSet;
    DS25: TDataSource;
    CDS24: TClientDataSet;
    DS24: TDataSource;
    ActionList1: TActionList;
    Buscar: TAction;
    pn36: TPanel;
    lbSuma36: TLabel;
    Panel11: TPanel;
    JvGradient36: TJvGradient;
    lb36: TLabel;
    dbg36: TJvDBGrid;
    pn37: TPanel;
    lbSuma37: TLabel;
    Panel15: TPanel;
    JvGradient37: TJvGradient;
    lb37: TLabel;
    dbg37: TJvDBGrid;
    pn38: TPanel;
    lbSuma38: TLabel;
    Panel19: TPanel;
    JvGradient38: TJvGradient;
    lb38: TLabel;
    dbg38: TJvDBGrid;
    pn39: TPanel;
    lbSuma39: TLabel;
    Panel23: TPanel;
    JvGradient39: TJvGradient;
    lb39: TLabel;
    dbg39: TJvDBGrid;
    pn40: TPanel;
    lbSuma40: TLabel;
    Panel27: TPanel;
    JvGradient40: TJvGradient;
    lb40: TLabel;
    dbg40: TJvDBGrid;
    pn41: TPanel;
    lbSuma41: TLabel;
    Panel32: TPanel;
    JvGradient41: TJvGradient;
    lb41: TLabel;
    dbg41: TJvDBGrid;
    pn42: TPanel;
    lbSuma42: TLabel;
    Panel36: TPanel;
    JvGradient42: TJvGradient;
    lb42: TLabel;
    dbg42: TJvDBGrid;
    TraerMovimientos: TAction;
    CDS35: TClientDataSet;
    DS35: TDataSource;
    CDS34: TClientDataSet;
    DS34: TDataSource;
    CDS33: TClientDataSet;
    DS33: TDataSource;
    CDS32: TClientDataSet;
    DS32: TDataSource;
    CDS31: TClientDataSet;
    DS31: TDataSource;
    CDS30: TClientDataSet;
    DS30: TDataSource;
    CDS29: TClientDataSet;
    DS29: TDataSource;
    CDS42: TClientDataSet;
    CDS41: TClientDataSet;
    CDS40: TClientDataSet;
    CDS39: TClientDataSet;
    CDS38: TClientDataSet;
    CDS37: TClientDataSet;
    CDS36: TClientDataSet;
    DS36: TDataSource;
    DS37: TDataSource;
    DS38: TDataSource;
    DS39: TDataSource;
    DS40: TDataSource;
    DS41: TDataSource;
    DS42: TDataSource;
    VerDetalle: TAction;
    pnDetalle: TPanel;
    lbXY: TLabel;
    dbgDetalle: TJvDBGrid;
    CDSInformChe: TClientDataSet;
    DSInformChe: TDataSource;
    DSPInformChe: TDataSetProvider;
    frxPDFExport1: TfrxPDFExport;
    frxCSVExport1: TfrxCSVExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxReporte: TfrxReport;
    frxDBDetalle: TfrxDBDataset;
    Imprimir: TAction;
    BitBtn1: TBitBtn;
    dbcCuenta: TJvDBLookupCombo;
    CDS7DIA: TSmallintField;
    CDS7NROSEMANA: TIntegerField;
    CDS7FECHA_COBRO: TSQLTimeStampField;
    CDS7ORDEN_DE: TStringField;
    CDS7NUMERO: TIntegerField;
    CDS7IMPORTE: TFMTBCDField;
    CDS6DIA: TSmallintField;
    CDS6NROSEMANA: TIntegerField;
    CDS6FECHA_COBRO: TSQLTimeStampField;
    CDS6ORDEN_DE: TStringField;
    CDS6NUMERO: TIntegerField;
    CDS6IMPORTE: TFMTBCDField;
    CDS5DIA: TSmallintField;
    CDS5NROSEMANA: TIntegerField;
    CDS5FECHA_COBRO: TSQLTimeStampField;
    CDS5ORDEN_DE: TStringField;
    CDS5NUMERO: TIntegerField;
    CDS5IMPORTE: TFMTBCDField;
    CDS4DIA: TSmallintField;
    CDS4NROSEMANA: TIntegerField;
    CDS4FECHA_COBRO: TSQLTimeStampField;
    CDS4ORDEN_DE: TStringField;
    CDS4NUMERO: TIntegerField;
    CDS4IMPORTE: TFMTBCDField;
    CDS3DIA: TSmallintField;
    CDS3NROSEMANA: TIntegerField;
    CDS3FECHA_COBRO: TSQLTimeStampField;
    CDS3ORDEN_DE: TStringField;
    CDS3NUMERO: TIntegerField;
    CDS3IMPORTE: TFMTBCDField;
    CDS2DIA: TSmallintField;
    CDS2NROSEMANA: TIntegerField;
    CDS2FECHA_COBRO: TSQLTimeStampField;
    CDS2ORDEN_DE: TStringField;
    CDS2NUMERO: TIntegerField;
    CDS2IMPORTE: TFMTBCDField;
    CDS1DIA: TSmallintField;
    CDS1NROSEMANA: TIntegerField;
    CDS1FECHA_COBRO: TSQLTimeStampField;
    CDS1ORDEN_DE: TStringField;
    CDS1NUMERO: TIntegerField;
    CDS1IMPORTE: TFMTBCDField;
    CDS14DIA: TSmallintField;
    CDS14NROSEMANA: TIntegerField;
    CDS14FECHA_COBRO: TSQLTimeStampField;
    CDS14ORDEN_DE: TStringField;
    CDS14NUMERO: TIntegerField;
    CDS14IMPORTE: TFMTBCDField;
    CDS13DIA: TSmallintField;
    CDS13NROSEMANA: TIntegerField;
    CDS13FECHA_COBRO: TSQLTimeStampField;
    CDS13ORDEN_DE: TStringField;
    CDS13NUMERO: TIntegerField;
    CDS13IMPORTE: TFMTBCDField;
    CDS12DIA: TSmallintField;
    CDS12NROSEMANA: TIntegerField;
    CDS12FECHA_COBRO: TSQLTimeStampField;
    CDS12ORDEN_DE: TStringField;
    CDS12NUMERO: TIntegerField;
    CDS12IMPORTE: TFMTBCDField;
    CDS11DIA: TSmallintField;
    CDS11NROSEMANA: TIntegerField;
    CDS11FECHA_COBRO: TSQLTimeStampField;
    CDS11ORDEN_DE: TStringField;
    CDS11NUMERO: TIntegerField;
    CDS11IMPORTE: TFMTBCDField;
    CDS10DIA: TSmallintField;
    CDS10NROSEMANA: TIntegerField;
    CDS10FECHA_COBRO: TSQLTimeStampField;
    CDS10ORDEN_DE: TStringField;
    CDS10NUMERO: TIntegerField;
    CDS10IMPORTE: TFMTBCDField;
    CDS9DIA: TSmallintField;
    CDS9NROSEMANA: TIntegerField;
    CDS9FECHA_COBRO: TSQLTimeStampField;
    CDS9ORDEN_DE: TStringField;
    CDS9NUMERO: TIntegerField;
    CDS9IMPORTE: TFMTBCDField;
    CDS8DIA: TSmallintField;
    CDS8NROSEMANA: TIntegerField;
    CDS8FECHA_COBRO: TSQLTimeStampField;
    CDS8ORDEN_DE: TStringField;
    CDS8NUMERO: TIntegerField;
    CDS8IMPORTE: TFMTBCDField;
    CDS21DIA: TSmallintField;
    CDS21NROSEMANA: TIntegerField;
    CDS21FECHA_COBRO: TSQLTimeStampField;
    CDS21ORDEN_DE: TStringField;
    CDS21NUMERO: TIntegerField;
    CDS21IMPORTE: TFMTBCDField;
    CDS20DIA: TSmallintField;
    CDS20NROSEMANA: TIntegerField;
    CDS20FECHA_COBRO: TSQLTimeStampField;
    CDS20ORDEN_DE: TStringField;
    CDS20NUMERO: TIntegerField;
    CDS20IMPORTE: TFMTBCDField;
    CDS19DIA: TSmallintField;
    CDS19NROSEMANA: TIntegerField;
    CDS19FECHA_COBRO: TSQLTimeStampField;
    CDS19ORDEN_DE: TStringField;
    CDS19NUMERO: TIntegerField;
    CDS19IMPORTE: TFMTBCDField;
    CDS18DIA: TSmallintField;
    CDS18NROSEMANA: TIntegerField;
    CDS18FECHA_COBRO: TSQLTimeStampField;
    CDS18ORDEN_DE: TStringField;
    CDS18NUMERO: TIntegerField;
    CDS18IMPORTE: TFMTBCDField;
    CDS17DIA: TSmallintField;
    CDS17NROSEMANA: TIntegerField;
    CDS17FECHA_COBRO: TSQLTimeStampField;
    CDS17ORDEN_DE: TStringField;
    CDS17NUMERO: TIntegerField;
    CDS17IMPORTE: TFMTBCDField;
    CDS16DIA: TSmallintField;
    CDS16NROSEMANA: TIntegerField;
    CDS16FECHA_COBRO: TSQLTimeStampField;
    CDS16ORDEN_DE: TStringField;
    CDS16NUMERO: TIntegerField;
    CDS16IMPORTE: TFMTBCDField;
    CDS15DIA: TSmallintField;
    CDS15NROSEMANA: TIntegerField;
    CDS15FECHA_COBRO: TSQLTimeStampField;
    CDS15ORDEN_DE: TStringField;
    CDS15NUMERO: TIntegerField;
    CDS15IMPORTE: TFMTBCDField;
    CDS28DIA: TSmallintField;
    CDS28NROSEMANA: TIntegerField;
    CDS28FECHA_COBRO: TSQLTimeStampField;
    CDS28ORDEN_DE: TStringField;
    CDS28NUMERO: TIntegerField;
    CDS28IMPORTE: TFMTBCDField;
    CDS27DIA: TSmallintField;
    CDS27NROSEMANA: TIntegerField;
    CDS27FECHA_COBRO: TSQLTimeStampField;
    CDS27ORDEN_DE: TStringField;
    CDS27NUMERO: TIntegerField;
    CDS27IMPORTE: TFMTBCDField;
    CDS26DIA: TSmallintField;
    CDS26NROSEMANA: TIntegerField;
    CDS26FECHA_COBRO: TSQLTimeStampField;
    CDS26ORDEN_DE: TStringField;
    CDS26NUMERO: TIntegerField;
    CDS26IMPORTE: TFMTBCDField;
    CDS25DIA: TSmallintField;
    CDS25NROSEMANA: TIntegerField;
    CDS25FECHA_COBRO: TSQLTimeStampField;
    CDS25ORDEN_DE: TStringField;
    CDS25NUMERO: TIntegerField;
    CDS25IMPORTE: TFMTBCDField;
    CDS24DIA: TSmallintField;
    CDS24NROSEMANA: TIntegerField;
    CDS24FECHA_COBRO: TSQLTimeStampField;
    CDS24ORDEN_DE: TStringField;
    CDS24NUMERO: TIntegerField;
    CDS24IMPORTE: TFMTBCDField;
    CDS23DIA: TSmallintField;
    CDS23NROSEMANA: TIntegerField;
    CDS23FECHA_COBRO: TSQLTimeStampField;
    CDS23ORDEN_DE: TStringField;
    CDS23NUMERO: TIntegerField;
    CDS23IMPORTE: TFMTBCDField;
    CDS22DIA: TSmallintField;
    CDS22NROSEMANA: TIntegerField;
    CDS22FECHA_COBRO: TSQLTimeStampField;
    CDS22ORDEN_DE: TStringField;
    CDS22NUMERO: TIntegerField;
    CDS22IMPORTE: TFMTBCDField;
    CDS35DIA: TSmallintField;
    CDS35NROSEMANA: TIntegerField;
    CDS35FECHA_COBRO: TSQLTimeStampField;
    CDS35ORDEN_DE: TStringField;
    CDS35NUMERO: TIntegerField;
    CDS35IMPORTE: TFMTBCDField;
    CDS34DIA: TSmallintField;
    CDS34NROSEMANA: TIntegerField;
    CDS34FECHA_COBRO: TSQLTimeStampField;
    CDS34ORDEN_DE: TStringField;
    CDS34NUMERO: TIntegerField;
    CDS34IMPORTE: TFMTBCDField;
    CDS33DIA: TSmallintField;
    CDS33NROSEMANA: TIntegerField;
    CDS33FECHA_COBRO: TSQLTimeStampField;
    CDS33ORDEN_DE: TStringField;
    CDS33NUMERO: TIntegerField;
    CDS33IMPORTE: TFMTBCDField;
    CDS32DIA: TSmallintField;
    CDS32NROSEMANA: TIntegerField;
    CDS32FECHA_COBRO: TSQLTimeStampField;
    CDS32ORDEN_DE: TStringField;
    CDS32NUMERO: TIntegerField;
    CDS32IMPORTE: TFMTBCDField;
    CDS31DIA: TSmallintField;
    CDS31NROSEMANA: TIntegerField;
    CDS31FECHA_COBRO: TSQLTimeStampField;
    CDS31ORDEN_DE: TStringField;
    CDS31NUMERO: TIntegerField;
    CDS31IMPORTE: TFMTBCDField;
    CDS30DIA: TSmallintField;
    CDS30NROSEMANA: TIntegerField;
    CDS30FECHA_COBRO: TSQLTimeStampField;
    CDS30ORDEN_DE: TStringField;
    CDS30NUMERO: TIntegerField;
    CDS30IMPORTE: TFMTBCDField;
    CDS29DIA: TSmallintField;
    CDS29NROSEMANA: TIntegerField;
    CDS29FECHA_COBRO: TSQLTimeStampField;
    CDS29ORDEN_DE: TStringField;
    CDS29NUMERO: TIntegerField;
    CDS29IMPORTE: TFMTBCDField;
    CDS42DIA: TSmallintField;
    CDS42NROSEMANA: TIntegerField;
    CDS42FECHA_COBRO: TSQLTimeStampField;
    CDS42ORDEN_DE: TStringField;
    CDS42NUMERO: TIntegerField;
    CDS42IMPORTE: TFMTBCDField;
    CDS41DIA: TSmallintField;
    CDS41NROSEMANA: TIntegerField;
    CDS41FECHA_COBRO: TSQLTimeStampField;
    CDS41ORDEN_DE: TStringField;
    CDS41NUMERO: TIntegerField;
    CDS41IMPORTE: TFMTBCDField;
    CDS40DIA: TSmallintField;
    CDS40NROSEMANA: TIntegerField;
    CDS40FECHA_COBRO: TSQLTimeStampField;
    CDS40ORDEN_DE: TStringField;
    CDS40NUMERO: TIntegerField;
    CDS40IMPORTE: TFMTBCDField;
    CDS39DIA: TSmallintField;
    CDS39NROSEMANA: TIntegerField;
    CDS39FECHA_COBRO: TSQLTimeStampField;
    CDS39ORDEN_DE: TStringField;
    CDS39NUMERO: TIntegerField;
    CDS39IMPORTE: TFMTBCDField;
    CDS38DIA: TSmallintField;
    CDS38NROSEMANA: TIntegerField;
    CDS38FECHA_COBRO: TSQLTimeStampField;
    CDS38ORDEN_DE: TStringField;
    CDS38NUMERO: TIntegerField;
    CDS38IMPORTE: TFMTBCDField;
    CDS37DIA: TSmallintField;
    CDS37NROSEMANA: TIntegerField;
    CDS37FECHA_COBRO: TSQLTimeStampField;
    CDS37ORDEN_DE: TStringField;
    CDS37NUMERO: TIntegerField;
    CDS37IMPORTE: TFMTBCDField;
    CDS36DIA: TSmallintField;
    CDS36NROSEMANA: TIntegerField;
    CDS36FECHA_COBRO: TSQLTimeStampField;
    CDS36ORDEN_DE: TStringField;
    CDS36NUMERO: TIntegerField;
    CDS36IMPORTE: TFMTBCDField;
    CDSInformCheNROSEMANA: TIntegerField;
    CDSInformCheDIASEMANA: TSmallintField;
    CDSInformCheFECHA_COBRO: TSQLTimeStampField;
    CDSInformCheORDEN_DE: TStringField;
    CDSInformCheNUMERO: TIntegerField;
    CDSInformCheIMPORTE: TFMTBCDField;
    CDSInformCheDIANOMBRE: TStringField;
    CDSInformCheNOMBRE_CHE: TStringField;
    Fecha: TJvDateEdit;
    UpDown1: TUpDown;
    Panel9: TPanel;
    QCheques: TFDQuery;
    QInformChe: TFDQuery;
    QCtasBan: TFDQuery;
    QCtasBanID_CUENTA: TIntegerField;
    QCtasBanNOMBRE: TStringField;
    QCtasBanNRO_CUENTA: TStringField;
    QChequesDIA: TSmallintField;
    QChequesNROSEMANA: TSmallintField;
    QChequesFECHA_COBRO: TSQLTimeStampField;
    QChequesORDEN_DE: TStringField;
    QChequesNUMERO: TIntegerField;
    QChequesIMPORTE: TFMTBCDField;
    QChequesDEBITADO: TStringField;
    CDS7DEBITADO: TStringField;
    CDS6DEBITADO: TStringField;
    CDS5DEBITADO: TStringField;
    CDS4DEBITADO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure TraerMovimientosExecute(Sender: TObject);
    procedure dbg3MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure CDSInformCheCalcFields(DataSet: TDataSet);
    procedure Panel1DblClick(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FechaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   Desde,Hasta:TDateTime;
 
  end;

var
  FormChequesEmitidosDetalle: TFormChequesEmitidosDetalle;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormChequesEmitidosDetalle.BuscarExecute(Sender: TObject);
var d,m,y:word;
DiaSem,i,CanDias:Integer;
Nombre:String;
C:TObject;
Dia:integer;
begin
 // DecodeDate(MonthCalendar1.Date,y,m,d);
  DecodeDate(Fecha.Date,y,m,d);

  Desde:=EncodeDate(y,m,1);
  DiaSem:= DayOfWeek(EncodeDate(y,m,1));
  pn1.Visible:= Not(DiaSem > 2);
  pn2.Visible:= Not(DiaSem > 3);
  pn3.Visible:= Not(DiaSem > 4);
  pn4.Visible:= Not(DiaSem > 5);
  pn5.Visible:= Not(DiaSem > 6);
  pn6.Visible:= Not(DiaSem > 7);
  if DiaSem=10 then
    begin
  pn1.Visible:= Not(DiaSem =1 );
  pn2.Visible:= Not(DiaSem =1 );
  pn3.Visible:= Not(DiaSem =1 );
  pn4.Visible:= Not(DiaSem =1 );
  pn5.Visible:= Not(DiaSem =1 );
  pn6.Visible:= Not(DiaSem =1 );
  pn7.Visible:= (DiaSem =1 );

    end;
  CanDias:=DaysInMonth(y,m);
  Hasta:=EncodeDate(y,m,CanDias);
  pn29.Visible:= Not(CanDias < 31-DiaSem);
  pn30.Visible:= Not(CanDias < 32-DiaSem);
  pn31.Visible:= Not(CanDias < 33-DiaSem);
  pn32.Visible:= Not(CanDias < 34-DiaSem);
  pn33.Visible:= Not(CanDias < 35-DiaSem);
  pn34.Visible:= Not(CanDias < 36-DiaSem);
  pn35.Visible:= Not(CanDias < 37-DiaSem);
  pn36.Visible:= Not(CanDias < 38-DiaSem);
  pn37.Visible:= Not(CanDias < 39-DiaSem);
  pn38.Visible:= Not(CanDias < 40-DiaSem);
  pn39.Visible:= Not(CanDias < 41-DiaSem);
  pn40.Visible:= Not(CanDias < 42-DiaSem);
  pn41.Visible:= Not(CanDias < 43-DiaSem);
  pn42.Visible:= Not(CanDias < 44-DiaSem);
  Dia:=1;
  for i :=1 to 42 do
    begin
     Nombre:='pn'+IntToStr(i);
     if ((FindComponent(Nombre)) as TPanel).Visible=True  Then
        begin
          (FindComponent('lb'+IntToStr(i)) as TLabel).Caption:=IntToStr(Dia);
          Dia:=Dia+1;
        end;
    end;
   TraerMovimientos.Execute;
end;

procedure TFormChequesEmitidosDetalle.CDSInformCheCalcFields(DataSet: TDataSet);
begin
  case CDSInformCheDIASEMANA.Value of
    0:CDSInformCheDIANOMBRE.Value:='Domingo';
    1:CDSInformCheDIANOMBRE.Value:='Lunes';
    2:CDSInformCheDIANOMBRE.Value:='Martes';
    3:CDSInformCheDIANOMBRE.Value:='Miercoles';
    4:CDSInformCheDIANOMBRE.Value:='Jueves';
    5:CDSInformCheDIANOMBRE.Value:='Viernes';
    6:CDSInformCheDIANOMBRE.Value:='Sabado';
  end;

  CDSInformCheNOMBRE_CHE.Value:=Copy(CDSInformCheORDEN_DE.Value,1,25)+'('+
                                     CDSInformCheNUMERO.AsString + ')';
end;

procedure TFormChequesEmitidosDetalle.dbg3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var p :TPoint;
begin
  p:=Mouse.CursorPos;
 // lbX.Caption:=IntToStr(p.x);
 // lbY.Caption:=IntToStr(p.y);

  if (((X<10) or  (x>130)) or ((y<5) or (y>25)))  and pnDetalle.Visible=True then
    pnDetalle.Visible:=False;
  if (Shift=[ssShift]) and (pnDetalle.Visible=False) then
    begin
     if ((X>10) and (x<130)) and ((y>5) and (y<25)) then
       begin
         dbgDetalle.DataSource:=(Sender as TJvDBGrid).DataSource;
         pnDetalle.Left:=P.X-50;
         pnDetalle.Top :=P.y-150;
         if (P.X-50+pnDetalle.Width)>(Panel1.Width) then
           pnDetalle.Left:=Panel1.Width-(pnDetalle.Width)-5;
         if (P.Y-150+pnDetalle.Height)>(Panel1.Height) then
           pnDetalle.Top:=Panel1.Height-pnDetalle.Height-5;

         lbXY.Caption:=IntToStr(pnDetalle.Left)+'-'+IntToStr(pnDetalle.Top);
         pnDetalle.Visible:=True;
       end;
    end;

end;

procedure TFormChequesEmitidosDetalle.FechaChange(Sender: TObject);
begin
 Buscar.Execute;
end;

procedure TFormChequesEmitidosDetalle.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QCtasBan.Close;
  Action:=caFree;
end;

procedure TFormChequesEmitidosDetalle.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  QCtasBan.Open;
 // JvListView1.Items.Add.SubItems.add('Cuarta');

{  JvListView1.Items.Add('Primera'^I'Santander'^I'Tercera Columna');
  JvListView1.Items.Add('Primera'^I'Santander'^I'Tercera Columna');
 }
//  JvListView1.Items.Item

//  JvgListBox1.c Columns:=3;
//  JvgListBox1. TextIndent:=40;

end;

procedure TFormChequesEmitidosDetalle.FormDblClick(Sender: TObject);
begin
  frxReporte.DesignReport;
end;

procedure TFormChequesEmitidosDetalle.FormDestroy(Sender: TObject);
begin
  FormChequesEmitidosDetalle:=nil;
end;

procedure TFormChequesEmitidosDetalle.FormShow(Sender: TObject);
begin
  Buscar.Execute;
end;

procedure TFormChequesEmitidosDetalle.ImprimirExecute(Sender: TObject);
begin
  frxReporte.LoadFromFile(DMMain_FD.PathReportesLst+'\ControlCheEmitidosDetalle.fr3');
 // frxReporte.Variables['Mes']:=''''+ lbMeses.Items[lbMeses.ItemIndex]+'''';
 // frxReporte.Variables['Anio']:=''''+ edAnio.Text+'''';
 // frxReporte.Variables['cuenta']:=''''+ rxcCuentas.Text+'''';
  frxReporte.ShowReport;
end;

procedure TFormChequesEmitidosDetalle.Panel1DblClick(Sender: TObject);
begin
  frxReporte.DesignReport;
end;

procedure TFormChequesEmitidosDetalle.TraerMovimientosExecute(Sender: TObject);
var Dia:Integer;
I:Integer;
Nombre:String;
aux:real;
begin

  Dia:=1;
  for i :=1 to 42 do
    begin
      Nombre:='pn'+IntToStr(i);
      if ((FindComponent(Nombre)) as TPanel).Visible=True  Then
        begin
          (FindComponent('CDS'+IntToStr(i)) as TClientDataSet).Close;
          (FindComponent('CDS'+IntToStr(i)) as TClientDataSet).Params.ParamByName('desde').Clear;
          (FindComponent('CDS'+IntToStr(i)) as TClientDataSet).Params.ParamByName('hasta').Clear;
          (FindComponent('CDS'+IntToStr(i)) as TClientDataSet).Params.ParamByName('id').Clear;
          (FindComponent('CDS'+IntToStr(i)) as TClientDataSet).Params.ParamByName('Dia').Clear;



          (FindComponent('CDS'+IntToStr(i)) as TClientDataSet).Params.ParamByName('desde').Value := Desde;//MonthCalendar1.MinDate;
          (FindComponent('CDS'+IntToStr(i)) as TClientDataSet).Params.ParamByName('hasta').Value := Hasta;//MonthCalendar1.MaxDate;
          (FindComponent('CDS'+IntToStr(i)) as TClientDataSet).Params.ParamByName('id').Value    := dbcCuenta.KeyValue;
          (FindComponent('CDS'+IntToStr(i)) as TClientDataSet).Params.ParamByName('Dia').Value   := Dia;
          (FindComponent('CDS'+IntToStr(i)) as TClientDataSet).Open;

          TFloatField((FindComponent('CDS'+IntToStr(i)) as TClientDataSet).FieldByName('importe')).DisplayFormat:='###,###,##0.00';
          (FindComponent('CDS'+IntToStr(i)) as TClientDataSet).First;
          (FindComponent('CDS'+IntToStr(i)) as TClientDataSet).DisableControls;
          Aux:=0;
           while not((FindComponent('CDS'+IntToStr(i)) as TClientDataSet).Eof) do
            begin
              Aux:=Aux+(FindComponent('CDS'+IntToStr(i)) as TClientDataSet).FieldByName('importe').Value;
              (FindComponent('CDS'+IntToStr(i)) as TClientDataSet).Next;
            end;
           (FindComponent('lbSuma'+IntToStr(i)) as TLabel).Caption:=FormatFloat(',0.00',Aux);
           (FindComponent('lbSuma'+IntToStr(i)) as TLabel).Visible:=FormatFloat(',0.00',Aux)<>'0.00';

          (FindComponent('CDS'+IntToStr(i)) as TClientDataSet).EnableControls;

          Dia:=Dia+1;
        end;

    end;
    CDSInformChe.Close;
    CDSInformChe.Params.ParamByName('desde').Value := Desde;
    CDSInformChe.Params.ParamByName('hasta').Value := Hasta;
    CDSInformChe.Params.ParamByName('id').Value := dbcCuenta.KeyValue;
    CDSInformChe.Open;


end;

procedure TFormChequesEmitidosDetalle.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
begin
  if Button=btNext then
    Fecha.Date:=IncMonth(Fecha.Date,1)
  else
    if Button=btPrev then
      Fecha.Date:=IncMonth(Fecha.Date,-1);


end;

end.