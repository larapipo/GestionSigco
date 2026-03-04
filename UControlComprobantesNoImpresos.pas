unit UControlComprobantesNoImpresos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db, ActnList, StdCtrls, Buttons, ToolWin, ComCtrls,
  JvComponentBase, ImgList, JvExControls, JvGradient, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, SqlExpr, JvAppStorage, JvAppIniStorage, System.Actions,
  Datasnap.Provider, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, System.ImageList, VCL.TMSFNCTypes, VCL.TMSFNCUtils,
  VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, System.Rtti,
  VCL.TMSFNCDataGridCell, VCL.TMSFNCDataGridData, VCL.TMSFNCDataGridBase,
  VCL.TMSFNCDataGridCore, VCL.TMSFNCDataGridRenderer, VCL.TMSFNCCustomControl,
  VCL.TMSFNCDataGrid, VCL.TMSFNCCustomComponent,
  VCL.TMSFNCDataGridDatabaseAdapter, AdvGroupBox, AdvOfficeButtons,IniFiles,
  Vcl.Mask, JvExMask, JvToolEdit,System.DateUtils;

type
  TFormControlCompNoImpresos = class(TFormABMBase)
    CDSFacturas: TClientDataSet;
    DSPFacturas: TDataSetProvider;
    Imprimir: TAction;
    Marcar: TAction;
    BitBtn1: TBitBtn;
    btImprimir: TBitBtn;
    QRegFacturas: TSQLQuery;
    DSPRegFacturas: TDataSetProvider;
    CDSRegFacturas: TClientDataSet;
    DSRegFacturas: TDataSource;
    CDSRegFacturasLOTE: TIntegerField;
    CDSRegFacturasID_FAC: TIntegerField;
    CDSRegFacturasCLIENTE: TStringField;
    CDSRegFacturasFECHA: TSQLTimeStampField;
    CDSRegFacturasIMPORTE: TFMTBCDField;
    CDSRegFacturasSALDO_CC: TFMTBCDField;
    CDSRegFacturasTIPOCPBTE: TStringField;
    CDSRegFacturasCLACPBTE: TStringField;
    CDSRegFacturasNROCPBTE: TStringField;
    CDSRegFacturasCODIGOBARRA: TStringField;
    CDSRegFacturasCODIGOBARRA_2: TStringField;
    CDSFacturasID_FC: TIntegerField;
    CDSFacturasTIPOCPBTE: TStringField;
    CDSFacturasCLASECPBTE: TStringField;
    CDSFacturasLETRAFAC: TStringField;
    CDSFacturasSUCFAC: TStringField;
    CDSFacturasNUMEROFAC: TStringField;
    CDSFacturasSUCURSAL: TIntegerField;
    CDSFacturasFECHAVTA: TSQLTimeStampField;
    CDSFacturasCODIGO: TStringField;
    CDSFacturasRAZONSOCIAL: TStringField;
    CDSFacturasNROCPBTE: TStringField;
    CDSFacturasMUESTRAIDCOMPROBANTE: TIntegerField;
    CDSFacturasMUESTRACOMPROBANTE: TStringField;
    CDSFacturasCOMPROBANTEFISCAL: TStringField;
    CDSFacturasMUESTRASUCURSAL: TStringField;
    CDSFacturasIMPRESO: TStringField;
    JvDBStatusLabel1: TJvDBStatusLabel;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    btImprimirTodo: TBitBtn;
    chTodas: TCheckBox;
    pnCab: TPanel;
    TMSFNCDataGrid1: TTMSFNCDataGrid;
    pnPie: TPanel;
    chConfirmacion: TCheckBox;
    chPreview: TCheckBox;
    TMSFNCDataGridDatabaseAdapter1: TTMSFNCDataGridDatabaseAdapter;
    QFacturasFD: TFDQuery;
    QFacturasFDID_FC: TIntegerField;
    QFacturasFDTIPOCPBTE: TStringField;
    QFacturasFDCLASECPBTE: TStringField;
    QFacturasFDLETRAFAC: TStringField;
    QFacturasFDSUCFAC: TStringField;
    QFacturasFDNUMEROFAC: TStringField;
    QFacturasFDSUCURSAL: TIntegerField;
    QFacturasFDFECHAVTA: TSQLTimeStampField;
    QFacturasFDCODIGO: TStringField;
    QFacturasFDRAZONSOCIAL: TStringField;
    QFacturasFDNROCPBTE: TStringField;
    QFacturasFDTOTAL: TFloatField;
    QFacturasFDMUESTRAIDCOMPROBANTE: TIntegerField;
    QFacturasFDMUESTRACOMPROBANTE: TStringField;
    QFacturasFDCOMPROBANTEFISCAL: TStringField;
    QFacturasFDMUESTRASUCURSAL: TStringField;
    QFacturasFDIMPRESO: TStringField;
    CDSFacturasTOTAL: TFloatField;
    chFiltro: TCheckBox;
    Label1: TLabel;
    editPath: TEdit;
    sbClaveElect: TSpeedButton;
    chPDF: TCheckBox;
    Label2: TLabel;
    ceCliente: TJvComboEdit;
    edNombreCliente: TEdit;
    chTodos: TAdvOfficeCheckBox;
    rgGrupo: TAdvOfficeRadioGroup;
    Label3: TLabel;
    desde: TJvDateEdit;
    hasta: TJvDateEdit;
    Label4: TLabel;
    UpDown1: TUpDown;
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure MarcarExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure dbgFacturasDblClick(Sender: TObject);
    procedure btImprimirTodoClick(Sender: TObject);
    procedure chFiltroClick(Sender: TObject);
    procedure TMSFNCDataGrid1ColumnSized(Sender: TObject; AColumn: Integer;
      ASize: Double);
    procedure TMSFNCDataGrid1GetCellFormatting(Sender: TObject;
      ACell: TTMSFNCDataGridCellCoord; AData: TTMSFNCDataGridCellValue;
      var AFormatting: TTMSFNCDataGridDataFormatting;
      var AConvertSettings: TFormatSettings; var ACanFormat: Boolean);
    procedure sbClaveElectClick(Sender: TObject);
    procedure TMSFNCDataGrid1DblClick(Sender: TObject);
    procedure TMSFNCDataGrid1GetCellLayout(Sender: TObject;
      ACell: TTMSFNCDataGridCell);
    procedure ceClienteButtonClick(Sender: TObject);
    procedure chTodosClick(Sender: TObject);
    procedure rgGrupoClick(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure desdeAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure hastaAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormControlCompNoImpresos: TFormControlCompNoImpresos;

implementation

uses UFactura_2, DMVenta, UFacturaCtdo_2, DMVentaCtdo, UDMain_FD,
  UBuscaDirectorio, UBuscadorClientes, UTiketVta;

{$R *.DFM}

procedure TFormControlCompNoImpresos.btImprimirTodoClick(Sender: TObject);
begin
  inherited;
  if Not(CDSFacturas.IsEmpty) then
    begin
      CDSFacturas.First;
      while not(CDSFacturas.Eof) do
        begin
          if (CDSFacturasTIPOCPBTE.Value='FC') or (CDSFacturasTIPOCPBTE.Value='NC') or (CDSFacturasTIPOCPBTE.Value='ND')Then
            begin
              if Not(Assigned(FormCpbte_2)) Then
                FormCpbte_2:= TFormCpbte_2.Create(self);
              FormCpbte_2.DatoNew   := CDSFacturasID_FC.AsString;
              FormCpbte_2.TipoCpbte := CDSFacturasTIPOCPBTE.AsString;
              FormCpbte_2.Recuperar.Execute;
              FormCpbte_2.ControlaImpresion := chConfirmacion.Checked;
              FormCpbte_2.chPreview.Checked := chPreview.Checked;
              Application.ProcessMessages;
              if chPDF.Checked then
                FormCpbte_2.Exportar_PDF(editPath.Text+'\')
              else
                FormCpbte_2.Imprimir.Execute;
              FormCpbte_2.Salir.Execute;
              FreeAndNil(FormCpbte_2);
            end
          else
            if (CDSFacturasTIPOCPBTE.Value='FO') Then
              begin
                if Not(Assigned(FormCpbteCtdo_2)) Then
                  FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(self);
                 FormCpbteCtdo_2.DatoNew  :=CDSFacturasID_FC.AsString;
                 FormCpbteCtdo_2.TipoCpbte:=CDSFacturasTIPOCPBTE.AsString;
                 FormCpbteCtdo_2.Recuperar.Execute;
                 FormCpbteCtdo_2.ControlaImpresion:=chConfirmacion.Checked;
                 FormCpbteCtdo_2.chPreview.Checked:=chPreview.Checked;
                 Application.ProcessMessages;
                 if chPDF.Checked then
                   FormCpbteCtdo_2.Exportar_Pdf(editPath.Text+'\')
                 else
                   FormCpbteCtdo_2.Imprimir.Execute;
                 FormCpbteCtdo_2.Salir.Execute;
                 FreeAndNil(FormCpbteCtdo_2);
              end
            else
              if (CDSFacturasTIPOCPBTE.Value='TK') Then
                begin
                  if Not(Assigned(FormTicketVta)) Then
                    FormTicketVta := TFormTicketVta.Create(self);
                   FormTicketVta.DatoNew   := CDSFacturasID_FC.AsString;
                   FormTicketVta.TipoCpbte := CDSFacturasTIPOCPBTE.AsString;
                   FormTicketVta.Recuperar.Execute;
                   FormTicketVta.ControlaImpresion:=chConfirmacion.Checked;
                   //FormTicketVta.chPreview.Checked:=chPreview.Checked;
                   Application.ProcessMessages;
                   if chPDF.Checked then
                     FormTicketVta.Exportar_Pdf(editPath.Text+'\')
                   else
                     FormTicketVta.Imprimir.Execute;
                   FormTicketVta.Salir.Execute;
                   FreeAndNil(FormTicketVta);
                end;
           CDSFacturas.Next;
        end;
    end;
  CDSFacturas.Close;
  CDSFacturas.Open;
end;

procedure TFormControlCompNoImpresos.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSFacturas.Close;
  CDSFacturas.Params.ParamByName('sucursal').Value:=-1;
  case rgGrupo.ItemIndex of
    0:CDSFacturas.Params.ParamByName('impreso').Value:='N';
    1:CDSFacturas.Params.ParamByName('impreso').Value:='S';
    2:CDSFacturas.Params.ParamByName('impreso').Value:='*';
  end;
  if chTodos.Checked then
    CDSFacturas.Params.ParamByName('codigo').Value:='******'
  else
    CDSFacturas.Params.ParamByName('codigo').Value:=ceCliente.Text;
  CDSFacturas.Params.ParamByName('desde').Value:=desde.Date;
  CDSFacturas.Params.ParamByName('hasta').Value:=hasta.Date;


  CDSFacturas.Open;

  TMSFNCDataGrid1.Columns[0].Width:=65;
  TMSFNCDataGrid1.Columns[1].Width:=40;
  TMSFNCDataGrid1.Columns[2].Width:=40;
  TMSFNCDataGrid1.Columns[3].Width:=30;
  TMSFNCDataGrid1.Columns[4].Width:=35;
  TMSFNCDataGrid1.Columns[5].Width:=60;
  TMSFNCDataGrid1.Columns[6].Width:=150;
  TMSFNCDataGrid1.Columns[7].Width:=100;
  TMSFNCDataGrid1.Columns[8].Width:=100;
  TMSFNCDataGrid1.Columns[9].Width:=85;
  TMSFNCDataGrid1.Columns[10].Width:=85;
  TMSFNCDataGrid1.Columns[11].Width:=60;
end;

procedure TFormControlCompNoImpresos.ceClienteButtonClick(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''+','+'''I'''; // Act+Inac+Judiciales
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
    BEGIN
      ceCliente.Text       := FormBuscadorClientes.Codigo;
      edNombreCliente.Text := FormBuscadorClientes.Nombre;
      ceCliente.SetFocus;
      ceCliente.SelectAll;
    END;
end;

procedure TFormControlCompNoImpresos.chFiltroClick(Sender: TObject);
begin
  inherited;
  TMSFNCDataGrid1.Options.Filtering.Enabled:=chFiltro.Checked;
  if Not(chFiltro.Checked) then
    begin
      TMSFNCDataGrid1.ClearFilter;
    end;
end;

procedure TFormControlCompNoImpresos.chTodosClick(Sender: TObject);
begin
  inherited;
  if chTodos.Checked then
    begin
      ceCliente.Text      :='';
      edNombreCliente.Text:='';
    end;
  Buscar.Execute;

end;

procedure TFormControlCompNoImpresos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSFacturas.Close;
  ArchivoIni                             := TIniFile.Create(DMMain_FD.MainPath +'Impresion.ini');
  ArchivoIni.WriteString('Directorio', 'path', editPath.Text);
  ArchivoIni.Free;

  inherited;
  Action:=caFree;
end;

procedure TFormControlCompNoImpresos.FormCreate(Sender: TObject);
Var d,m,y:word;
begin
  inherited;
  ArchivoIni                             := TIniFile.Create(DMMain_FD.MainPath +'Impresion.ini');
  editPath.Text       := ArchivoIni.ReadString('Directorio', 'path', '');
  ArchivoIni.Free;

  DecodeDate(Date,y,m,d);
  desde.Date:=EncodeDate(y,m,1);
  hasta.Date:=EncodeDate(y,m,DayOfTheMonth(desde.Date));
  AutoSize:=False;
  Buscar.Execute;
end;

procedure TFormControlCompNoImpresos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormControlCompNoImpresos:=nil;
end;

procedure TFormControlCompNoImpresos.hastaAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  hasta.Date:=ADate;
  Buscar.Execute;
end;

procedure TFormControlCompNoImpresos.dbgFacturasDblClick(Sender: TObject);
begin
  inherited;
 if (CDSFacturasTIPOCPBTE.Value='FC') or (CDSFacturasTIPOCPBTE.Value='NC') or (CDSFacturasTIPOCPBTE.Value='ND')Then
    begin
      if Not(Assigned(FormCpbte_2)) Then
        FormCpbte_2:=TFormCpbte_2.Create(self);
      FormCpbte_2.DatoNew  :=CDSFacturasID_FC.AsString;
      FormCpbte_2.TipoCpbte:=CDSFacturasTIPOCPBTE.AsString;
      FormCpbte_2.Recuperar.Execute;
      FormCpbte_2.Show;
    end
  else
    if (CDSFacturasTIPOCPBTE.Value='FO') Then
      begin
        if Not(Assigned(FormCpbteCtdo_2)) Then
          FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(self);
      FormCpbteCtdo_2.DatoNew  :=CDSFacturasID_FC.AsString;
      FormCpbteCtdo_2.TipoCpbte:=CDSFacturasTIPOCPBTE.AsString;
      FormCpbteCtdo_2.Recuperar.Execute;
      FormCpbteCtdo_2.Show;
    end;
end;

procedure TFormControlCompNoImpresos.desdeAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  desde.Date := ADate;
  Buscar.Execute;
end;

procedure TFormControlCompNoImpresos.DSBaseStateChange(Sender: TObject);
begin
//  inherited;
end;

procedure TFormControlCompNoImpresos.MarcarExecute(Sender: TObject);
begin
  inherited;
  if chTodas.Checked then
    BEGIN
      CDSFacturas.First;
      while Not(CDSFacturas.Eof) do
        begin
          CDSFacturas.Edit;
          CDSFacturasIMPRESO.Value:='S';
          CDSFacturas.Next;
        end;
      Screen.Cursor:=crHourGlass;
      CDSFacturas.ApplyUpdates(0);
      Screen.Cursor:=crDefault;

    END
  else
    begin
      CDSFacturas.Edit;
      CDSFacturasIMPRESO.Value:='S';
      CDSFacturas.Post;
      Screen.Cursor:=crHourGlass;
      CDSFacturas.ApplyUpdates(0);
      Screen.Cursor:=crDefault;
    end;
  Buscar.Execute;
  Screen.Cursor:=crDefault;  
end;

procedure TFormControlCompNoImpresos.rgGrupoClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormControlCompNoImpresos.sbClaveElectClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscaDirectorio)) Then
    FormBuscaDirectorio:=TFormBuscaDirectorio.Create(self);
  FormBuscaDirectorio.ShowModal;
  if FormBuscaDirectorio.ModalResult=mrOk Then
    editPath.Text :=FormBuscaDirectorio.Directorio
  else
    editPath.Text :='';
end;

procedure TFormControlCompNoImpresos.TMSFNCDataGrid1ColumnSized(Sender: TObject;
  AColumn: Integer; ASize: Double);
begin
  inherited;
  if AColumn=2 then
    ASize:=15;
end;

procedure TFormControlCompNoImpresos.TMSFNCDataGrid1DblClick(Sender: TObject);
begin
  inherited;
  if CDSFacturasID_FC.AsString<>'' then
    begin
      if (CDSFacturasTIPOCPBTE.AsString='FC') or
         (CDSFacturasTIPOCPBTE.AsString='NC') or
         (CDSFacturasTIPOCPBTE.AsString='ND') then
        begin
          if FormCpbte_2=nil then
            FormCpbte_2:=TFormCpbte_2.Create(Self);
          FormCpbte_2.DatoNew   := CDSFacturasID_FC.AsString;
          FormCpbte_2.TipoCpbte := CDSFacturasTIPOCPBTE.AsString;
          FormCpbte_2.Recuperar.Execute;
          FormCpbte_2.Show;
        end
      else
        if CDSFacturasTIPOCPBTE.AsString='FO' then
          begin
            if FormCpbteCtdo_2=nil then
              FormCpbteCtdo_2:= TFormCpbteCtdo_2.Create(Self);
            FormCpbteCtdo_2.DatoNew    := CDSFacturasID_FC.AsString;
            FormCpbteCtdo_2.TipoCpbte  := CDSFacturasTIPOCPBTE.AsString;
            FormCpbteCtdo_2.Recuperar.Execute;
            FormCpbteCtdo_2.Show;
          end;

    end;
end;

procedure TFormControlCompNoImpresos.TMSFNCDataGrid1GetCellFormatting(
  Sender: TObject; ACell: TTMSFNCDataGridCellCoord;
  AData: TTMSFNCDataGridCellValue;
  var AFormatting: TTMSFNCDataGridDataFormatting;
  var AConvertSettings: TFormatSettings; var ACanFormat: Boolean);
begin
  inherited;
  ACanFormat:=True;
  if (ACell.Column=8) and (ACell.Row>0) Then
    begin
      AFormatting.Format                := '#,##0.00';  // Format salary with commas and decimals
      AFormatting.&Type                 := gdftFloat;   // Set type to Float
      AConvertSettings.DecimalSeparator := '.';         // Use '.' as the decimal separator
      AConvertSettings.ThousandSeparator:= ',';

    end;

end;

procedure TFormControlCompNoImpresos.TMSFNCDataGrid1GetCellLayout(
  Sender: TObject; ACell: TTMSFNCDataGridCell);
begin
  inherited;
   if ACell.Column = 8 then
    ACell.Layout.TextAlign := gtaTrailing;

end;

procedure TFormControlCompNoImpresos.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
begin
  inherited;
  if Button=btnext Then
    begin
      Desde.Date := IncMonth(Desde.Date,(1));
      Hasta.Date := IncMonth(Hasta.Date,(1));
    end
  else
    if Button=btPrev Then
      begin
        Desde.Date := IncMonth(Desde.Date,(-1));
        hasta.Date := IncMonth(Hasta.Date,(-1));
      end;
  Buscar.Execute;
end;

procedure TFormControlCompNoImpresos.ImprimirExecute(Sender: TObject);
begin
  inherited;
  if (CDSFacturasTIPOCPBTE.Value='FC') or (CDSFacturasTIPOCPBTE.Value='NC') or (CDSFacturasTIPOCPBTE.Value='ND')Then
    begin
      if Not(Assigned(FormCpbte_2)) Then
        FormCpbte_2:=TFormCpbte_2.Create(self);
      FormCpbte_2.DatoNew  :=CDSFacturasID_FC.AsString;
      FormCpbte_2.TipoCpbte:=CDSFacturasTIPOCPBTE.AsString;
      FormCpbte_2.Recuperar.Execute;
      FormCpbte_2.ControlaImpresion:=chConfirmacion.Checked;
      FormCpbte_2.chPreview.Checked:=chPreview.Checked;
      Application.ProcessMessages;
      FormCpbte_2.Imprimir.Execute;
      FormCpbte_2.Salir.Execute;
    end
  else
    if (CDSFacturasTIPOCPBTE.Value='FO') Then
      begin
        if Not(Assigned(FormCpbteCtdo_2)) Then
          FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(self);
      FormCpbteCtdo_2.DatoNew  :=CDSFacturasID_FC.AsString;
      FormCpbteCtdo_2.TipoCpbte:=CDSFacturasTIPOCPBTE.AsString;
      FormCpbteCtdo_2.Recuperar.Execute;
      FormCpbteCtdo_2.ControlaImpresion:=chConfirmacion.Checked;
      FormCpbteCtdo_2.chPreview.Checked:=chPreview.Checked;
      Application.ProcessMessages;
      FormCpbteCtdo_2.Imprimir.Execute;
      FormCpbteCtdo_2.Salir.Execute;
    end;
  CDSFacturas.Close;
  CDSFacturas.Open;
end;

end.
