unit UPrecioEspecialCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, Provider, DBClient, DB, SqlExpr, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxSkinsCore, dxSkinOffice2007Black, dxSkinscxPCPainter, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPSStdGrLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxPSCore, dxPSBaseGridLnk, dxPSGrLnks, Grids, AdvObj, BaseGrid, AdvGrid,
  frxClass, frxExportPDF, StdCtrls, Mask, JvExMask, JvToolEdit, JvBaseEdits,
  Buttons, ExtCtrls,Math, AdvUtil, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinsdxRibbonPainter, cxClasses,
  dxPScxPivotGridLnk, dxPScxGridLnk, dxPScxGridLayoutViewLnk, frxExportBaseDialog,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  frCoreClasses, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormLstPreciosEspecialesClientes = class(TForm)
    pnBase: TPanel;
    pnCabecera: TPanel;
    CDSCab: TClientDataSet;
    DSPCab: TDataSetProvider;
    CDSCabID: TIntegerField;
    CDSCabNOMBRE: TStringField;
    DSPArticulos: TDataSetProvider;
    CDSArticulos: TClientDataSet;
    CDSArticulosCODIGOARTICULO: TStringField;
    CDSArticulosDESCRIPCION: TStringField;
    btVer: TButton;
    Panel1: TPanel;
    btRef: TButton;
    DSArticulos: TDataSource;
    BitBtn1: TBitBtn;
    frxPDFExport1: TfrxPDFExport;
    frxReport1: TfrxReport;
    chClientes: TCheckBox;
    CDSCabCODIGOCLIENTE: TStringField;
    CDSCabMUESTRADIRECCION: TStringField;
    rgDetalle: TRadioGroup;
    Label2: TLabel;
    edRecargo: TJvCalcEdit;
    Label1: TLabel;
    lbEstado: TLabel;
    spAplicarRecargo: TSpeedButton;
    CDSArt: TClientDataSet;
    DSPArt: TDataSetProvider;
    CDSArtID_CABECERA: TIntegerField;
    CDSArtCODIGOCLIENTE: TStringField;
    CDSArtNOMBRE: TStringField;
    CDSArtID: TIntegerField;
    CDSArtCODIGOARTICULO: TStringField;
    CDSArtDESCRIPCION: TStringField;
    CDSArtFECHA: TSQLTimeStampField;
    DSArt: TDataSource;
    kgPrecios: TAdvStringGrid;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxStringGridReportLink;
    QArt: TFDQuery;
    CDSArtPRECIOVENTA: TFloatField;
    CDSArtPRECIOPACTADO: TFloatField;
    QCab: TFDQuery;
    QPrecios: TFDQuery;
    QBuscaId: TFDQuery;
    QArticulos: TFDQuery;
    spPrecios: TFDStoredProc;
    QPreciosCODIGOCLIENTE: TStringField;
    QPreciosCODIGOARTICULO: TStringField;
    QPreciosDESCRIPCION: TStringField;
    QPreciosPRECIOPACTADO: TFloatField;
    procedure btVerClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure kgPrecios_OldMouseDblClickCell(Sender: TObject; ACol, ARow: Integer);
    procedure btCerrarClick(Sender: TObject);
    procedure btRefClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure kgPrecios_OldMouseClickCell(Sender: TObject; ACol, ARow: Integer);
    procedure kgPrecios_OldMouseEnterCell(Sender: TObject; ACol, ARow: Integer);
    procedure kgPrecios_OldChanged(Sender: TObject; ACol, ARow: Integer);
    procedure kgPrecios_OldSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure FormShow(Sender: TObject);
    procedure edRecargoKeyPress(Sender: TObject; var Key: Char);
    procedure spAplicarRecargoClick(Sender: TObject);
    procedure kgPreciosSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure kgPreciosCellsChanged(Sender: TObject; R: TRect);
    procedure kgPreciosClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure kgPreciosDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure kgPreciosCanClickCell(Sender: TObject; ARow, ACol: Integer;
      var Allow: Boolean);
    procedure kgPreciosGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLstPreciosEspecialesClientes: TFormLstPreciosEspecialesClientes;

implementation

{$R *.dfm}
Uses UPreciosEspecialesClientes, UReferenciasPreciosClientes,
  UClientes_2,UDMain_FD;

