unit UAbonosCupon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, JvComponentBase, imgList,
  DB,   ActnList, ComCtrls,
  JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls, IBGenerator,
  DBClient, Provider, JvExMask, JvToolEdit, JvDBControls, Mask, DBCtrls,
  frxExportXML, frxExportRTF, frxClass, frxDBSet, frxExportPDF,
  System.Actions, JvAppStorage, JvAppIniStorage, Data.FMTBcd, frxExportXLS,
  Data.SqlExpr, JvFormPlacement, JvLabel, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxExportBaseDialog,
  System.ImageList, frCoreClasses;

type
  TFormAbonosCupon = class(TFormABMBase)
    DSPCupones: TDataSetProvider;
    CDSCupones: TClientDataSet;
    ibgCupon: TIBGenerator;
    Label1: TLabel;
    dbeId: TDBEdit;
    Label2: TLabel;
    dbeNumero: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dbeCodigo: TDBEdit;
    Label6: TLabel;
    dbePeriodo: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    dbeImporte_1: TDBEdit;
    Label10: TLabel;
    dbeImporte_2: TDBEdit;
    dbefecha_Gen: TJvDBDateEdit;
    dbefecha: TJvDBDateEdit;
    dbefecha_Vto2: TJvDBDateEdit;
    dbeFechaVto1: TJvDBDateEdit;
    dbeNombre: TDBEdit;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    dbeTipo: TDBEdit;
    Label14: TLabel;
    dbeClase: TDBEdit;
    Label15: TLabel;
    dbeFcNumero: TDBEdit;
    dbefechaFactura: TJvDBDateEdit;
    Imprimir: TAction;
    ToolButton1: TToolButton;
    btImprimir: TBitBtn;
    frxReport: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frCupon: TfrxDBDataset;
    EnviarCorreo: TAction;
    SpeedButton2: TSpeedButton;
    CDSCuponesID: TIntegerField;
    CDSCuponesNUMERO: TStringField;
    CDSCuponesFECHA_GENERACION: TSQLTimeStampField;
    CDSCuponesFECHA: TSQLTimeStampField;
    CDSCuponesCLIENTE: TStringField;
    CDSCuponesPERIODO: TStringField;
    CDSCuponesFECHA_VTO1: TSQLTimeStampField;
    CDSCuponesFECHA_VTO2: TSQLTimeStampField;
    CDSCuponesCODIGOBARRA1: TStringField;
    CDSCuponesCODIGOARTICULO: TStringField;
    CDSCuponesFACTURA_ID: TIntegerField;
    CDSCuponesFACTURA_FECHA: TSQLTimeStampField;
    CDSCuponesFACTURA_TIPO: TStringField;
    CDSCuponesFACTURA_CLASE: TStringField;
    CDSCuponesFACTURA_NROCPBTE: TStringField;
    CDSCuponesPAGADO: TStringField;
    CDSCuponesMUESTRACLIENTE: TStringField;
    QCupones: TFDQuery;
    QCuponesID: TIntegerField;
    QCuponesNUMERO: TStringField;
    QCuponesFECHA_GENERACION: TSQLTimeStampField;
    QCuponesFECHA: TSQLTimeStampField;
    QCuponesCLIENTE: TStringField;
    QCuponesPERIODO: TStringField;
    QCuponesFECHA_VTO1: TSQLTimeStampField;
    QCuponesFECHA_VTO2: TSQLTimeStampField;
    QCuponesIMPORTE_1: TFloatField;
    QCuponesIMPORTE_2: TFloatField;
    QCuponesCODIGOBARRA1: TStringField;
    QCuponesCODIGOARTICULO: TStringField;
    QCuponesFACTURA_ID: TIntegerField;
    QCuponesFACTURA_FECHA: TSQLTimeStampField;
    QCuponesFACTURA_TIPO: TStringField;
    QCuponesFACTURA_CLASE: TStringField;
    QCuponesFACTURA_NROCPBTE: TStringField;
    QCuponesPAGADO: TStringField;
    QCuponesBONIFICADO: TStringField;
    QCuponesMUESTRACLIENTE: TStringField;
    CDSCuponesIMPORTE_1: TFloatField;
    CDSCuponesIMPORTE_2: TFloatField;
    CDSCuponesBONIFICADO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure EnviarCorreoExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAbonosCupon: TFormAbonosCupon;

