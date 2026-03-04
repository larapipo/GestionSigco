unit UURelacionPagoVencimientoProveed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, DBClient, Provider, ComCtrls, JvToolEdit,
  StdCtrls, Mask, JvExMask, JvLabel, SqlExpr, JvComponentBase,
  JvFormPlacement, ImgList, ActnList, JvDBControls,
  JvExControls, JvGradient, Buttons, ToolWin, ExtCtrls,DateUtils, frxClass,
  frxDBSet, JvAppStorage, JvAppIniStorage, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, System.ImageList,
  frCoreClasses;

type
  TFormRelacionPagosProveedores = class(TFormABMBase)
    tvMovimientos: TTreeView;
    RxLabel4: TJvLabel;
    ceCodigo: TJvComboEdit;
    edNombreProveedor: TEdit;
    RxLabel3: TJvLabel;
    chTodos: TCheckBox;
    Desde: TJvDateEdit;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    Hasta: TJvDateEdit;
    UpDown1: TUpDown;
    DSPClientes: TDataSetProvider;
    CDSProveedor: TClientDataSet;
    CDSProveedorCODIGO: TStringField;
    CDSProveedorNOMBRE: TStringField;
    CDSProveedorRAZON_SOCIAL: TStringField;
    CDSProveedorN_DE_CUENTA: TStringField;
    BuscarProveedor: TAction;
    CDSMovCC: TClientDataSet;
    DSValores: TDataSource;
    CDSValores: TClientDataSet;
    CDSValoresMora: TFloatField;
    DSPValores: TDataSetProvider;
    QValores: TFDQuery;
    DSCajaMov: TDataSource;
    CDSCajaMov: TClientDataSet;
    CDSCajaMovID_MOV_CAJA: TIntegerField;
    CDSCajaMovFECHA_OPERACION: TSQLTimeStampField;
    CDSCajaMovTIPO_OPERACION: TStringField;
    CDSCajaMovID_COMPROBANTE: TIntegerField;
    CDSCajaMovTIPO_COMPROB: TStringField;
    CDSCajaMovHABER: TFloatField;
    CDSCajaMovDEBE: TFloatField;
    DSPCajaMov: TDataSetProvider;
    QCajaMov: TFDQuery;
    DSAplicaciones: TDataSource;
    CDSAplicaciones: TClientDataSet;
    CDSAplicacionesMora: TFloatField;
    DSPAplicaciones: TDataSetProvider;
    QAplicaciones: TFDQuery;
    DSMovCC: TDataSource;
    DSPMovCC: TDataSetProvider;
    QMovCC: TFDQuery;
    CDSMovCCID_MOVCCCOMPRA: TIntegerField;
    CDSMovCCDETALLE: TStringField;
    CDSMovCCFECHACOMPRA: TSQLTimeStampField;
    CDSMovCCFECHAVTO: TSQLTimeStampField;
    CDSMovCCTIPOCPBTE: TStringField;
    CDSAplicacionesID_CPBTE: TIntegerField;
    CDSAplicacionesTIPOCPBTE: TStringField;
    CDSAplicacionesID_MOVCCCOMPRA: TIntegerField;
    CDSAplicacionesFECHA: TSQLTimeStampField;
    CDSAplicacionesNUMEROCPBTE: TStringField;
    CDSAplicacionesIMPORTE: TFloatField;
    CDSValoresID_MOV_CAJA: TIntegerField;
    CDSValoresFECHA_EMISION: TSQLTimeStampField;
    CDSValoresFECHA_COBRO: TSQLTimeStampField;
    CDSValoresORDEN_DE: TStringField;
    CDSValoresIMPORTE: TFloatField;
    CDSValoresNOMBRE: TStringField;
    CDSValoresNUMERO: TIntegerField;
    lbPromedio: TLabel;
    JvLabel1: TJvLabel;
    lbItems: TLabel;
    CDSMovCCPERIODO: TFloatField;
    CDSMovCCHABER: TFloatField;
    JvLabel2: TJvLabel;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    frdbMovcc: TfrxDBDataset;
    frdbAplicaciones: TfrxDBDataset;
    frdbCajaMov: TfrxDBDataset;
    frdbValores: TfrxDBDataset;
    frxReporte: TfrxReport;
    QValores3: TFDQuery;
    DSPValores3: TDataSetProvider;
    CDSValores3: TClientDataSet;
    DSValores3: TDataSource;
    CDSValores3Mora: TFloatField;
    CDSValores3ID_MOV_CAJA: TIntegerField;
    CDSValores3FECHA_EMISION: TSQLTimeStampField;
    CDSValores3FECHA_COBRO: TSQLTimeStampField;
    CDSValores3ORIGEN: TStringField;
    CDSValores3IMPORTE: TFloatField;
    CDSValores3NOMBRE: TStringField;
    CDSValores3NUMERO: TIntegerField;
    procedure BuscarProveedorExecute(Sender: TObject);
    procedure ceCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscarExecute(Sender: TObject);
    procedure CDSAplicacionesCalcFields(DataSet: TDataSet);
    procedure CDSValoresCalcFields(DataSet: TDataSet);
    procedure CDSMovCCCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure tvMovimientosDblClick(Sender: TObject);
    procedure CDSValores3CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    TotalMora:Real;
    TotalDiasGracia:Integer;
    TotalItem:Integer;
    { Public declarations }
  end;