procedure TFormLstPreciosEspecialesClientes.kgPreciosCanClickCell(
  Sender: TObject; ARow, ACol: Integer; var Allow: Boolean);
begin
 if (( ACol=0) and (ARow>0)) then
    begin
      if Not(Assigned(FormClientes_2)) then
        FormClientes_2:=TFormClientes_2.Create(Self);
      FormClientes_2.DatoNew:=kgPrecios.Cells[0,ARow];
      FormClientes_2.Recuperar.Execute;
      FormClientes_2.Show;
    end;
end;

procedure TFormLstPreciosEspecialesClientes.kgPreciosCellsChanged(
  Sender: TObject; R: TRect);
begin
  if kgPrecios.Cells[0,kgPrecios.Row]<>'' then
    begin
      spPrecios.Close;
      spPrecios.ParamByName('cliente').AsString:=kgPrecios.Cells[0,kgPrecios.Row];
      spPrecios.ParamByName('codigo').AsString :=kgPrecios.Cells[kgPrecios.Col,0];
      spPrecios.ParamByName('Precio').Value    :=StrToFloat(kgPrecios.Cells[kgPrecios.Col,kgPrecios.Row]);
      spPrecios.ParamByName('Fecha').Value     :=date;
      spPrecios.ExecProc;
      spPrecios.Close;
      kgPrecios.Cells[kgPrecios.Col,kgPrecios.Row]:=FormatFloat(',0.00',StrToFloat(kgPrecios.Cells[kgPrecios.Col,kgPrecios.Row]));
    end;
end;



procedure TFormLstPreciosEspecialesClientes.kgPreciosClickCell(
  Sender: TObject; ARow, ACol: Integer);
begin
if (( ACol=0) and (ARow>0)) and (chClientes.Checked) then
    begin
      if Not(Assigned(FormClientes_2)) then
        FormClientes_2:=TFormClientes_2.Create(Self);
      FormClientes_2.DatoNew:=kgPrecios.Cells[0,ARow];
      FormClientes_2.Recuperar.Execute;
      FormClientes_2.Show;
    end
  else
    if Assigned(FormClientes_2) then FormClientes_2.Close;
end;

procedure TFormLstPreciosEspecialesClientes.kgPreciosDblClickCell(
  Sender: TObject; ARow, ACol: Integer);
begin
if (ARow>0) then
    begin
      if Not(Assigned(FormPreciosEspecialesClientes)) then
        FormPreciosEspecialesClientes:=TFormPreciosEspecialesClientes.Create(self);
      FormPreciosEspecialesClientes.Show;
      QBuscaId.Close;
      QBuscaId.ParamByName('codigo').Value:=kgPrecios.Cells[0,ARow];
      QBuscaId.Open;
      if QBuscaId.Fields[0].AsString<>'' then
        begin
          FormPreciosEspecialesClientes.DatoNew:= QBuscaId.Fields[0].AsString;
          FormPreciosEspecialesClientes.Recuperar.Execute;
        end;
      QBuscaId.Close;
   end;
end;

procedure TFormLstPreciosEspecialesClientes.kgPreciosGetAlignment(
  Sender: TObject; ARow, ACol: Integer; var HAlign: TAlignment;
  var VAlign: TVAlignment);
begin
 if ACol<=1 then
    HAlign:=taLeftJustify;
end;

procedure TFormLstPreciosEspecialesClientes.kgPreciosSelectCell(
  Sender: TObject; ACol, ARow: Integer; var CanSelect: Boolean);
begin
 if ACol<2 then  CanSelect:=False
    else
      CanSelect:=True;
end;

procedure TFormLstPreciosEspecialesClientes.BitBtn1Click(Sender: TObject);
begin
//  kgPrecios.PageSetup.MarginBottom:=0;
//  kgPrecios.PageSetup.MarginTop   :=0;
//  kgPrecios.PageSetup.MarginLeft  :=0;
//  kgPrecios.PageSetup.MarginRight :=0;
  dxComponentPrinter1Link1.Preview(true);// KPrintSetupDialog1.Execute;
end;

procedure TFormLstPreciosEspecialesClientes.btCerrarClick(Sender: TObject);
begin
  FormReferencias.Visible:=False;
end;

procedure TFormLstPreciosEspecialesClientes.btRefClick(Sender: TObject);
begin
  FormReferencias.Visible:=True;
  FormReferencias.Show;

