unit UCorrectorDeCero;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ActnList, ComCtrls, Buttons, StdCtrls, ToolWin,
  ExtCtrls, Grids, DBGrids, DBClient,  Provider,Librerias,
  JvComponentBase, ImgList, JvExControls, JvGradient, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, SqlExpr, Data.DB, JvAppStorage, JvAppIniStorage,
  System.Actions, CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList;

type
  TFormCorrectorCeros = class(TFormABMBase)
    DSPAplicaciones: TDataSetProvider;
    DSPMovCC: TDataSetProvider;
    DSAplicaciones: TDataSource;
    DSMovCC: TDataSource;
    GroupBox1: TGroupBox;
    Aplicaciones: TLabel;
    Movimientos: TLabel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    Button3: TButton;
    Button4: TButton;
    DSMovCCVta: TDataSource;
    DSPMovCCVta: TDataSetProvider;
    DSAplicacionesVta: TDataSource;
    DSPAplicacionesVta: TDataSetProvider;
    wwQAplicacionesVta: TSQLQuery;
    CDSMovCC: TClientDataSet;
    CDSMovCCID_MOVCCCOMPRA: TIntegerField;
    CDSMovCCID_CPBTE: TIntegerField;
    CDSMovCCPROVEEDOR: TStringField;
    CDSMovCCTIPOCPBTE: TStringField;
    CDSMovCCCLASECPBTE: TStringField;
    CDSMovCCNROCPBTE: TStringField;
    CDSMovCCDETALLE: TStringField;
    CDSAplicaciones: TClientDataSet;
    CDSAplicacionesID_MOV: TIntegerField;
    CDSAplicacionesPROVEEDOR: TStringField;
    CDSAplicacionesID_CPBTE: TIntegerField;
    CDSAplicacionesTIPOCPBTE: TStringField;
    CDSAplicacionesCLASECPBTE: TStringField;
    CDSAplicacionesNUMEROCPBTE: TStringField;
    CDSAplicacionesIMPORTE: TFloatField;
    CDSAplicacionesDETALLE: TStringField;
    CDSMovCCVta: TClientDataSet;
    CDSMovCCVtaID_MOVCCVTA: TIntegerField;
    CDSMovCCVtaID_CPBTE: TIntegerField;
    CDSMovCCVtaCLIENTE: TStringField;
    CDSMovCCVtaTIPOCPBTE: TStringField;
    CDSMovCCVtaCLASECPBTE: TStringField;
    CDSMovCCVtaNROCPBTE: TStringField;
    CDSMovCCVtaDEBE: TFloatField;
    CDSMovCCVtaHABER: TFloatField;
    CDSMovCCVtaSALDO: TFloatField;
    CDSMovCCVtaDETALLE: TStringField;
    wwCDSAplicacionesVta: TClientDataSet;
    wwCDSAplicacionesVtaID_MOV: TIntegerField;
    wwCDSAplicacionesVtaFECHA: TDateTimeField;
    wwCDSAplicacionesVtaCLIENTE: TStringField;
    wwCDSAplicacionesVtaID_CPBTE: TIntegerField;
    wwCDSAplicacionesVtaTIPOCPBTE: TStringField;
    wwCDSAplicacionesVtaCLASECPBTE: TStringField;
    wwCDSAplicacionesVtaNUMEROCPBTE: TStringField;
    wwCDSAplicacionesVtaIMPORTE: TFloatField;
    wwCDSAplicacionesVtaDETALLE: TStringField;
    QMovCCVta: TFDQuery;
    QMovCCVtaID_MOVCCVTA: TIntegerField;
    QMovCCVtaID_CPBTE: TIntegerField;
    QMovCCVtaCLIENTE: TStringField;
    QMovCCVtaFECHAVTA: TSQLTimeStampField;
    QMovCCVtaFECHAVTO: TSQLTimeStampField;
    QMovCCVtaTIPOCPBTE: TStringField;
    QMovCCVtaCLASECPBTE: TStringField;
    QMovCCVtaNROCPBTE: TStringField;
    QMovCCVtaDEBE: TFloatField;
    QMovCCVtaHABER: TFloatField;
    QMovCCVtaSALDO: TFloatField;
    QMovCCVtaDETALLE: TStringField;
    QMovCCVtaNRO_CUOTA: TIntegerField;
    QMovCCVtaID_MONEDA: TIntegerField;
    QMovCCVtaCOTIZACION: TFloatField;
    CDSMovCCVtaFECHAVTA: TSQLTimeStampField;
    CDSMovCCVtaFECHAVTO: TSQLTimeStampField;
    QAplicaciones: TFDQuery;
    QAplicacionesID_MOV: TIntegerField;
    QAplicacionesFECHA: TSQLTimeStampField;
    QAplicacionesPROVEEDOR: TStringField;
    QAplicacionesID_CPBTE: TIntegerField;
    QAplicacionesTIPOCPBTE: TStringField;
    QAplicacionesCLASECPBTE: TStringField;
    QAplicacionesNUMEROCPBTE: TStringField;
    QAplicacionesIMPORTE: TFloatField;
    QAplicacionesDETALLE: TStringField;
    CDSAplicacionesFECHA: TSQLTimeStampField;
    CDSMovCCFECHACOMPRA: TSQLTimeStampField;
    CDSMovCCFECHAVTO: TSQLTimeStampField;
    QMovCC: TFDQuery;
    QMovCCID_MOVCCCOMPRA: TIntegerField;
    QMovCCID_CPBTE: TIntegerField;
    QMovCCPROVEEDOR: TStringField;
    QMovCCFECHACOMPRA: TSQLTimeStampField;
    QMovCCFECHAVTO: TSQLTimeStampField;
    QMovCCTIPOCPBTE: TStringField;
    QMovCCCLASECPBTE: TStringField;
    QMovCCNROCPBTE: TStringField;
    QMovCCDEBE: TFloatField;
    QMovCCHABER: TFloatField;
    QMovCCSALDO: TFloatField;
    QMovCCDETALLE: TStringField;
    QMovCCID_MONEDA: TIntegerField;
    QMovCCCOTIZACION: TFloatField;
    CDSMovCCDEBE: TFloatField;
    CDSMovCCHABER: TFloatField;
    CDSMovCCSALDO: TFloatField;
    CDSMovCCID_MONEDA: TIntegerField;
    CDSMovCCCOTIZACION: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure DBGrid3TitleClick(Column: TColumn);
    procedure DBGrid4TitleClick(Column: TColumn);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    Mascara:String;
    { Public declarations }
  end;

