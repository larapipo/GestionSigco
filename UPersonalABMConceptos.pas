unit UPersonalABMConceptos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, StdCtrls, Mask, DBCtrls, Db, ActnList,
  ImgList, Buttons, ToolWin, ComCtrls, ExtCtrls, Provider, DBClient,
  IBGenerator, JvExControls,
  JvButton, JvTransparentButton, JvDBLookup, JvExStdCtrls, JvCombobox,
  JvDBCombobox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.Actions, CompBuscador, System.ImageList, Data.FMTBcd, JvAppStorage,
  JvAppIniStorage, Data.SqlExpr, JvComponentBase, JvFormPlacement, JvLabel,
  JvDBControls, JvGradient;

type
  TFormABMPersonalConceptos = class(TFormABMBase)
    LConcepto: TLabel;
    LTipo: TLabel;
    LCalculo: TLabel;
    dbeConcepto: TDBEdit;
    LImporte: TLabel;
    DBEImporte: TDBEdit;
    LMinimo: TLabel;
    LConceptoBase: TLabel;
    DBEPorcentaje: TDBEdit;
    DBEMinimo: TDBEdit;
    Label1: TLabel;
    dbeId: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    DSConceptos_1: TDataSource;
    chbVisible: TDBCheckBox;
    Label6: TLabel;
    cbTipo: TJvDBComboBox;
    cbCalculo: TJvDBComboBox;
    dbcConceptoBase: TJvDBLookupCombo;
    dbcConceptoDos: TJvDBLookupCombo;
    CDSLstConceptos_1: TClientDataSet;
    DSPLstConceptos: TDataSetProvider;
    CDSLstConceptos_1ID: TIntegerField;
    CDSLstConceptos_1CONCEPTO: TStringField;
    CDSLstConceptos_2: TClientDataSet;
    DSConceptos_2: TDataSource;
    CDSLstConceptos_2ID: TIntegerField;
    CDSLstConceptos_2CONCEPTO: TStringField;
    QLstConceptos: TFDQuery;
    QLstConceptosID: TIntegerField;
    QLstConceptosCONCEPTO: TStringField;
    QConcepto: TFDQuery;
    DSPConcpeto: TDataSetProvider;
    CDSConcepto: TClientDataSet;
    QConceptoID: TIntegerField;
    QConceptoTIPO: TStringField;
    QConceptoCONCEPTO: TStringField;
    QConceptoCALCULO: TStringField;
    QConceptoIMPORTE: TFloatField;
    QConceptoPORCENTAJE: TFloatField;
    QConceptoMINIMO: TFloatField;
    QConceptoCONCEPTOBASE: TIntegerField;
    QConceptoCOLUMNA: TIntegerField;
    QConceptoMAXIMO: TIntegerField;
    QConceptoVISIBLE: TStringField;
    QConceptoCONCEPTOBASE2: TIntegerField;
    CDSConceptoID: TIntegerField;
    CDSConceptoTIPO: TStringField;
    CDSConceptoCONCEPTO: TStringField;
    CDSConceptoCALCULO: TStringField;
    CDSConceptoIMPORTE: TFloatField;
    CDSConceptoPORCENTAJE: TFloatField;
    CDSConceptoMINIMO: TFloatField;
    CDSConceptoCONCEPTOBASE: TIntegerField;
    CDSConceptoCOLUMNA: TIntegerField;
    CDSConceptoMAXIMO: TIntegerField;
    CDSConceptoVISIBLE: TStringField;
    CDSConceptoCONCEPTOBASE2: TIntegerField;
    QBuscador: TFDQuery;
    DSPBuscador: TDataSetProvider;
    CDSBuscador: TClientDataSet;
    IntegerField6: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AgregarExecute(Sender: TObject);
    procedure BBListarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cbCalculoChange(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CDSConceptoNewRecord(DataSet: TDataSet);
    procedure BuscarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormABMPersonalConceptos: TFormABMPersonalConceptos;

implementation

uses UDMain_FD;

{$R *.DFM}


procedure TFormABMPersonalConceptos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSLstConceptos_1.Close;
  CDSLstConceptos_2.Close;
  inherited;
  Action:=caFree;
end;

procedure TFormABMPersonalConceptos.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AddClientDataSet(CDSConcepto,DSPConcpeto);
  CDSConcepto.Open;
  CDSLstConceptos_1.Open;
  CDSLstConceptos_2.Open;
  Tabla:='personal_conceptos';
  Campo:='Id';

end;

procedure TFormABMPersonalConceptos.AgregarExecute(Sender: TObject);
begin
  inherited;
  dbeConcepto.SetFocus;
end;

procedure TFormABMPersonalConceptos.BBListarClick(Sender: TObject);
begin
  inherited;
     //   FMenu.fr.LoadFromFile('RConceptos.frf');
      //  FMenu.fr.ShowReport;
end;

procedure TFormABMPersonalConceptos.BuscarExecute(Sender: TObject);
begin
  inherited;
  ComBuscadorBase.Data.Open;
  ComBuscadorBase.Execute;
  if ComBuscadorBase.rOk then
    begin
      DatoNew:=IntToStr(ComBuscadorBase.Id);
      Recuperar.Execute;
    end;
  ComBuscadorBase.Data.Close;
end;

procedure TFormABMPersonalConceptos.CDSConceptoNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString<>'' then
    CDSConceptoID.Value:=QUltimoCodigo2.Fields[0].Value+1
  else
    CDSConceptoID.Value:=1;
  CDSConceptoTIPO.Value          := 'RM';
  CDSConceptoIMPORTE.Value       := 0;
  CDSConceptoPORCENTAJE.Value    := 0;
  CDSConceptoMINIMO.Value        := 0;
  CDSConceptoCONCEPTOBASE.Value  := -1;
  CDSConceptoCONCEPTOBASE2.Value := -1;
  CDSConceptoVISIBLE.Value       := 'S';
 end;

procedure TFormABMPersonalConceptos.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSConceptoID.AsString;
  inherited;
  Recuperar.Execute;

end;

procedure TFormABMPersonalConceptos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormABMPersonalConceptos:=nil;
end;

procedure TFormABMPersonalConceptos.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSConcepto.Close;
  CDSConcepto.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSConcepto.Open;

  CDSLstConceptos_1.Close;
  CDSLstConceptos_2.Close;

  CDSLstConceptos_1.Open;
  CDSLstConceptos_2.Open;
end;

procedure TFormABMPersonalConceptos.cbCalculoChange(Sender: TObject);
begin
  inherited;
  if cbCalculo.ItemIndex=0 Then
    begin
      dbcConceptoBase.Enabled :=False;
      dbcConceptoBase.Color   :=clBtnFace;

      dbcConceptoDos.Enabled :=False;
      dbcConceptoDos.Color   :=clBtnFace;

    end
  else
    if cbCalculo.ItemIndex=1 Then
      begin
        dbcConceptoBase.Enabled :=True;
        dbcConceptoBase.Color   :=clWhite;

        dbcConceptoDos.Enabled :=False;
        dbcConceptoDos.Color   :=clBtnFace;
        CDSConceptoCONCEPTOBASE.Clear;
       end
    else
      if cbCalculo.ItemIndex=2 Then
        begin
          dbcConceptoBase.Enabled :=True;
          dbcConceptoBase.Color   :=clWhite;

          dbcConceptoDos.Enabled :=False;
          dbcConceptoDos.Color   :=clBtnFace;
          CDSConceptoCONCEPTOBASE.Clear;
        end
      else
        if cbCalculo.ItemIndex=3 Then
          begin
            dbcConceptoBase.Enabled :=True;
            dbcConceptoBase.Color   :=clWhite;

            dbcConceptoDos.Enabled :=True;
            dbcConceptoDos.Color   :=clWhite;
         end;
end;


procedure TFormABMPersonalConceptos.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  if ((Not(DSBase.DataSet.IsEmpty)) and (DSBase.DataSet.State in [dsBrowse])) Then
    begin
      if  DSBase.DataSet.FieldByName('CALCULO').Value ='F' Then
        begin
          dbcConceptoBase.Enabled :=False;
          dbcConceptoBase.Color   :=clBtnFace;

          dbcConceptoDos.Enabled :=False;
          dbcConceptoDos.Color   :=clBtnFace;
        end
      else
        if DSBase.DataSet.FieldByName('CALCULO').Value ='P' Then
          begin
            dbcConceptoBase.Enabled :=True;
            dbcConceptoBase.Color   :=clWhite;

            dbcConceptoDos.Enabled :=False;
            dbcConceptoDos.Color   :=clBtnFace;
          end
        else
          if DSBase.DataSet.FieldByName('CALCULO').Value ='C' Then
            begin
              dbcConceptoBase.Enabled :=True;
              dbcConceptoBase.Color   :=clWhite;

              dbcConceptoDos.Enabled :=False;
              dbcConceptoDos.Color   :=clBtnFace;
            end
          else
            if DSBase.DataSet.FieldByName('CALCULO').Value ='S' Then
              begin
                dbcConceptoBase.Enabled :=True;
                dbcConceptoBase.Color   :=clWhite;

                dbcConceptoDos.Enabled :=True;
                dbcConceptoDos.Color   :=clWhite;
              end;
    end;
end;

end.