end;

procedure TFormLstPreciosEspecialesClientes.btVerClick(Sender: TObject);
begin
//  kgPrecios.ClearGrid;
  kgPrecios.ClearAll;

  CDSCab.Close;
  CDSCab.Open;
  CDSArticulos.Close;
  CDSArticulos.Open;
  kgPrecios.RowCount:=CDSCab.RecordCount+1;
  kgPrecios.ColCount:=CDSArticulos.RecordCount+2;
  CDSCab.First;
  while Not(CDSCab.Eof) do
    begin
      kgPrecios.Cells[0,CDSCab.RecNo]:=CDSCabCODIGOCLIENTE.AsString;
      if rgDetalle.ItemIndex=0 then
        kgPrecios.Cells[1,CDSCab.RecNo]:=CDSCabNOMBRE.Value
      else
        if rgDetalle.ItemIndex=1then
          kgPrecios.Cells[1,CDSCab.RecNo]:=CDSCabMUESTRADIRECCION.AsString;
      CDSCab.Next;
    end;

  CDSArticulos.First;
  while Not(CDSArticulos.Eof) do
    begin
      kgPrecios.Cells[CDSArticulos.RecNo+1,0]:=CDSArticulosCODIGOARTICULO.AsString;
      CDSArticulos.Next;
    end;

  CDSCab.First;
  while Not(CDSCab.Eof) do
    begin
      CDSArticulos.First;
      while Not(CDSArticulos.Eof) do
        begin
          QPrecios.Close;
          QPrecios.ParamByName('cliente').Value:= CDSCabCODIGOCLIENTE.AsString;
          QPrecios.ParamByName('codigo').Value := CDSArticulosCODIGOARTICULO.AsString;
          QPrecios.Open;
          if (QPreciosPRECIOPACTADO.AsFloat>0) then
            kgPrecios.Cells[CDSArticulos.RecNo+1,CDSCab.RecNo ]:=FormatFloat(',0.00',QPreciosPRECIOPACTADO.AsFloat)
          else
            kgPrecios.Cells[CDSArticulos.RecNo+1,CDSCab.RecNo ]:= '-';

          CDSArticulos.Next;
        end;
      CDSCab.Next;
    end;

//  if edRecargo.Value>0 then
//    begin
//      Screen.Cursor:=crHourGlass;
//      lbEstado.Caption:='Aplicando recargo...';
//      CDSCab.First;
//      while Not(CDSCab.Eof) do
//        begin
//          CDSArticulos.First;
//          while Not(CDSArticulos.Eof) do
//            begin
//              QPrecios.Close;
//              QPrecios.ParamByName('cliente').Value := CDSCabCODIGOCLIENTE.AsString;
//              QPrecios.ParamByName('codigo').Value  := CDSArticulosCODIGOARTICULO.AsString;
//              QPrecios.Open;
//              Precio:=QPreciosPRECIOPACTADO.AsFloat;
//              if (Precio>0) then
//                begin
//                  kgPrecios.Cells[CDSArticulos.RecNo+1,CDSCab.RecNo ]:= FormatFloat(',0.00',roundto(Precio * (1+(edRecargo.Value * 0.01)),-2));
//                  if chAplicar.Checked then
//                    begin
//                      spPrecios.Close;
//                      spPrecios.ParamByName('cliente').AsString:= CDSCabCODIGOCLIENTE.AsString;
//                      spPrecios.ParamByName('codigo').AsString := CDSArticulosCODIGOARTICULO.AsString;
//                      spPrecios.ParamByName('Precio').Value    := FormatFloat(',0.00',roundto(Precio * (1+(edRecargo.Value * 0.01)),-2));
//                      spPrecios.ParamByName('Fecha').Value     := date;
//                      spPrecios.ExecProc;
//                      spPrecios.Close;
//                    end;
//                end
//              else
//                kgPrecios.Cells[CDSArticulos.RecNo+1,CDSCab.RecNo ]:= '-';
//              CDSArticulos.Next;
//            end;
//          CDSCab.Next;
//        end;

  //    if chAplicar.Checked then
  //      begin
  //        edRecargo.Value  :=0;
  //        chAplicar.Checked:=False;
  //      end;
      lbEstado.Caption:='---';
      Screen.Cursor:=crDefault;
  //  end;

