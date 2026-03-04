unit UTasas_Ret_perc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ActnList, ComCtrls, Buttons, StdCtrls, ToolWin,
  ExtCtrls, DBCtrls, Provider, DBClient, Grids, DBGrids,Mask,
  JvComponentBase, ImgList, JvExControls,Math,
  JvGradient, JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr,
  JvAnimatedImage, JvThread, DBXCommon,StrUtils, WideStrings, Data.DBXInterBase,
  System.Actions, JvAppStorage, JvAppIniStorage, Data.DB, CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait;

type
  TFormTasasRet_Perc = class(TFormABMBase)
    edPath: TEdit;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    OpenDialog: TOpenDialog;
    LeerTxt: TAction;
    CDSTasas: TClientDataSet;
    DSPTasas: TDataSetProvider;
    CDSTasasCUIT: TStringField;
    CDSTasasTIPO_CONVENIO: TStringField;
    CDSTasasESTADO: TStringField;
    CDSTasasCAMBIO_ALICUOTA: TStringField;
    CDSTasasGRUPO_PERCEPCION: TSmallintField;
    CDSTasasGRUPO_RETENCION: TSmallintField;
    DSTasas: TDataSource;
    Label1: TLabel;
    Label3: TLabel;
    lbReg: TLabel;
    lbNroReg: TLabel;
    cbDecimal: TComboBox;
    Label4: TLabel;
    lbTiempoLectua: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    lbinicio: TLabel;
    lbfin: TLabel;
    Bevel1: TBevel;
    Label9: TLabel;
    CDSTasasFECHA: TSQLTimeStampField;
    CDSTasasDESDE: TSQLTimeStampField;
    CDSTasasHASTA: TSQLTimeStampField;
    chbBorrarDatos: TCheckBox;
    btCargar: TBitBtn;
    jvHiloTx: TJvThread;
    Timer1: TTimer;
    Label10: TLabel;
    lbPorMinuto: TLabel;
    lbRestan: TLabel;
    lbMinutos: TLabel;
    Label11: TLabel;
    chExistentes: TCheckBox;
    QContribuyentes: TSQLQuery;
    CDSContribuyentes: TClientDataSet;
    DSPContribuyentes: TDataSetProvider;
    CDSContribuyentesCODIGO: TStringField;
    CDSContribuyentesNOMBRE: TStringField;
    CDSContribuyentesNROCUIT: TStringField;
    CDSContribuyentesTIPO: TStringField;
    Label12: TLabel;
    pgProceso: TProgressBar;
    TimerMinuto: TTimer;
    SQLThreads: TFDConnection;
    QTasas: TFDQuery;
    QTasasCUIT: TStringField;
    QTasasFECHA: TSQLTimeStampField;
    QTasasDESDE: TSQLTimeStampField;
    QTasasHASTA: TSQLTimeStampField;
    QTasasTIPO_CONVENIO: TStringField;
    QTasasESTADO: TStringField;
    QTasasCAMBIO_ALICUOTA: TStringField;
    QTasasTASA_PERCEPCION: TFloatField;
    QTasasTASA_RETENCION: TFloatField;
    QTasasGRUPO_PERCEPCION: TSmallintField;
    QTasasGRUPO_RETENCION: TSmallintField;
    CDSTasasTASA_PERCEPCION: TFloatField;
    CDSTasasTASA_RETENCION: TFloatField;
    spGravar_2_Borrar: TFDStoredProc;
    QBorrar: TFDQuery;
    QBuscaCuit: TFDQuery;
//    procedure LeerTxtExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure btCargarClick(Sender: TObject);
    procedure jvHiloTxExecute(Sender: TObject; Params: Pointer);
    procedure Timer1Timer(Sender: TObject);
    procedure chExistentesClick(Sender: TObject);
    procedure TimerMinutoTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TotalReg,TotalxMinuto,Minutos:Integer;
    Tiempo:Extended;
    Existentes:boolean;
 //   procedure CargarPadron;
//    procedure CargarPadronActivos;
    procedure CargarPadron_Txt;
    procedure Progreso;
    procedure Minuto;
    procedure ProcesoTimer;
    procedure PantallaFinal;

  end;

