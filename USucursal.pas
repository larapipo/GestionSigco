unit USucursal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, DBClient, Provider, StdCtrls, Mask, DBCtrls,
  Db, ActnList, ImgList,
  Buttons, ToolWin, ComCtrls, ExtCtrls, JvComponentBase,
  JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls, FMTBcd,
  SqlExpr, JvAppStorage, JvAppIniStorage, System.Actions, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList, AdvEdit, DBAdvEd;

type
  TFormSucursal = class(TFormABMBase)
    Label15: TLabel;
    Label22: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    dbeDireccion: TDBEdit;
    dbeLocalidad: TDBEdit;
    dbeCodigo: TDBEdit;
    dbeNombre: TDBEdit;
    dbeRecargo: TDBEdit;
    DSPSucursal: TDataSetProvider;
    QUltimoCodigoCOD: TIntegerField;
    GroupBox1: TGroupBox;
    dbeTel1: TDBEdit;
    dbeTel2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label1: TLabel;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSSucursalDIRECCION: TStringField;
    CDSSucursalLOCALIDAD: TStringField;
    CDSSucursalTELEFONO1: TStringField;
    CDSSucursalTELEFONO2: TStringField;
    CDSSucursalAPLICA_PERCEPCION_IIBB: TStringField;
    CDSSucursalRECARGO: TFloatField;
    QBus: TFDQuery;
    QBusCODIGO: TIntegerField;
    QBusDETALLE: TStringField;
    QBusAPLICA_PERCEPCION_IIBB: TStringField;
    DSPBuscador: TDataSetProvider;
    CDSBuscador: TClientDataSet;
    CDSBuscadorCODIGO: TIntegerField;
    CDSBuscadorDETALLE: TStringField;
    CDSBuscadorAPLICA_PERCEPCION_IIBB: TStringField;
    SpeedButton1: TSpeedButton;
    ClonarCpbte: TAction;
    QHayCpbte: TFDQuery;
    QHayCpbteCOUNT: TIntegerField;
    DBCheckBox2: TDBCheckBox;
    CDSSucursalGENERA_XML_COMUN: TStringField;
    CDSSucursalHOST: TStringField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    edClaveElectronica: TDBEdit;
    sbClaveElect: TSpeedButton;
    Label4: TLabel;
    dbeCuit: TDBEdit;
    CDSSucursalCERTIFICADO_ELEC: TStringField;
    CDSSucursalCUIT: TStringField;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    CDSSucursalRAZONSOCIAL: TStringField;
    QUltimoCodigo2COD: TIntegerField;
    Label6: TLabel;
    dbeClave_cot: TDBEdit;
    Label7: TLabel;
    CDSSucursalCOT_CLAVE: TStringField;
    dbeCuit_COT: TDBEdit;
    CDSSucursalCOT_CUIT: TStringField;
    DBCheckBox3: TDBCheckBox;
    CDSSucursalAPLICA_LEY15311: TStringField;
    QBusAPLICA_LEY15311: TStringField;
    CDSBuscadorAPLICA_LEY15311: TStringField;
    procedure CDSSucursalNewRecord(DataSet: TDataSet);
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure ClonarCpbteExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure sbClaveElectClick(Sender: TObject);
    procedure CDSSucursalCUITSetText(Sender: TField; const Text: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSucursal: TFormSucursal;

implementation

{$R *.DFM}
uses UClonarCpbtes, UBuscaDirectorio, UDMain_FD;

procedure TFormSucursal.CDSSucursalCUITSetText(Sender: TField;
  const Text: string);
var
  Suma:Integer;
  NroValidacion:Integer;
begin
  //aca biene con formato 00-00000000-0
  if (text[1]<>'')  and (Text[1]<>' ') and (Text[2]<>' ') and (Text[4]<>' ') and  (Text[5]<>' ') and
     (Text[6]<>' ') and (Text[7]<>' ') and (Text[8]<>' ') and (Text[9]<>' ') and (text[10]<>' ') and
     (Text[11]<>' ') and (Text[13]<>' ') Then
    begin
      suma:=StrToInt(Copy(text,1,1))*5+StrToInt(Copy(text,2,1))*4+
            StrToInt(Copy(text,4,1))*3+StrToInt(Copy(text,5,1))*2+
            StrToInt(Copy(text,6,1))*7+StrToInt(Copy(text,7,1))*6+
            StrToInt(Copy(text,8,1))*5+StrToInt(Copy(text,9,1))*4+
            StrToInt(Copy(text,10,1))*3+StrToInt(Copy(text,11,1))*2;
      if ((suma mod 11)<>0) then
        begin
          if ((11-(suma mod 11))<>StrToInt(Copy(text,13,1))) and ((suma mod 11)<10) Then
            begin
              NroValidacion:=11-(suma mod 11);
              if NroValidacion>=10 then NroValidacion:=1;

              if MessageDlg('Numero de cuit no válido....'+#13+
                            'el numero de validación que le corresponde es '+IntToStr( NroValidacion)+#13+
                            'lo corrije?',mtInformation,[mbYes,mbNo],0)=mrYes Then
                Sender.AsString:= Copy(Text,1,12)+IntToStr(NroValidacion)
              else
                Sender.ASString:='';
             // FormClientes_2.dbeCuit.SetFocus;
            end
          else
            Sender.AsString:=Text;
        end
      else
        if ((suma mod 11)=0) then
          begin
            if StrToInt(Copy(text,13,1))<>0 Then
              begin
                ShowMessage('Numero de cuit no valido....');
                Sender.ASString:='';
               // FormClientes_2.dbeCuit.SetFocus;
              end
            else
              Sender.AsString:=Text;
          end;
      if (Copy(Text,1,2)<>'00') and
         (Copy(Text,1,2)<>'20') and
         (Copy(Text,1,2)<>'23') and
         (Copy(Text,1,2)<>'27') and
         (Copy(Text,1,2)<>'24') and
         (Copy(Text,1,2)<>'30') and
         (Copy(Text,1,2)<>'34') and
         (Copy(Text,1,2)<>'50') and
         (Copy(Text,1,2)<>'55') and
         (Copy(Text,1,2)<>'33') Then
       begin
         Sender.AsString:='';
         ShowMessage('El prefijo no se corresponde con las opciones 20/23/24/27/30/33/34....');
       end;
     end;
end;

procedure TFormSucursal.CDSSucursalNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.open;
  if QUltimoCodigo2.Fields[0].AsString='' Then
    CDSSucursalCODIGO.Value:=1
  else
    CDSSucursalCODIGO.Value:=QUltimoCodigo2.Fields[0].AsInteger+1;
  QUltimoCodigo2.Close;
  CDSSucursalAPLICA_PERCEPCION_IIBB.Value := 'N';
  CDSSucursalRECARGO.AsFloat              := 0;
  CDSSucursalGENERA_XML_COMUN.Value       := 'N';
  CDSSucursalHOST.Value                   := '';
  CDSSucursalCUIT.Value                   := '';
  CDSSucursalCERTIFICADO_ELEC.Value       := '';
  dbeCodigo.SetFocus;
end;

procedure TFormSucursal.ClonarCpbteExecute(Sender: TObject);
begin
  inherited;
  if(DSBase.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty)) Then
    begin
      QHayCpbte.Close;
      QHayCpbte.ParamByName('suc').Value:=CDSSucursalCODIGO.Value;
      QHayCpbte.Open;
      if (QHayCpbteCOUNT.Value<=0) then
        begin
          if Not(Assigned(FormClonarCpbtes)) then
            FormClonarCpbtes:=TFormClonarCpbtes.Create(self);
          FormClonarCpbtes.SucursalDestino:=CDSSucursalCODIGO.Value;
          FormClonarCpbtes.ShowModal;
        end
      else
        if DMMain_FD.UsuarioAdministrador then
          begin
            if MessageDlg('Esta por generar Comprobantes... ya hay comprobantes definidos',mtConfirmation,mbYesNo,0,mbNo)=mryes then
              begin
                if Not(Assigned(FormClonarCpbtes)) then
                  FormClonarCpbtes:=TFormClonarCpbtes.Create(self);
                FormClonarCpbtes.SucursalDestino:=CDSSucursalCODIGO.Value;
                FormClonarCpbtes.ShowModal;
              end
          end;

      QHayCpbte.Close;
    end;
  