CDSArt.Close;
CDSArt.Open;
end;

procedure TFormLstPreciosEspecialesClientes.edRecargoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    btVer.Click;
end;

procedure TFormLstPreciosEspecialesClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(FormReferencias);
  Action:=caFree;
end;

procedure TFormLstPreciosEspecialesClientes.FormCreate(Sender: TObject);
begin
  AutoSize:=False;
  if Not(Assigned(FormReferencias)) then
    FormReferencias:=TFormReferencias.Create(self);


  btVerClick(Sender);
end;

procedure TFormLstPreciosEspecialesClientes.FormDestroy(Sender: TObject);
begin
  FormLstPreciosEspecialesClientes:=nil;
end;

procedure TFormLstPreciosEspecialesClientes.FormShow(Sender: TObject);
begin
//  kgPrecios.CellSelected(3,1);
  kgPrecios.FocusCell(2,1);
end;

procedure TFormLstPreciosEspecialesClientes.kgPrecios_OldChanged(Sender: TObject;
  ACol, ARow: Integer);
begin
 //if Key=#13 then
    begin
      spPrecios.Close;
      spPrecios.ParamByName('cliente').AsString:=kgPrecios.Cells[0,kgPrecios.Row];
      spPrecios.ParamByName('codigo').AsString :=kgPrecios.Cells[kgPrecios.Col,0];
      spPrecios.ParamByName('Precio').Value    :=StrToFloat(kgPrecios.Cells[kgPrecios.Col,kgPrecios.Row]);
      spPrecios.ParamByName('Fecha').Value     :=date;
      spPrecios.ExecProc;
      spPrecios.Close;
      kgPrecios.Cells[kgPrecios.Col,kgPrecios.Row]:=FormatFloat(',0.00',StrToFloat(kgPrecios.Cells[kgPrecios.Col,kgPrecios.Row]));
    end;
end;


procedure TFormLstPreciosEspecialesClientes.kgPrecios_OldMouseClickCell(
  Sender: TObject; ACol, ARow: Integer);
begin
  if (( ACol=0) and (ARow>0)) then
    begin
      if Not(Assigned(FormClientes_2)) then
        FormClientes_2:=TFormClientes_2.Create(Self);
      FormClientes_2.DatoNew:=kgPrecios.Cells[0,ARow];
      FormClientes_2.Recuperar.Execute;
      FormClientes_2.Show;
    end;
end;

procedure TFormLstPreciosEspecialesClientes.kgPrecios_OldMouseDblClickCell(
  Sender: TObject; ACol, ARow: Integer);
begin
  if (ARow>0) then
    begin
      if Not(Assigned(FormPreciosEspecialesClientes)) then
        FormPreciosEspecialesClientes:=TFormPreciosEspecialesClientes.Create(self);
      FormPreciosEspecialesClientes.Show;
      QBuscaId.Close;
      QBuscaId.ParamByName('codigo').Value:=kgPrecios.Cells[0,ARow];
      QBuscaId.Open;
      if QBuscaId.Fields[0].AsString<>'' then
        begin
          FormPreciosEspecialesClientes.DatoNew:= QBuscaId.Fields[0].AsString;
          FormPreciosEspecialesClientes.Recuperar.Execute;
        end;
      QBuscaId.Close;
   end;
//  ShowMessage('Columna:'+IntToStr(ACol)+' Linea:'+IntToStr(ARow)+ '--' + kgPrecios.Cells[0,ARow] );
end;

procedure TFormLstPreciosEspecialesClientes.kgPrecios_OldMouseEnterCell(
  Sender: TObject; ACol, ARow: Integer);
begin
if (( ACol=0) and (ARow>0)) and (chClientes.Checked) then
    begin
      if Not(Assigned(FormClientes_2)) then
        FormClientes_2:=TFormClientes_2.Create(Self);
      FormClientes_2.DatoNew:=kgPrecios.Cells[0,ARow];
      FormClientes_2.Recuperar.Execute;
      FormClientes_2.Show;


    end
  else
    if Assigned(FormClientes_2) then FormClientes_2.Close;
end;

procedure TFormLstPreciosEspecialesClientes.kgPrecios_OldSelectCell(Sender: TObject;
  ACol, ARow: Integer; var CanSelect: Boolean);