var
  Cancelado:Boolean;
  ArchiTxt:TextFile;
  I,Segundos:Integer;
  FormTasasRet_Perc: TFormTasasRet_Perc;
  RegProcesados,Commit_record:Integer;


implementation

uses UDMain_FD,DMStoreProcedureForm;

{$R *.DFM}

procedure TFormTasasRet_Perc.PantallaFinal;
begin
  btCargar.Enabled  :=True;
  btBorrar.Enabled  :=True;
  lbfin.Caption     :=TimeToStr(now);
  btCancelar.Enabled:=False;
  btBorrar.Enabled  :=True;
  btCargar.Enabled  :=True;
  btSalir.Enabled   :=True;
end;

procedure TFormTasasRet_Perc.Progreso;
begin
  pgProceso.Position := RegProcesados;
  lbNroReg.Caption   := IntToStr(RegProcesados);
  lbRestan.Caption   := FormatFloat('0.00',Tiempo)+' Minutos';
  lbMinutos.Caption  := IntToStr(Segundos);
end;

procedure TFormTasasRet_Perc.Minuto;
begin
  sbEstado.SimpleText := 'Se Grabaron '+FormatFloat(',0',RegProcesados)+'/'+FormatFloat(',0',TotalReg);
end;

procedure TFormTasasRet_Perc.ProcesoTimer;
begin
  lbPorMinuto.Caption := FormatFloat(',0',TotalxMinuto);
end;

procedure TFormTasasRet_Perc.CargarPadron_TXT;
VAR Tipo,S, sMsgErrores, Imp:String;
    DBXtTasas:TDBXTransaction;
    aux:Real;
    Gravar:Boolean;