var
  FormRelacionPagosProveedores: TFormRelacionPagosProveedores;

implementation

uses UDMain_FD, UBuscadorProveedor;
{$R *.dfm}

procedure TFormRelacionPagosProveedores.BuscarExecute(Sender: TObject);
var
  Nodo1: TTreeNode;
  N, M, Dias: Integer;
  Cifra:String;
begin
//  inherited;
  tvMovimientos.Items.Clear;
  CDSMovCC.Close;
  CDSAplicaciones.Close;
  CDSValores.Close;
  CDSValores3.Close;

  CDSCajaMov.Close;
  TotalMora:=0;
  if Not(chTodos.Checked) Then
    CDSMovCC.Params.ParamByName('codigo').Value := ceCodigo.Text
  else
    CDSMovCC.Params.ParamByName('codigo').Value := '******';

  CDSMovCC.Params.ParamByName('desde').value:=desde.Date;
  CDSMovCC.Params.ParamByName('hasta').value:=hasta.Date;
  CDSMovCC.Open;
  if CDSMovCC.RecordCount>0 Then
    begin
      CDSAplicaciones.Params.ParamByName('id').Value := CDSMovCCID_MOVCCCOMPRA.Value;
      CDSAplicaciones.Open;
      CDSCajaMov.Params.ParamByName('ID').Value   := CDSAplicacionesID_CPBTE.Value;
      CDSCajaMov.Params.ParamByName('tipo').Value := CDSAplicacionesTIPOCPBTE.Value;
      CDSCajaMov.open;
      CDSValores.Params.ParamByName('id').Value  := CDSCajaMovID_MOV_CAJA.Value;
      CDSValores.Open;
      CDSValores3.Params.ParamByName('id').Value := CDSCajaMovID_MOV_CAJA.Value;
      CDSValores3.Open;

      CDSMovCC.First;
      CDSAplicaciones.First;
      CDSValores.First;
      CDSValores3.First;
      CDSCajaMov.First;
      Nodo1 := nil;
      tvMovimientos.Items.Clear;
      while not (CDSMovCC.Eof) do
        begin
          Dias := trunc(CDSMovCCFECHAVTO.AsDateTime - CDSMovCCFECHACOMPRA.AsDateTime);
        Cifra:=Copy('                ',1,15-Length(FloatToStrF(CDSMovCCHABER.AsFloat, ffNumber, 10, 2)))+FloatToStrF(CDSMovCCHABER.AsFloat, ffNumber, 10, 2);
        Nodo1 := tvMovimientos.Items.Add(nil, CDSMovCCDETALLE.AsString+' >> '+CDSMovCCFECHACOMPRA.AsString + ' ---- ' + CDSMovCCFECHAVTO.AsString + ' .......... ' + 'Periodo de Credito....:' + intToStr(dias) + '->> $ ' +
        Cifra + ' .........Días de Mora :' + intToStr(trunc(CDSValoresMora.Value)));
        TotalDiasGracia:=TotalDiasGracia+Dias;
        tvMovimientos.Selected := Nodo1;
        N := tvMovimientos.Selected.AbsoluteIndex;
        CDSAplicaciones.first;
        while not (CDSAplicaciones.Eof) do
        begin
          Cifra:=Copy('                 ',1,15-Length(FloatToStrF(CDSAplicacionesIMPORTE.AsFloat, ffNumber, 10, 2)))+FloatToStrF(CDSAplicacionesIMPORTE.AsFloat, ffNumber, 10, 2);
          Nodo1 := tvMovimientos.Items.AddChild(tvMovimientos.Items[N],
            CDSAplicacionesFECHA.AsString + ' --- ' + CDSAplicacionesNUMEROCPBTE.asstring + ' .......... ' + Cifra + '..... Días de mora.:' + IntToStr(Trunc(CDSAplicacionesMora.Value)));
          tvMovimientos.Selected := Nodo1;
          M := tvMovimientos.Selected.AbsoluteIndex;
          CDSValores.First;
          while not (CDSValores.Eof) do
          begin
            Cifra:=Copy('                 ',1,15-Length(FloatToStrF(CDSValoresIMPORTE.AsFloat, ffNumber, 10, 2)))+FloatToStrF(CDSValoresIMPORTE.AsFloat, ffNumber, 10, 2);
            Nodo1 := tvMovimientos.Items.AddChild(tvMovimientos.Items[M],'Che.Nro.:'+CDSValoresNUMERO.AsString+' del Banco '+CDSValoresNOMBRE.AsString+' '+
              CDSValoresFECHA_EMISION.AsString + ' ---- ' + CDSValoresFECHA_COBRO.AsString + ' .......... ' + Cifra + '....... Días de mora.:' + IntToStr(Trunc(CDSValoresMora.Value)));
            TotalMora:=TotalMora+Trunc(CDSValoresMora.Value);
            CDSValores.Next;
          end;

          CDSValores3.First;
          while not (CDSValores3.Eof) do
          begin
            Cifra:=Copy('                 ',1,15-Length(FloatToStrF(CDSValores3IMPORTE.AsFloat, ffNumber, 10, 2)))+FloatToStrF(CDSValores3IMPORTE.AsFloat, ffNumber, 10, 2);
            Nodo1 := tvMovimientos.Items.AddChild(tvMovimientos.Items[M],'Che.de 3º.:'+CDSValores3NUMERO.AsString+' del Banco '+CDSValores3NOMBRE.AsString+' '+
              CDSValores3FECHA_EMISION.AsString + ' ---- ' + CDSValores3FECHA_COBRO.AsString + ' .......... ' + Cifra + '....... Días de mora.:' + IntToStr(Trunc(CDSValores3Mora.Value)));
            TotalMora:=TotalMora+Trunc(CDSValores3Mora.Value);
            CDSValores3.Next;
          end;

          CDSAplicaciones.Next;
        end;
        CDSMovCC.Next;
    end;
  end;
  lbItems.Caption    :=IntToStr(CDSMovCC.RecordCount);
  if CDSMovcc.RecordCount>0 then
    lbPromedio.Caption :=FormatFloat('0.00', TotalMora/CDSMovCC.RecordCount)
  else
    lbPromedio.Caption :='0.00';
  CDSMovCC.First;
  if Not(CDSAplicaciones.State in [dsInactive]) then
    CDSAplicaciones.First;
  if Not(CDSValores.State in [dsInactive]) then
    CDSValores.First;
  if Not(CDSCajaMov.State in [dsInactive]) then
    CDSCajaMov.First;
  //tvMovimientos.F