end;

procedure TFormSucursal.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscador.Close;
  CDSBuscador.Open;
  CDSBuscador.IndexDefs.Clear;
  CDSBuscador.IndexName:='';
  ComBuscadorBase.Execute;
  if comBuscadorBase.rOk Then
    begin
        DatoNew:=IntToStr(comBuscadorBase.id);
        Recuperar.Execute;
    end;
  CDSBuscador.Close;
end;

procedure TFormSucursal.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  AddClientDataSet(CDSSucursal,DSPSucursal);
  CDSSucursal.Open;
  Tabla:='sucursal';
  Campo:='codigo';
end;

procedure TFormSucursal.FormDestroy(Sender: TObject);
begin
  inherited;
  FormSucursal:=nil;
end;

procedure TFormSucursal.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('codigo').Value:=DatoNew;
  CDSSucursal.Open;

end;

procedure TFormSucursal.sbClaveElectClick(Sender: TObject);
begin
  inherited;
 if Not(Assigned(FormBuscaDirectorio)) Then
    FormBuscaDirectorio:=TFormBuscaDirectorio.Create(Application);
  FormBuscaDirectorio.ShowModal;
  if FormBuscaDirectorio.ModalResult=mrOk Then
    edClaveElectronica.Text :=FormBuscaDirectorio.Directorio
  else
    edClaveElectronica.Text :='';
end;

procedure TFormSucursal.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSSucursalCODIGO.AsString;
  inherited;
  Recuperar.Execute;
end;

procedure TFormSucursal.DSBaseStateChange(Sender: TObject);
var x:integer;
begin
  inherited;
  QHayCpbte.Close;
  QHayCpbte.ParamByName('suc').Value:=CDSSucursalCODIGO.Value;
  QHayCpbte.Open;
  x:=QHayCpbteCOUNT.Value;
  QHayCpbte.Close;

 // ClonarCpbte.Enabled:= (DSBase.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty)) and (x<=0);
end;

end.