begin

  Commit_Record:=10000;
  RegProcesados:=0;

  Cancelado      :=False;
  Minutos        :=0;



  while Not Eof(ArchiTxt) do
    begin

      ReadLn(ArchiTxt,s);

      TotalxMinuto     := TotalxMinuto+1; // este se resetea..

      RegProcesados    := RegProcesados+1;

      Gravar:=True;

      if cancelado=False Then
        begin
          if Existentes then
            begin
              QBuscaCuit.Close;
              QBuscaCuit.ParamByName('cuit').Value:=Copy(s,30,2)+'-'+Copy(s,32,8)+'-'+copy(s,40,1);
              QBuscaCuit.Open;
              Gravar:=QBuscaCuit.Fields[0].Value>0;
            end
          else
            if Existentes=False then Gravar:=True;

          if Gravar then
            begin
              Tipo:=copy(s,1,1);
              DMStoreProcedure.spGravar_2.ParamByName('TIPO_PERCECPION').Value  := copy(s,1,1);
              delete(s,1,2);
              DMStoreProcedure.spGravar_2.ParamByName('desde').AsDate  := StrToDateTime(FormatDateTime('dd/mm/yyyy',StrToDate( (Copy(s,10,2) +'/'+ Copy(s,12,2) +'/'+ Copy(s,14,4) ))));
              DMStoreProcedure.spGravar_2.ParamByName('hasta').AsDate  := StrToDateTime(FormatDateTime('dd/mm/yyyy',StrToDate( (Copy(s,19,2) +'/'+ Copy(s,21,2) +'/'+ Copy(s,23,4) ))));
              DMStoreProcedure.spGravar_2.ParamByName('fecha').AsDate  := StrToDateTime(FormatDateTime('dd/mm/yyyy',StrToDate( (Copy(s,1,2)  +'/'+ Copy(s,3,2)  +'/'+ Copy(s,5,4) ))));
              DMStoreProcedure.spGravar_2.ParamByName('cuit').Value    := Copy(s,28,2)+'-'+Copy(s,30,8)+'-'+copy(s,38,1);
              DMStoreProcedure.spGravar_2.ParamByName('tipo').Value    := Copy(s,40,1);  // tipo de contribuyente
              DMStoreProcedure.spGravar_2.ParamByName('estado').Value  := Copy(S,42,1);  // se se da de alta o baja
              DMStoreProcedure.spGravar_2.ParamByName('cambio').Value  := Copy(s,44,1);  // si cambio la alicuota
              Imp:=copy(s,46,4);
            //  Imp:=AnsiReplaceStr(Imp,',','.');
              if Tipo='P' then
                DMStoreProcedure.spGravar_2.ParamByName('tasa_perc').AsFloat  := StrToFloat(Imp)
              else
                if Tipo='R' then
                  DMStoreProcedure.spGravar_2.ParamByName('tasa_ret').AsFloat := StrToFloat(Imp);

              DMStoreProcedure.spGravar_2.ParamByName('g_per').Value := StrToInt(Copy(s,51,2));
              DMStoreProcedure.spGravar_2.ParamByName('g_ret').Value := StrToInt(Copy(s,51,2));
              DMStoreProcedure.spGravar_2.ExecProc;
            end;
        end
      else // si, cancelado = True
        begin
          if MessageDlg('continua ?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            begin
              btCancelar.Enabled :=True;
              btSalir.Enabled    :=False;
              btBorrar.Enabled   :=False;
              cancelado          :=False;
            end
          else
            begin
              SysUtils.FormatSettings.DecimalSeparator   :='.';
              pgProceso.Position :=0;
              lbfin.Caption      :=TimeToStr(now);
              btCancelar.Enabled :=False;
              btBorrar.Enabled   :=True;
              btSalir.Enabled    :=True;
              Timer1.Enabled     := False;
              TimerMinuto.Enabled:= False;

              jvHiloTx.Terminate;
              if jvHiloTx.Terminated then
                exit;
            end;
        end;
      if ((RegProcesados>0) and ((RegProcesados mod COMMIT_RECORD) = 0)) or (RegProcesados>=TotalReg) then
        begin
          try
            jvHiloTx.Synchronize(FormTasasRet_Perc.Minuto);
            begin
              if (SQLThreads.InTransaction) then
                begin
                  SQLThreads.Commit;
                  SQLThreads.StartTransaction; //Inicia una Trans consecutiva
                end
              else
                SQLThreads.StartTransaction;  //Fuerza iniciar una Trans
            end;
          Except
            on E:Exception do
              begin
                SQLThreads.Rollback;
                sMsgErrores:= sMsgErrores + 'Error al grabar bloque de datos. '#13+E.Message;
                Break;
              end;
          end;
        end;
      jvHiloTx.Synchronize(FormTasasRet_Perc.Progreso);
    end;
//  pgProceso.Position:=0;
  //Application.ProcessMessages;
  CloseFile(ArchiTxt);
  jvHiloTx.Synchronize(PantallaFinal);
  SysUtils.FormatSettings.DecimalSeparator   :='.';
  Timer1.Enabled     := False;
  TimerMinuto.Enabled:= False;
end;

procedure TFormTasasRet_Perc.chExistentesClick(Sender: TObject);
begin
  inherited;
  Existentes:=chExistentes.Checked;
end;

procedure TFormTasasRet_Perc.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  cbDecimal.ItemIndex:=0;
  // Aca asigino los parametros del SQLConnections del Main
  begin
    SQLThreads.Connected := False;
    SQLThreads.Params    := DMMain_FD.fdcGestion.Params;
    SQLThreads.Connected := True;
  end;

end;

procedure TFormTasasRet_Perc.SpeedButton1Click(Sender: TObject);
var Inicio:TDateTime;
    arch: TStringList;
begin
  inherited;
  if OpenDialog.Execute Then
    if OpenDialog.FileName<>'' Then
      begin
        Screen.Cursor:=crHourGlass;
        sbEstado.SimpleText:='Cargando Archivo....';
        Application.ProcessMessages;
        Inicio:=Now;
        edPath.Text:=OpenDialog.FileName;

        arch := TStringList.Create;
        arch.LoadFromFile(edPath.Text);

        AssignFile(ArchiTxt, OpenDialog.FileName);
        Reset(ArchiTxt);
        lbReg.Caption:=FormatFloat(',0',arch.Count);//IntToStr(FileSize(ArchiTxt));

        lbTiempoLectua.Caption:=TimetoStr(inicio-now);

        Screen.Cursor:=crDefault;

        pgProceso.Min     := 0;
        pgProceso.Max     := arch.Count;//(Architxt);
        pgProceso.Position:= 0;
        TotalReg          := arch.Count;//  FileSize(Architxt);
        Segundos          := 0;
      end
    else
      ShowMessage('No hay archivo Seleccionado');
  if Not(Assigned(arch)) then arch.Free;
  sbEstado.SimpleText:='..';
  Application.ProcessMessages;
  Screen.Cursor:=crDefault;

end;

procedure TFormTasasRet_Perc.Timer1Timer(Sender: TObject);
var aux:extended;
begin
  inherited;
  if (TotalxMinuto>0) then
    Aux:=(TotalReg-RegProcesados)/TotalxMinuto
  else
    Aux:=0;
  Tiempo:= RoundTo(Aux,-2);

  jvHiloTx.Synchronize(FormTasasRet_Perc.ProcesoTimer);
  TotalxMinuto:=0;
end;

procedure TFormTasasRet_Perc.TimerMinutoTimer(Sender: TObject);
begin
  inherited;
  if Segundos<60 then
    Segundos:=Segundos+1
  else
    Segundos:=0;
end;

procedure TFormTasasRet_Perc.FormClose(Sender: TObject;
var Action: TCloseAction);
var p:byte;
begin
  inherited;
  Timer1.Enabled     := False;
  TimerMinuto.Enabled:= False;
  jvHiloTx.Terminate;
  while jvHiloTx.Terminated=False Do p:=1;
  SysUtils.FormatSettings.DecimalSeparator:='.';
  Action:=caFree;
end;

procedure TFormTasasRet_Perc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#27 Then
    Cancelado:=True
  else
    Cancelado:=False;
end;

procedure TFormTasasRet_Perc.FormShow(Sender: TObject);
begin
  inherited;
//  btCancelar.Enabled:=False;
//  btSalir.Enabled   :=True;
end;

procedure TFormTasasRet_Perc.jvHiloTxExecute(Sender: TObject; Params: Pointer);
begin
  inherited;
  CargarPadron_Txt;
  jvHiloTx.Terminate;

//  btCargar.Enabled  :=True;
//  btBorrar.Enabled  :=True;
//  lbfin.Caption     :=TimeToStr(now);
//  btCancelar.Enabled:=False;
//  btBorrar.Enabled  :=True;
//  btCargar.Enabled  :=True;
//  btSalir.Enabled   :=True;
end;

procedure TFormTasasRet_Perc.CancelarExecute(Sender: TObject);
begin
  Cancelado:=True;
  btCancelar.Enabled:=False;
  btConfirma.Enabled:=False;
  btSalir.Enabled   :=True;
end;

procedure TFormTasasRet_Perc.FormDestroy(Sender: TObject);
begin
  inherited;
  FormTasasRet_Perc:=nil;
end;

procedure TFormTasasRet_Perc.btCargarClick(Sender: TObject);
begin
  inherited;
  sbEstado.SimpleText:='';
  cbDecimal.Visible:=False;
  Existentes:=chExistentes.Checked;

  if chbBorrarDatos.Checked then
   begin
     sbEstado.SimpleText:='Borrando Archivos.....';
     Borrar.Execute;
   end;
  sbEstado.SimpleText:='';
  if FileSize(ArchiTxt)<=0 Then
    Raise Exception.Create('No hay datos para procesar...');

  btCargar.Enabled  :=False;
  btBorrar.Enabled  :=False;

  btCancelar.Enabled:=True;
  btSalir.Enabled   :=False;

  lbinicio.Caption  := TimeToStr(Now);

  if cbDecimal.ItemIndex=0 Then
    SysUtils.FormatSettings.DecimalSeparator:=','
  else
    if cbDecimal.ItemIndex=1 Then
      SysUtils.FormatSettings.DecimalSeparator:='.';

  Timer1.Enabled     := True;
  TimerMinuto.Enabled:= True;
  jvHiloTx.FreeOnTerminate:=True;
  jvHiloTx.Execute(self);
 // cbDecimal.Visible:=True;
end;

procedure TFormTasasRet_Perc.BorrarExecute(Sender: TObject);
begin
 // inherited;
  QBorrar.Close;
  QBorrar.ExecSQL;
  QBorrar.Close;
  CDSTasas.Close;
  CDSTasas.Open;
end;

end.