end;

procedure TFormRelacionPagosProveedores.BuscarProveedorExecute(Sender: TObject);
begin
 inherited;
 IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
  FormBuscadorProveedor.Tipo:='''N'''+','+'''G'''+','+'''S'''; // Act+Inac+Judiciales
  FormBuscadorProveedor.ShowModal;
  if FormBuscadorProveedor.Codigo<>'' Then
    BEGIN
      ceCodigo.Text := FormBuscadorProveedor.Codigo;
      CDSProveedor.Close;
      CDSProveedor.Params.ParamByName('Codigo').Value := FormBuscadorProveedor.Codigo;
      CDSProveedor.Open;
      IF NOT (CDSProveedor.IsEmpty) THEN
        BEGIN
          edNombreProveedor.Text := CDSProveedorNOMBRE.Value;
          ceCodigo.SetFocus;
          ceCodigo.SelectAll;
        END;
    END;
end;

procedure TFormRelacionPagosProveedores.CDSAplicacionesCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  CDSAplicacionesMora.Value := CDSAplicacionesFECHA.AsDateTime - CDSMovCCFECHAVTO.AsDateTime;
end;

procedure TFormRelacionPagosProveedores.CDSMovCCCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSMovCCPERIODO.Value := (CDSMovCCFECHAVTO.AsDateTime - CDSMovCCFECHAVTO.AsDateTime);
end;