begin
 if ACol<2 then  CanSelect:=False
    else
      CanSelect:=True;
end;

procedure TFormLstPreciosEspecialesClientes.spAplicarRecargoClick(
  Sender: TObject);
var Precio:Extended;
begin
//  kgPrecios.ClearGrid;
  kgPrecios.Clear;

  CDSCab.Close;
  CDSCab.Open;
  CDSArticulos.Close;
  CDSArticulos.Open;
  kgPrecios.RowCount:=CDSCab.RecordCount+1;
  kgPrecios.ColCount:=CDSArticulos.RecordCount+2;
  CDSCab.First;
  while Not(CDSCab.Eof) do
    begin
      kgPrecios.Cells[0,CDSCab.RecNo]:=CDSCabCODIGOCLIENTE.Value;
      if rgDetalle.ItemIndex=0 then
        kgPrecios.Cells[1,CDSCab.RecNo]:=CDSCabNOMBRE.Value
      else
        if rgDetalle.ItemIndex=1then
          kgPrecios.Cells[1,CDSCab.RecNo]:=CDSCabMUESTRADIRECCION.Value;

      CDSCab.Next;
    end;

  CDSArticulos.First;
  while Not(CDSArticulos.Eof) do
    begin
      kgPrecios.Cells[CDSArticulos.RecNo+1,0]:=CDSArticulosCODIGOARTICULO.Value;
      CDSArticulos.Next;
    end;

  CDSCab.First;
  while Not(CDSCab.Eof) do
    begin
      CDSArticulos.First;
      while Not(CDSArticulos.Eof) do
        begin
          QPrecios.Close;
          QPrecios.ParamByName('cliente').Value:= CDSCabCODIGOCLIENTE.AsString;
          QPrecios.ParamByName('codigo').Value := CDSArticulosCODIGOARTICULO.AsString;
          QPrecios.Open;
          if (QPreciosPRECIOPACTADO.AsFloat>0) then
            kgPrecios.Cells[CDSArticulos.RecNo+1,CDSCab.RecNo ]:=FormatFloat(',0.00',QPreciosPRECIOPACTADO.AsFloat)
          else
            kgPrecios.Cells[CDSArticulos.RecNo+1,CDSCab.RecNo ]:= '-';

          CDSArticulos.Next;
        end;
      CDSCab.Next;
    end;

  if edRecargo.Value>0 then
    begin
      Screen.Cursor:=crHourGlass;
      lbEstado.Caption:='Aplicando recargo...';
      CDSCab.First;
      while Not(CDSCab.Eof) do
        begin
          CDSArticulos.First;
          while Not(CDSArticulos.Eof) do
            begin
              QPrecios.Close;
              QPrecios.ParamByName('cliente').Value := CDSCabCODIGOCLIENTE.AsString;
              QPrecios.ParamByName('codigo').Value  := CDSArticulosCODIGOARTICULO.AsString;
              QPrecios.Open;
              Precio:=QPreciosPRECIOPACTADO.AsFloat;
              if (Precio>0) then
                begin
                  kgPrecios.Cells[CDSArticulos.RecNo+1,CDSCab.RecNo ]:= FormatFloat(',0.00',roundto(Precio * (1+(edRecargo.Value * 0.01)),-2));
//                  if chAplicar.Checked then
                    begin
                      spPrecios.Close;
                      spPrecios.ParamByName('cliente').AsString:= CDSCabCODIGOCLIENTE.AsString;
                      spPrecios.ParamByName('codigo').AsString := CDSArticulosCODIGOARTICULO.AsString;
                      spPrecios.ParamByName('Precio').Value    := FormatFloat(',0.00',roundto(Precio * (1+(edRecargo.Value * 0.01)),-2));
                      spPrecios.ParamByName('Fecha').Value     := date;
                      spPrecios.ExecProc;
                      spPrecios.Close;
                    end;
                end
              else
                kgPrecios.Cells[CDSArticulos.RecNo+1,CDSCab.RecNo ]:= '-';
              CDSArticulos.Next;
            end;
          CDSCab.Next;
        end;

 //     if chAplicar.Checked then
        begin
          edRecargo.Value  :=0;
 //         chAplicar.Checked:=False;
        end;
      lbEstado.Caption:='---';
      Screen.Cursor:=crDefault;
    end;

end;

end.