var
  FormCorrectorCeros: TFormCorrectorCeros;

implementation

uses UDMain_FD;
{$R *.DFM}

procedure TFormCorrectorCeros.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('OPCION').AsString:='APLICACIONES';
  DMMain_FD.QOpciones.Open;
  Mascara:=DMMain_FD.QOpciones.Fields[0].AsString;
  DMMain_FD.QOpciones.Close;

  CDSAplicaciones.Open;
  CDSMovCC.Open;
  //CDSAplicacionesVta.Open;
  CDSMovCCVta.Open;

  TFloatField(CDSAplicaciones.fields[7]).DisplayFormat:=Mascara;
  TFloatField(CDSMovCC.Fields.Fields[8]).DisplayFormat:=Mascara;
  TFloatField(CDSMovCC.Fields.Fields[9]).DisplayFormat:=Mascara;
  TFloatField(CDSMovCC.Fields.Fields[10]).DisplayFormat:=Mascara;

  TFloatField(CDSAplicaciones.fields[7]).EditFormat:=Mascara;
  TFloatField(CDSMovCC.Fields.Fields[8]).EditFormat:=Mascara;
  TFloatField(CDSMovCC.Fields.Fields[9]).EditFormat:=Mascara;
  TFloatField(CDSMovCC.Fields.Fields[10]).EditFormat:=Mascara;

 // TFloatField(CDSAplicacionesVta.fields[7]).DisplayFormat:=Mascara;
  TFloatField(CDSMovCCVta.Fields.Fields[8]).DisplayFormat:=Mascara;
  TFloatField(CDSMovCCVta.Fields.Fields[9]).DisplayFormat:=Mascara;
  TFloatField(CDSMovCCVta.Fields.Fields[10]).DisplayFormat:=Mascara;

 /// TFloatField(CDSAplicacionesVta.fields[7]).EditFormat:=Mascara;
  TFloatField(CDSMovCCVta.Fields.Fields[8]).EditFormat:=Mascara;
  TFloatField(CDSMovCCVta.Fields.Fields[9]).EditFormat:=Mascara;
  TFloatField(CDSMovCCVta.Fields.Fields[10]).EditFormat:=Mascara;

end;

procedure TFormCorrectorCeros.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  CDSMovCC.IndexFieldNames:=Column.FieldName;
end;

procedure TFormCorrectorCeros.DBGrid2TitleClick(Column: TColumn);
begin
  inherited;
  CDSAplicaciones.IndexFieldNames:=Column.FieldName;
end;

procedure TFormCorrectorCeros.Button1Click(Sender: TObject);
begin
  inherited;
  CDSMovCC.First;
  CDSMovCC.DisableControls;
  while Not(CDSMovCC.Eof) DO
    begin
//      If Moneda3D(' ',Mascara,wwCDSMovCCDEBE.Value)=0 Then
      if Int(CDSMovCCDEBE.Value)=0 Then
        begin
          CDSMovCC.edit;
          CDSMovCCDEBE.Value:=0;
        end;
//      If Moneda3D(' ',Mascara,wwCDSMovCCHABER.Value)=0 Then
      if Int(CDSMovCCHABER.Value)=0 Then
        begin
          CDSMovCC.edit;
          CDSMovCCHABER.Value:=0;
        end;
      if (Int(CDSMovCCSALDO.Value)=0) then // and