procedure TFormRelacionPagosProveedores.CDSValores3CalcFields(
  DataSet: TDataSet);
begin
  inherited;
  CDSValores3Mora.Value := CDSValores3FECHA_COBRO.AsDateTime - CDSMovCCFECHAVTO.AsDateTime;
end;

procedure TFormRelacionPagosProveedores.CDSValoresCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSValoresMora.Value := CDSValoresFECHA_COBRO.AsDateTime - CDSMovCCFECHAVTO.AsDateTime;
end;

procedure TFormRelacionPagosProveedores.ceCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var dato:string;
begin
  inherited;
  if Key = VK_Return then
    begin
      Dato := Copy('000000', 1, 6 - (Length(ceCodigo.Text))) + ceCodigo.Text;
      ceCodigo.Text := Dato;
      CDSProveedor.Close;
      CDSProveedor.Params.ParamByName('Codigo').Value := Dato;
      CDSProveedor.Open;
      if not (CDSProveedor.eof) then
        edNombreProveedor.Text := CDSProveedorNOMBRE.Value;
      ceCodigo.SetFocus;
      ceCodigo.SelectAll;
    end
  else
    if (Key = 17) and (Shift = [ssCtrl]) then
      BuscarProveedor.Execute;

end;

procedure TFormRelacionPagosProveedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
end;

procedure TFormRelacionPagosProveedores.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(date));
//  Desde.Date := IncMonth(Hasta.Date,(-1*RangoFechas))+1;

  Desde.Date := IncMonth(Hasta.Date,(-1*1));
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(desde.Date))+1;


end;

procedure TFormRelacionPagosProveedores.FormDestroy(Sender: TObject);
begin
  inherited;
  FormRelacionPagosProveedores:=nil;
end;

procedure TFormRelacionPagosProveedores.ImprimirExecute(Sender: TObject);
begin
  inherited;
  
  frxReporte.PrintOptions.Printer:=PrNomListados;
  frxReporte.SelectPrinter;

  frxReporte.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoRelacionPagosProveedores.fr3');
  frxReporte.Variables['Cliente']:=''''+edNombreProveedor.Text+'''';
  //frLibro.PrepareReport;
  DMMain_FD.QOpciones.Close;
  frxReporte.ShowReport;
end;

procedure TFormRelacionPagosProveedores.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReporte.DesignReport;
end;

procedure TFormRelacionPagosProveedores.tvMovimientosDblClick(Sender: TObject);
begin
  inherited;
  tvMovimientos.FullExpand;
end;

procedure TFormRelacionPagosProveedores.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
 var d,m,y:word;
begin
  inherited;
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