implementation

uses UCorreo, UBuscaCupones, DMBuscadoresForm,UDMain_FD;

{$R *.dfm}

procedure TFormAbonosCupon.BuscarExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscadorCupones)) then
    FormBuscadorCupones:=TFormBuscadorCupones.Create(Self);
  FormBuscadorCupones.ShowModal;
  if FormBuscadorCupones.cupon<>-1 then
    begin
      DatoNew:=IntToStr(FormBuscadorCupones.cupon);
      Recuperar.Execute;
    end;

end;

procedure TFormAbonosCupon.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  Agregar.Enabled:=False;
end;

procedure TFormAbonosCupon.EnviarCorreoExecute(Sender: TObject);
begin
  inherited;
  if CDSCupones.IsEmpty Then
    Raise Exception.Create(' No hay datos para mandar...');
  if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
    CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');

  frxReport.PrintOptions.Printer:=PrNomListados;
  frxReport.SelectPrinter;
  frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\CuponAbono.fr3');
  //frxReport.Variables['Nombre']   :=''''+dbeNombre.Text+'''';

  frxReport.PrepareReport;

  frxPDFExport1.ShowDialog := False;
  frxPDFExport1.FileName   := ExtractFilePath(ParamStr(0))+'Archivos Temporales\cupon_'+CDSCuponesNUMERO.Value+'.pdf';
  frxReport.Export(frxPDFExport1);
  frxPDFExport1.ShowDialog := True;

  if Not(Assigned(FormCorreo)) Then
    FormCorreo:=TFormCorreo.Create(Application);

  FormCorreo.CorreoDestino       := DMMain_FD.GetCorreoCliente_1(CDSCuponesCLIENTE.AsString);

  FormCorreo.CorreoOrigen        := DirCorreo;
  FormCorreo.Remitente           := Remitente;
  FormCorreo.Destinatario        := CDSCuponesMUESTRACLIENTE.Value;
  FormCorreo.Puerto              := Puerto;
  FormCorreo.NombreServidorCorreo:= NombreServidor;
  FormCorreo.NombreCuentaCorreo  := NombreCuenta;
  FormCorreo.Clave               := Clave;
  FormCorreo.Autenticacion       := Autotenticacion;
  FormCorreo.Asunto              := 'Cupon Abono del '+ FormatDateTime('dd-mm-yy',CDSCuponesFECHA.AsDateTime);
  FormCorreo.Adjuntos.Add(ExtractFilePath(ParamStr(0))+'Archivos Temporales\cupon_'+CDSCuponesNUMERO.Value+'.pdf');
  FormCorreo.Show;
end;

procedure TFormAbonosCupon.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  action:=caFree;
end;

procedure TFormAbonosCupon.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  AutoSize:=True;
  AddClientDataSet(CDSCupones,DSPCupones);
  CDSCupones.Open;
  Tabla:='cupon_abonos';
  Campo:='id';
end;

procedure TFormAbonosCupon.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAbonosCupon:=nil;
end;

procedure TFormAbonosCupon.ImprimirExecute(Sender: TObject);
begin
  inherited;
  if Not(CDSCupones.IsEmpty) Then
    begin
      frxReport.PrintOptions.Printer:=PrNomListados;
      frxReport.SelectPrinter;
      frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\CuponAbono.fr3');
      frxReport.Variables['Nombre']   :=''''+dbeNombre.Text+'''';
      //frxReport.Variables['Desde']   :=''''+DateToStr(Desde.Date)+'''';
      //frxReport.Variables['Hasta']   :=''''+DateToStr(Hasta.Date)+'''';
      frxReport.ShowReport;
    end
  else ShowMessage('No Hay datos para Listar......');

end;

procedure TFormAbonosCupon.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSCupones.Close;
  CDSCupones.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSCupones.Open;
  Borrar.Enabled   :=CDSCuponesFACTURA_ID.AsString='';
  Modificar.Enabled:=CDSCuponesFACTURA_ID.AsString='';
end;

procedure TFormAbonosCupon.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport;
end;

end.