//         (Frac(wwCDSMovCCSALDO.Value)=
//      If Moneda3D(' ',Mascara,wwCDSMovCCSALDO.Value)<=0 Then
        begin
          CDSMovCC.edit;
          CDSMovCCSALDO.Value:=0;
        end;
      CDSMovCC.Next;
    end;
   if CDSMovCC.State<>dsBrowse Then CDSMovCC.Post;
   CDSMovCC.EnableControls;
end;

procedure TFormCorrectorCeros.Button2Click(Sender: TObject);
begin
  inherited;
  CDSAplicaciones.DisableControls;
  CDSAplicaciones.First;
  while Not(CDSAplicaciones.Eof) DO
    begin
      If Moneda3D(' ',Mascara,CDSAplicacionesIMPORTE.Value)=0 Then
        begin
          CDSAplicaciones.edit;
          CDSAplicacionesIMPORTE.Value:=0;
        end;
      CDSAplicaciones.Next;
     end;
   if CDSAplicaciones.State<>dsBrowse Then CDSAplicaciones.Post;
  CDSAplicaciones.EnableControls;
end;

procedure TFormCorrectorCeros.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSMovCC.Close;
  CDSMovCC.Open;
  CDSAplicaciones.Close;
  CDSAplicaciones.Open;

end;

procedure TFormCorrectorCeros.ConfirmaExecute(Sender: TObject);
begin
//  inherited;
  CDSMovCC.ApplyUpdates(0);
  CDSMovCCVta.ApplyUpdates(0);
  CDSAplicaciones.ApplyUpdates(0);
  //wwCDSAplicacionesVta.ApplyUpdates(0);
  CDSMovCC.Close;
  CDSAplicaciones.Close;
  CDSMovCCVta.Close;
  //wwCDSAplicacionesVta.Close;

  CDSAplicaciones.Open;
  CDSMovCC.Open;
  //wwCDSAplicacionesVta.Open;
  CDSMovCCVta.Open;
end;

procedure TFormCorrectorCeros.DSBaseStateChange(Sender: TObject);
begin
 // inherited;
 // pnPrincipal.Enabled:=True;
end;

procedure TFormCorrectorCeros.DBGrid3TitleClick(Column: TColumn);
begin
  inherited;
  CDSMovCCVta.IndexFieldNames:=Column.FieldName;
end;

procedure TFormCorrectorCeros.DBGrid4TitleClick(Column: TColumn);
begin
  inherited;
  //wwCDSAplicacionesVta.IndexFieldNames:=Column.FieldName;

end;

procedure TFormCorrectorCeros.Button3Click(Sender: TObject);
begin
  inherited;
  CDSMovCCVta.First;
  CDSMovCCVta.DisableControls;
  while Not(CDSMovCCVta.Eof) DO
    begin
//      If Moneda3D(' ',Mascara,wwCDSMovCCVtaDEBE.Value)=0 Then
      if Int(CDSMovCCVtaDEBE.Value)=0 Then
        begin
          CDSMovCCVta.edit;
          CDSMovCCVtaDEBE.Value:=0;
        end;
//      If Moneda3D(' ',Mascara,wwCDSMovCCVtaHABER.Value)=0 Then
      if Int(CDSMovCCVtaHABER.Value)=0 Then
        begin
          CDSMovCCVta.edit;
          CDSMovCCVtaHABER.Value:=0;
        end;
//      If Moneda3D(' ',Mascara,wwCDSMovCCVtaSALDO.Value)<=0 Then
      if Int(CDSMovCCVtaSALDO.Value)=0 Then
        begin
          CDSMovCCVta.edit;
          CDSMovCCVtaSALDO.Value:=0;
        end;
      CDSMovCCVta.Next;
    end;
   if CDSMovCCVta.State<>dsBrowse Then CDSMovCCVta.Post;
   CDSMovCCVta.EnableControls;
end;

procedure TFormCorrectorCeros.Button4Click(Sender: TObject);
begin
  inherited;
//  CDSAplicacionesVta.First;
//  CDSAplicacionesVta.DisableControls;
//  while Not(CDSAplicacionesVta.Eof) DO
//    begin
//      If Moneda3D(' ',Mascara,wwCDSAplicacionesVtaIMPORTE.Value)=0 Then
//        begin
//          wwCDSAplicacionesVta.edit;
//          wwCDSAplicacionesVtaIMPORTE.Value:=0;
//        end;
//      wwCDSAplicacionesVta.Next;
//     end;
//   if wwCDSAplicacionesVta.State<>dsBrowse Then wwCDSAplicacionesVta.Post;
//  wwCDSAplicacionesVta.EnableControls;
end;

procedure TFormCorrectorCeros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormCorrectorCeros.FormDestroy(Sender: TObject);
begin
  inherited;
  FormCorrectorCeros:=nil;
end;

end.
