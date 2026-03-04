unit UImportarStockExcel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, IniFiles, ActnList, ComCtrls, Buttons, ToolWin, ExtCtrls,
  DBClient, Provider, Mask, JvComponentBase, ImgList, JvExControls, JvGradient,
  JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr, JvExMask, JvToolEdit,
  DBXCommon, JvAppStorage, JvAppIniStorage, System.Actions, Data.DB,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, CompBuscador, Vcl.Menus,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,StrUtils,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList, AdvUtil, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, JvExExtCtrls,
  JvExtComponent, JvPanel;

type
  TFormImportarStockExcel = class(TFormABMBase)
    edPath: TEdit;
    SpeedButton1: TSpeedButton;
    spAyudaFormato: TSpeedButton;
    btImportar: TBitBtn;
    OpenDialog: TOpenDialog;
    Label4: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edMarca: TEdit;
    edRubro: TEdit;
    edSubRubro: TEdit;
    chAlfa: TCheckBox;
    rgJustifica: TRadioGroup;
    cbChar: TComboBox;
    Label5: TLabel;
    spMarca: TSpeedButton;
    spRubro: TSpeedButton;
    spSubRubro: TSpeedButton;
    Button1: TButton;
    ceMarca: TJvComboEdit;
    ceRubro: TJvComboEdit;
    ceSubRubro: TJvComboEdit;
    CDSBuscaSubRubro: TClientDataSet;
    DSPBuscaSubRubro: TDataSetProvider;
    CDSBuscaSubRubroCODIGO_SUBRUBRO: TStringField;
    CDSBuscaSubRubroDETALLE_SUBRUBRO: TStringField;
    CDSBuscaSubRubroCODIGO_RUBRO: TStringField;
    CDSBuscaRubro: TClientDataSet;
    DSPBuscaRubro: TDataSetProvider;
    CDSBuscaRubroCODIGO_RUBRO: TStringField;
    CDSBuscaRubroDETALLE_RUBRO: TStringField;
    CDSBuscaMarca: TClientDataSet;
    DSPBuscaMarca: TDataSetProvider;
    pbEstado: TProgressBar;
    JvDBStatusLabel1: TJvDBStatusLabel;
    VerificaCodAltExistentes: TAction;
    PopupMenu1: TPopupMenu;
    VerificaCodAltExistentes1: TMenuItem;
    QVerifi_SubRubro: TFDQuery;
    QBusca_X_Alt: TFDQuery;
    QExisteCodigo: TFDQuery;
    QSubRubro: TFDQuery;
    QRubro: TFDQuery;
    QBuscadorMarca: TFDQuery;
    QMarca: TFDQuery;
    QMarcaMARCA_STK: TStringField;
    QMarcaDESCRIPCION_MARCA: TStringField;
    QMarcaOBSERVACION_MARCA: TStringField;
    QRubroCODIGO_RUBRO: TStringField;
    QRubroDETALLE_RUBRO: TStringField;
    QRubroCONTROL_RUBRO: TStringField;
    QRubroFUERA_PROMO: TStringField;
    QSubRubroCODIGO_SUBRUBRO: TStringField;
    QSubRubroDETALLE_SUBRUBRO: TStringField;
    QSubRubroCODIGO_RUBRO: TStringField;
    QSubRubroCONTROL_SUBRUBRO: TStringField;
    QSubRubroFUERA_PROMO: TStringField;
    QExisteCodigoCODIGO_STK: TStringField;
    QBusca_X_AltCODIGO_STK: TStringField;
    QUltimoCodRub: TFDQuery;
    QBuscadorSubRrub: TFDQuery;
    QBuscadorRubro: TFDQuery;
    QBuscadorRubroCODIGO_RUBRO: TStringField;
    QBuscadorRubroDETALLE_RUBRO: TStringField;
    QBuscadorRubroCONTROL_RUBRO: TStringField;
    QBuscadorRubroFUERA_PROMO: TStringField;
    QBuscadorSubRrubCODIGO_SUBRUBRO: TStringField;
    QBuscadorCodigo: TFDQuery;
    QCodigoFree: TFDQuery;
    QCodigoFreeNEWCODIGO: TIntegerField;
    QBuscadorCodigoMAX: TStringField;
    QUltimoCodRubMAX: TStringField;
    QUltimoCodSubRub: TFDQuery;
    QUltimoCodMarca: TFDQuery;
    QUltimoCodMarcaMAX: TStringField;
    QUltimoCodSubRubMAX: TStringField;
    QVerifi_SubRubroCODIGO_SUBRUBRO: TStringField;
    QVerifi_SubRubroDETALLE_SUBRUBRO: TStringField;
    QVerifi_SubRubroCODIGO_RUBRO: TStringField;
    QVerifi_SubRubroCONTROL_SUBRUBRO: TStringField;
    QVerifi_SubRubroFUERA_PROMO: TStringField;
    ComBuscadorMarcas: TComBuscador;
    CDSBuscaMarcaMARCA_STK: TStringField;
    CDSBuscaMarcaDESCRIPCION_MARCA: TStringField;
    ComBuscadorRubro: TComBuscador;
    ComBuscadorSubRubro: TComBuscador;
    QBuscadorMarcaMARCA_STK: TStringField;
    QBuscadorMarcaDESCRIPCION_MARCA: TStringField;
    spAltaCB: TFDStoredProc;
    spABMSubRubro: TFDStoredProc;
    spABMPrecio: TFDStoredProc;
    spABMUnidades: TFDStoredProc;
    spABMRubro: TFDStoredProc;
    spABMMarca: TFDStoredProc;
    spABMPLU: TFDStoredProc;
    spABMStock: TFDStoredProc;
    DSStock: TDataSource;
    dbgStockTable: TDBAdvGrid;
    mtStock: TFDMemTable;
    sgStock: TAdvStringGrid;
    pnAviso: TJvPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    JvDBStatusLabel2: TJvDBStatusLabel;
    rgBuscarRub_SUb: TRadioGroup;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btImportarClick(Sender: TObject);
    procedure ceMarcaKeyPress(Sender: TObject; var Key: Char);
    procedure ceMarcaButtonClick(Sender: TObject);
    procedure ceRubroButtonClick(Sender: TObject);
    procedure ceSubRubroKeyPress(Sender: TObject; var Key: Char);
    procedure ceSubRubroButtonClick(Sender: TObject);
    procedure spAyudaFormatoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure spMarcaClick(Sender: TObject);
    procedure spRubroClick(Sender: TObject);
    procedure spSubRubroClick(Sender: TObject);
    procedure ceRubroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ceMarcaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ceSubRubroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure VerificaCodAltExistentesExecute(Sender: TObject);
    procedure mtCabeceraBeforeClose(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
    Lista      :TStringList;
    CodigoAlfa :String;
    Justifica,
    Caracter   :Integer;
    GeneraCodigoBarra,CodigoSecuencial :String;

    function Generar_Codigo:string;
    Function AgregarMarca(Detalle:string):String;
    function AgregarRubro(Detalle:string):String;
    function AgregarSubRubro(Detalle:String; rubro:string):String;
  end;

var
  FormImportarStockExcel : TFormImportarStockExcel;
  ArchivoIni             : TInifile;

implementation

uses UAvisoProceso,UMarcas_2, URubro_2, USubRubro_2,UDMain_FD,
     UListCpbteNoImportados,DMbuscadoresForm;

{$R *.DFM}


Function TFormImportarStockExcel.AgregarMarca(Detalle: string):String;
var V_Codigo:String;
begin
  V_Codigo :='';
  QUltimoCodMarca.Close;
  QUltimoCodMarca.Open;
  if QUltimoCodMarca.Fields[0].AsString<>'' then
    V_Codigo:=Copy('0000',1,4-Length(IntToStr(QUltimoCodMarca.Fields[0].AsInteger+1)))+IntToStr(QUltimoCodMarca.Fields[0].AsInteger+1)
   else
    V_Codigo:='0000';
   QUltimoCodMarca.Close;
   spABMMarca.Close;
   spABMMarca.ParamByName('CODIGO').Value                := V_Codigo;
   spABMMarca.ParamByName('Detalle').AsString            := Detalle;
   spABMMarca.ExecProc;
   spABMMarca.Close;
   Result := V_Codigo;
end;


Function TFormImportarStockExcel.AgregarRubro(Detalle:string):String;
var V_Codigo:String;
begin
  V_Codigo  :='';
  QUltimoCodRub.Close;
  QUltimoCodRub.Open;
  if QUltimoCodRub.Fields[0].AsString<>'' then
    V_Codigo:=Copy('000',1,3-Length(IntToStr(QUltimoCodRub.Fields[0].AsInteger+1)))+IntToStr(QUltimoCodRub.Fields[0].AsInteger+1)
  else
    V_Codigo:='001';
  spABMRubro.Close;
  spABMRubro.ParamByName('CODIGO').Value                := V_Codigo;
  spABMRubro.ParamByName('Detalle').AsString            := Detalle;
  spABMRubro.ExecProc;
  spABMRubro.Close;
  Result := V_Codigo;
end;

function TFormImportarStockExcel.AgregarSubRubro(Detalle:String; Rubro: string):String;
var V_Codigo:String;
Ok:Boolean;
begin
  V_Codigo:='';
  QUltimoCodSubRub.Close;
  QUltimoCodSubRub.ParamByName('codigo').AsString:=Rubro;
  QUltimoCodSubRub.Open;
  if QUltimoCodSubRub.Fields[0].AsString<>'' then
    V_Codigo:=Copy('00000',1,5-Length(IntToStr(QUltimoCodSubRub.Fields[0].AsInteger+1)))+IntToStr(QUltimoCodSubRub.Fields[0].AsInteger+1)
  else
    V_Codigo:=Rubro+'01';
  Ok :=False;
  while Not(Ok) do
    begin
      QVerifi_SubRubro.Close;
      QVerifi_SubRubro.ParamByName('codigo').AsString:=V_Codigo;
      QVerifi_SubRubro.Open;
      if QVerifi_SubRubroCODIGO_SUBRUBRO.AsString<>'' then
        begin
          Ok:=False;
          V_Codigo:=Copy('00000',1,5-Length(IntToStr(StrToInt(V_Codigo)+1)))+(IntToStr(StrToInt(V_Codigo)+1));
        end
      else
        Ok:=True;
    end;

  spABMSubRubro.Close;
  spABMSubRubro.ParamByName('CODIGO').Value          := V_Codigo;
  spABMSubRubro.ParamByName('Detalle').AsString      := Detalle;
  spABMSubRubro.ParamByName('codigo_Rubro').AsString := Rubro;
  spABMSubRubro.ExecProc;
  spABMSubRubro.Close;
  Result := V_Codigo;
end;



function TFormImportarStockExcel.Generar_Codigo:string;
var num:Integer;
dato:String;
begin
   if (CodigoSecuencial='S')  Then
     begin
       QUltimoCodigo2.Close;
       QUltimoCodigo2.Open;
       if QUltimoCodigo2.Fields[0].AsString<>'' Then
         Result:=IntToStr(QUltimoCodigo2.Fields[0].AsInteger+1)
       else
         Result:='0';
       QUltimoCodigo2.Close;
     end
   else
     begin
       QBuscadorCodigo.Close;
       if (mtStock.FindField('rubro')<>NIL) then
          QBuscadorCodigo.ParamByName('Id_Rubro').Value := mtStock.fieldByName('rubro').Value
       else
          QBuscadorCodigo.ParamByName('Id_Rubro').Value := ceRubro.text;

       if (mtStock.FindField('subrubro')<>NIL) then
         begin
           QBuscadorCodigo.ParamByName('Id_SubRubro').Value := mtStock.fieldByName('subrubro').Value;
           dato := mtStock.fieldByName('subrubro').Value;
         end
       else
         begin
           QBuscadorCodigo.ParamByName('Id_SubRubro').Value := ceSubRubro.Text;
           dato:= ceSubRubro.Text;
         end;

       QBuscadorCodigo.Open;

       IF (QBuscadorCodigo.Fields[0].AsString<>'') THEN
         Num := StrToInt(QBuscadorCodigo.Fields[0].Value) + 1
       ELSE
         num := StrToInt(Dato+'000');
       result := Copy('00000000000', 1, 8 - Length(IntToStr(Num))) + IntToStr(Num);
     end;
end;


procedure TFormImportarStockExcel.mtCabeceraBeforeClose(DataSet: TDataSet);
begin
  inherited;
  ShowMessage('cerrar mtCabecera');
end;

procedure TFormImportarStockExcel.SpeedButton1Click(Sender: TObject);
var Nombre:String;
c,r:Integer;
ColName:String;
begin
  inherited;
  if OpenDialog.Execute Then
    if  OpenDialog.FileName<>'' Then
      begin
        edPath.Text:=OpenDialog.FileName;

        sgStock.LoadFromXLS(edPath.Text);


        mtStock.Close;
        mtStock.FieldDefs.Clear;
        for c:= 0 to sgStock.ColCount - 1 do
          begin
            if Trim(sgStock.Cells[c,0])<>'' Then
            mtStock.FieldDefs.Add(sgStock.Cells[c,0],ftString,50,False);
          end;
        mtStock.Open;

        mtStock.DisableControls;
        for r:= 1 to sgStock.RowCount - 1 do
          begin
            if Trim(sgStock.Cells[1,r])<>'' then
              begin
                mtStock.Append;
                for c:= 0 to sgStock.ColCount - 1 do
                  begin
                    ColName       :=sgStock.Cells[c,0];
                    if mtStock.FindField(ColName)<>nil then
                      mtStock.FieldByName(ColName).Value:=sgStock.Cells[c,r];
                  end;
                mtStock.Post;
              end;
          end;
        FormImportarStockExcel.Height:=FormImportarStockExcel.Height+20;
        FormImportarStockExcel.Height:=FormImportarStockExcel.Height-20;
        mtStock.EnableControls;
      end;

  end;

procedure TFormImportarStockExcel.spMarcaClick(Sender: TObject);
begin
  inherited;
   if Not(Assigned(FormMarca_2)) Then
     FormMarca_2:=TFormMarca_2.Create(Application);
   FormMarca_2.Show;
end;

procedure TFormImportarStockExcel.spRubroClick(Sender: TObject);
begin
  inherited;
   if Not(Assigned(FormRubro_2)) Then
     FormRubro_2:=TFormRubro_2.Create(Self);
   FormRubro_2.Show;
   //ceRubro.EditText:=FormRubro_2.Codigo;
   //edRubro.Text    :=FormRubro_2.Detalle;
   ceSubRubro.EditText:='';
   edSubRubro.Text    :='';
end;

procedure TFormImportarStockExcel.spSubRubroClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormSubRubros_2)) Then
     FormSubRubros_2:=TFormSubRubros_2.Create(self);
  FormSubRubros_2.Show;
  //ceSubRubro.EditText:=FormSubRubros_2.Codigo;
  //edSubRubro.Text    :=FormSubRubros_2.Detalle;
end;

procedure TFormImportarStockExcel.VerificaCodAltExistentesExecute(
  Sender: TObject);
begin
  inherited;
  VerificaCodAltExistentes1.Checked:=Not(VerificaCodAltExistentes1.Checked);
end;

procedure TFormImportarStockExcel.btImportarClick(Sender: TObject);
var codigo:string;
codigoAux,ValorAux:String;
CodRubAux,CodSubAux,
Numero:string;
i,x:Byte;
Control:Boolean;
begin
  inherited;
  pnAviso.Visible:=False;

  if dbgStockTable.DataSource.DataSet.Active=False then
   raise Exception.Create('No Hay Origen de datos Activo ......');

  if dbgStockTable.DataSource.DataSet.RecordCount<=0 then
   raise Exception.Create('No Hay datos para Importar ......');

 pbEstado.Min:=0;
  if mtStock.RecordCount-1>0 then
   pbEstado.Max:=mtStock.RecordCount-1;
  pbEstado.Position:=0;
 if (Lista=nil) then
   lista:=TStringList.Create
 else
   Lista.Clear;

 if ((mtStock.FindField('rubro')=NIL) and (mtStock.FindField('subrubro')=NIL)) then
   if (edRubro.Text='') or (edSubRubro.Text='') Then
     if MessageDlg('No se indico Rubro ni Sub rubro, como tampoco se asignaron .... continua de todos modos?.....',mtConfirmation,mbYesNo,0)=mrNo Then
       Exit;
   //  Raise Exception.Create(' No se indico rubro o subrubro.....');

  Control:=False;
  mtStock.First;
  while not mtStock.Eof do
    begin
      if VerificaCodAltExistentes1.Checked then
        begin
          Control:=True;
          while (Control=True) and (Not(mtStock.Eof)) do
            begin
              QBusca_X_Alt.Close;
              QBusca_X_Alt.ParamByName('codigo').Value:=mtStock.FindField('codigo_alternativo').AsString;
              QBusca_X_Alt.Open;
              if QBusca_X_AltCODIGO_STK.AsString<>'' then
                begin
                  sbEstado.SimpleText:=Codigo+'-'+trim(UpperCase(copy(mtStock.fieldByName('Detalle').AsString,1,45)));
                  if pbEstado.Position<pbEstado.Max then
                    pbEstado.Position:=pbEstado.Position+1;
                   Application.ProcessMessages;
                  lista.Add('Rec.:'+IntToStr(mtStock.RecNo)+'..Existente-'+codigo+'-'+mtStock.fieldByName('Detalle').AsString);
                  Control:=True;
                  mtStock.Next;
                end
              else
               Control:=False;
              QBusca_X_Alt.Close;
            end;
        end;

      if (Trim(mtStock.fieldbyName('CODIGO').AsString)='') then
        codigo:=Generar_Codigo
      else
        codigo := Trim(mtStock.fieldbyName('CODIGO').AsString);

      if (mtStock.fieldbyName('DETALLE').AsString<>'') and (mtStock.fieldbyName('DETALLE_ADICIONAL').AsString<>'')  then
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          Try

            if chAlfa.Checked=False Then
              codigo := copy('00000000',1,8-length(CODIGO)) + Codigo
            else
              begin
                if rgJustifica.ItemIndex=1 Then
                  begin
                    if cbChar.ItemIndex=0 Then
                      codigo  := Codigo+copy('        ',1,8-length(CODIGO));
                    if cbChar.ItemIndex=1 Then
                      codigo  := Codigo+copy('00000000',1,8-length(CODIGO));
                    if cbChar.ItemIndex=2 Then
                      codigo  := Codigo+copy('--------',1,8-length(CODIGO));
                    if cbChar.ItemIndex=3 Then
                      codigo  := Codigo+copy('........',1,8-length(CODIGO));
                  end
                else
                  if rgJustifica.ItemIndex=0 Then
                    begin
                      if cbChar.ItemIndex=0 Then
                        codigo   := copy('        ',1,8-length(CODIGO))+Codigo;
                      if cbChar.ItemIndex=1 Then
                        codigo   := copy('00000000',1,8-length(CODIGO))+Codigo;
                      if cbChar.ItemIndex=2 Then
                        codigo   := copy('--------',1,8-length(CODIGO))+Codigo;
                      if cbChar.ItemIndex=3 Then
                        codigo   := copy('........',1,8-length(CODIGO))+Codigo;
                    end;
              end;

            spABMStock.Close;
   {1***}   spABMStock.ParamByName('CODIGO').AsString                  := codigo;
   {2***}   spABMStock.ParamByName('Detalle').AsString                 := trim(UpperCase(copy(mtStock.fieldByName('Detalle').AsString,1,45)));
   {3***}   if (mtStock.FindField('Detalle_Adicional')<>NIL) Then
              spABMStock.ParamByName('Detalle_Adicional').AsString := trim(UpperCase(copy(mtStock.fieldByName('Detalle_adicional').AsString,1,300)));
            if (mtStock.FindField('Detalle_Adicional')<>NIL) and (Trim(UpperCase(copy(mtStock.fieldByName('Detalle_adicional').AsString,1,300)))='') then
              spABMStock.ParamByName('Detalle_Adicional').AsString := trim(UpperCase(copy(mtStock.fieldByName('Detalle').AsString,1,45)));
            if (mtStock.FindField('Detalle_Adicional')=NIL) then
              spABMStock.ParamByName('Detalle_Adicional').AsString := trim(UpperCase(copy(mtStock.fieldByName('Detalle').AsString,1,45)));

    {4***}  if (mtStock.FindField('costo')<>NIL) Then
              begin
                if mtStock.fieldByName('Costo').AsString<>'' then
                  spABMStock.ParamByName('costo_gravado').Value := mtStock.fieldByName('Costo').Value;
                if mtStock.fieldByName('Costo').AsString='' then
                  spABMStock.ParamByName('costo_gravado').Value := 0;
                end
            else
              begin
                spABMStock.ParamByName('costo_gravado').Value  := 0;
                if mtStock.fieldByName('Costo').AsString='' then
                  spABMStock.ParamByName('costo_gravado').Value := 0;
               end;


     {5***} if (mtStock.FindField('codigo_alternativo')<>NIL) then
              spABMStock.ParamByName('codigo_alternativo').AsString    := Copy(Trim(mtStock.fieldByName('codigo_alternativo').AsString),1,20)
            else
              spABMStock.ParamByName('codigo_alternativo').AsString:=codigo;

            if (mtStock.FindField('contenido_unidad')<>NIL) then
              begin
                ValorAux:=Trim(mtStock.FindField('contenido_unidad').AsString);
                if (ValorAux='') Then
                  ValorAux:='0';
                Numero:='';
                for I := 0 to Length(ValorAux) - 1 do
                  begin
                    if ValorAux[i] in ['0'..'9','.',','] then
                      Numero:=Numero+ValorAux[i];
                  end;

                 if (Pos(',',Numero)>1) then
                   begin
                     x:=pos(',',Numero);
                     if x<>0 then
                       begin
                         delete(Numero,x,1);
                         insert('.',Numero,x);
                       end;
                   end;

                if (numero<>'') then
     {6***}       spABMStock.ParamByName('PRESENTACION_CANTIDAD').Value := StrToFloat(Numero)
                else
                  spABMStock.ParamByName('PRESENTACION_CANTIDAD').Value := 0;
              end
            else
              spABMStock.ParamByName('PRESENTACION_CANTIDAD').Value := 0;


            if (mtStock.FindField('contenido_unidad')<>NIL) then
              begin
                ValorAux:=Trim(UpperCase(mtStock.FindField('contenido_unidad').AsString));
                if ValorAux='' then
                  ValorAux:='UNI';

                Numero:='';
                for I := 1 to Length(ValorAux)  do
                  begin
                    if (ValorAux[i] in ['A'..'Z','.']) then
                      Numero:=Numero+ValorAux[i];
                  end;

                if (numero<>'') then
                  begin
                    spABMUnidades.Close;
                    spABMUnidades.ParamByName('sigla').Value:=Copy(Numero,1,3);
                    spABMUnidades.ExecProc;
                    spABMUnidades.Close;
                    spABMStock.ParamByName('PRESENTACION_UNIDAD').Value := Copy(Numero,1,3);
                  end
                else
       {7***}    spABMStock.ParamByName('PRESENTACION_UNIDAD').Value := '';
              end
            else
              spABMStock.ParamByName('PRESENTACION_UNIDAD').Value :='';
// *********************************************************************************************
// *******************  M A R C A S ************************************************************
// *********************************************************************************************
            if (mtStock.FindField('marca')<>NIL) then
              begin
                if (mtStock.fieldByName('marca').AsString<>'') then
                  begin
                    QBuscadorMarca.Close;
                    QBuscadorMarca.ParamByName('descripcion').Value:=UpperCase(Trim(mtStock.fieldByName('marca').AsString));
                    QBuscadorMarca.Open;
                    if QBuscadorMarcaMARCA_STK.AsString<>'' then
                      spABMStock.ParamByName('Marca').AsString    := QBuscadorMarcaMARCA_STK.AsString
                    else
                      spABMStock.ParamByName('Marca').AsString    := AgregarMarca(UpperCase(Trim(mtStock.fieldByName('marca').AsString)));
                    QBuscadorMarca.Close;
                  end;
              end
            else
     {8***}   if ceMarca.Text<>'' Then
                 spABMStock.ParamByName('Marca').AsString    := ceMarca.Text
              else
                 spABMStock.ParamByName('Marca').AsString    := '';
// *********************************************************************************************
// *******************  R U B R O S ************************************************************
// *********************************************************************************************
            if (mtStock.FindField('rubro')<>NIL) then
      {9***}  begin
                QBuscadorRubro.Close;
                QBuscadorRubro.ParamByName('codigo').Value     := AnsiRightStr((Trim(mtStock.fieldByName('rubro').asString)),3);
                QBuscadorRubro.ParamByName('descripcion').Value:= Copy(UpperCase(Trim(mtStock.fieldByName('rubro').asString)),1,35);
                case rgBuscarRub_SUb.ItemIndex of
                  1:QBuscadorRubro.ParamByName('codigo').Value     :='';
                  0:QBuscadorRubro.ParamByName('descripcion').Value:='';
                end;

                QBuscadorRubro.Open;
                if Not(QBuscadorRubro.IsEmpty) then
                  QBuscadorRubro.First;
                if QBuscadorRubroCODIGO_RUBRO.Value<>'' then
                  spABMStock.ParamByName('Rubro').AsString    := QBuscadorRubroCODIGO_RUBRO.Value
                else
                  spABMStock.ParamByName('Rubro').AsString    := AgregarRubro(UpperCase(Trim(Copy(mtStock.fieldByName('rubro').AsString,1,35))));
                QBuscadorRubro.Close;
              end
            else
              spABMStock.ParamByName('Rubro').AsString    := ceRubro.text;
// ****************************************************************************************************
// ******************* S U B - R U B R O S ************************************************************
// ****************************************************************************************************
     {10**} if (mtStock.FindField('subrubro')<>NIL) then
              begin
                QBuscadorSubRrub.Close;
                QBuscadorSubRrub.ParamByName('descripcion').Value := Copy(UpperCase(Trim(mtStock.fieldByName('Subrubro').asString)),1,45);
                QBuscadorSubRrub.ParamByName('rubro').Value       := spABMStock.ParamByName('Rubro').AsString;// AnsiRightStr((Trim(mtStock.fieldByName('rubro').asString)),3);
                QBuscadorSubRrub.ParamByName('SuBrubro').Value    := AnsiRightStr((Trim(mtStock.fieldByName('SuBrubro').asString)),5);

                case rgBuscarRub_SUb.ItemIndex of
                  1:QBuscadorSubRrub.ParamByName('subrubro').Value   :='';
                  0:QBuscadorSubRrub.ParamByName('descripcion').Value:='';
                 end;
                QBuscadorSubRrub.Open;
                if Not(QBuscadorSubRrub.IsEmpty) then
                  QBuscadorSubRrub.First;
                if QBuscadorSubRrubCODIGO_SUBRUBRO.Value<>'' then
                  spABMStock.ParamByName('SubRubro').AsString    := QBuscadorSubRrubCODIGO_SUBRUBRO.Value
                else
                  spABMStock.ParamByName('SubRubro').AsString    := AgregarSubRubro(Copy( UpperCase(Trim(mtStock.fieldByName('Subrubro').AsString)),1,45) ,
                                                                    Copy(spABMStock.ParamByName('Rubro').AsString,1,35));
                QBuscadorSubRrub.Close;
              end
            else
              spABMStock.ParamByName('SubRubro').AsString := ceSubRubro.Text;
// *********************************************************************************************
// *********************************************************************************************
// *********************************************************************************************
            if (mtStock.FindField('m_gravamen')<>NIL) then
              spABMStock.ParamByName('modo_gravamen').AsString    := mtStock.fieldByName('m_gravamen').Value
            else
              spABMStock.ParamByName('modo_gravamen').AsString    := 'G';

      {11*} spABMStock.ParamByName('costo_exento').Value  := 0;

            if ((mtStock.FindField('iva1')<>NIL) and (Trim(mtStock.fieldByName('iva1').AsString)<>'')) then
              spABMStock.ParamByName('tasa_iva').AsInteger    := StrToInt(Trim(mtStock.fieldByName('iva1').AsString))
            else
              spABMStock.ParamByName('tasa_iva').AsInteger    := 1;

            if (mtStock.FindField('iva2')<>NIL) and (Trim(mtStock.fieldByName('iva2').AsString)<>'') then
              spABMStock.ParamByName('sobretasa_iva').AsInteger    := StrToInt(Trim(mtStock.fieldByName('iva2').AsString))
            else
              spABMStock.ParamByName('sobretasa_iva').AsInteger    := 1;

            if (mtStock.FindField('moneda')<>NIL) and (Trim(mtStock.FindField('moneda').AsString)<>'') and
               (StrToInt(Trim(mtStock.FindField('moneda').AsString))<2) then
              spABMStock.ParamByName('moneda').AsInteger    := StrToInt(Trim(mtStock.FindField('moneda').AsString))
            else
              spABMStock.ParamByName('moneda').AsInteger    := 1;


            if (mtStock.FindField('m_gravamen')<>NIL) and (mtStock.fieldByName('m_gravamen').Value='E') then
              begin
                spABMStock.ParamByName('costo_exento').Value  := mtStock.fieldByName('Costo').AsFloat;
                spABMStock.ParamByName('costo_gravado').Value := 0;
              end;

            spABMStock.ExecProc;

            if GeneraCodigoBarra='S' then
              begin
                spAltaCB.Close;
                spAltaCB.ParamByName('CODIGO').Value             :=  codigo;
                spAltaCB.ParamByName('CODIGOBARRA').Value        := '1'+codigo;
                spAltaCB.ParamByName('CANTIDAD_POR_BULTO').Value := 1;
                spAltaCB.ExecProc;
              end;

            if (mtStock.FindField('codigo_ean')<>NIL) then
              begin
                spAltaCB.Close;
                spAltaCB.ParamByName('CODIGO').Value             := codigo;
                spAltaCB.ParamByName('CODIGOBARRA').Value        := mtStock.FindField('codigo_ean').AsString;
                if mtStock.FindField('cantidad_por_bulto')<>nil then
                  spAltaCB.ParamByName('CANTIDAD_POR_BULTO').Value := mtStock.FindField('cantidad_por_bulto').Value
                else
                  spAltaCB.ParamByName('CANTIDAD_POR_BULTO').Value := 1;
                spAltaCB.ExecProc;
               end;

            if (mtStock.FindField('codigo_ean_2')<>NIL) then
              begin
                spAltaCB.Close;
                spAltaCB.ParamByName('CODIGO').Value             :=  codigo;
                spAltaCB.ParamByName('CODIGOBARRA').Value        :=  mtStock.FindField('codigo_ean_2').AsString;
                if mtStock.FindField('cantidad_por_bulto')<>nil then
                  spAltaCB.ParamByName('CANTIDAD_POR_BULTO').Value := mtStock.FindField('cantidad_por_bulto').Value
                else
                  spAltaCB.ParamByName('CANTIDAD_POR_BULTO').Value := 1;
                spAltaCB.ExecProc;
              end;

            if (mtStock.FindField('codigo_ean_3')<>NIL) then
              begin
                spAltaCB.Close;
                spAltaCB.ParamByName('CODIGO').Value             :=  codigo;
                spAltaCB.ParamByName('CODIGOBARRA').Value        :=  mtStock.FindField('codigo_ean_3').AsString;
                if mtStock.FindField('cantidad_por_bulto')<>nil then
                  spAltaCB.ParamByName('CANTIDAD_POR_BULTO').Value := mtStock.FindField('cantidad_por_bulto').Value
                else
                  spAltaCB.ParamByName('CANTIDAD_POR_BULTO').Value := 1;
                spAltaCB.ExecProc;
              end;

            if (mtStock.FindField('codigo_ean_4')<>NIL) then
              begin
                spAltaCB.Close;
                spAltaCB.ParamByName('CODIGO').Value             :=  codigo;
                spAltaCB.ParamByName('CODIGOBARRA').Value        :=  mtStock.FindField('codigo_ean_4').AsString;
                if mtStock.FindField('cantidad_por_bulto')<>nil then
                  spAltaCB.ParamByName('CANTIDAD_POR_BULTO').Value := mtStock.FindField('cantidad_por_bulto').Value
                else
                  spAltaCB.ParamByName('CANTIDAD_POR_BULTO').Value := 1;
                spAltaCB.ExecProc;
              end;

            if (mtStock.FindField('PLU')<>NIL) then
              begin
                spABMPLU.Close;
                spABMPLU.ParamByName('CODIGO').Value     :=  codigo;
                spABMPLU.ParamByName('PLU').Value        :=  AnsiRightStr('00000'+mtStock.FindField('PLU').AsString,5);
                spABMPLU.ExecProc;
              end;

            if (mtStock.FindField('Lista')<>NIL) and
              (mtStock.FindField('Codigo_precio')<>NIL) Then
              BEGIN
                spABMPrecio.Close;
                spABMPrecio.ParamByName('id_lista').Value      := mtStock.fieldByName('Lista').Value;
                spABMPrecio.ParamByName('codigo_precio').Value := mtStock.fieldByName('Codigo_precio').Value;
                spABMPrecio.ParamByName('codigo').Value        := codigo;
                spABMPrecio.ExecProc;
              END;

            sbEstado.SimpleText:=Codigo+'-'+trim(UpperCase(copy(mtStock.fieldByName('Detalle').AsString,1,45)));
            if pbEstado.Position<pbEstado.Max then
              pbEstado.Position:=pbEstado.Position+1;
            Application.ProcessMessages;

            DMMain_FD.fdcGestion.Commit;
          except
            on e: exception do
              begin
                ShowMessage(e.message);
                DMMain_FD.fdcGestion.Rollback;
                lista.Add('Rec.:'+IntToStr(mtStock.RecNo)+'..Fallo Ingr.-'+codigo+'-'+mtStock.fieldByName('Detalle').AsString);
              end;
          end;
        end;
      mtStock.Next;
    end;
  mtStock.Active       :=False;
  sbEstado.SimpleText  :='';
  Application.ProcessMessages;
 end;

procedure TFormImportarStockExcel.ceMarcaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 if (key=vk_delete) or (Key=VK_back) Then
    begin
      edMarca.Text:='';
      ceMarca.Text:='';
    end;

end;

procedure TFormImportarStockExcel.ceMarcaKeyPress(Sender: TObject;
   var Key: Char);
Var Dato:String;
begin
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 4 - (Length(ceMarca.Text))) + ceMarca.Text;
      ceMarca.Text := Dato;
      QMarca.Close;
      QMarca.ParamByName('Marca').Value := Dato;
      QMarca.Open;
      IF QMarcaMARCA_STK.AsString<>'' Then
        begin
          ceMarca.Text:= QMarcaMARCA_STK.Value;
          edMarca.Text:= QMarcaDESCRIPCION_MARCA.Value;
        end
      else
        begin
          ceMarca.Text:= '';
          edMarca.Text:= '';
        end;
      QMarca.Close;
    end;
end;

procedure TFormImportarStockExcel.Button1Click(Sender: TObject);
begin
  inherited;
  if (lista<>nil) and (lista.Count>0) then
    begin
      if Not(Assigned(FormListaNoImportados)) then
        FormListaNoImportados:=TFormListaNoImportados.Create(Application);
      FormListaNoImportados.mLista.Lines:=(lista);
      FormListaNoImportados.Show;
    end
  else
    ShowMessage('No hay Novedades');  

end;

procedure TFormImportarStockExcel.ceMarcaButtonClick(Sender: TObject);
begin
  inherited;
  CDSBuscaMarca.Close;
  CDSBuscaMarca.Open;
  ComBuscadorMarcas.Execute;
  IF ComBuscadorMarcas.rOk THEN
    begin
      QMarca.Close;
      QMarca.ParamByName('codigo').Value := ComBuscadorMarcas.Id;
      QMarca.Open;
      IF QMarcaMARCA_STK.AsString<>'' Then
        begin
          ceMarca.Text:= QMarcaMARCA_STK.Value;
          edMarca.Text:= QMarcaDESCRIPCION_MARCA.Value;
        end;
    end;
  CDSBuscaMarca.Close;
end;

procedure TFormImportarStockExcel.ceRubroButtonClick(Sender: TObject);
begin
  inherited;

  CDSBuscaRubro.Close;
  CDSBuscaRubro.Open;
  ComBuscadorRubro.Execute;
  IF ComBuscadorRubro.rOk THEN
    begin
      QRubro.Close;
      QRubro.ParamByName('Codigo').Value := ComBuscadorRubro.Id;
      QRubro.Open;
      IF QRubroCODIGO_RUBRO.AsString<>'' Then
        begin
          ceRubro.Text:= QRubroCODIGO_RUBRO.Value;
          edRubro.Text:= QRubroDETALLE_RUBRO.Value;
        end;
    end;
  CDSBuscaRubro.Close;
end;

procedure TFormImportarStockExcel.ceRubroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 if (key=vk_delete) or (Key=VK_back) Then
    begin
      edRubro.Text:='';
      ceRubro.Text:='';
    end;
end;

procedure TFormImportarStockExcel.ceSubRubroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if (key=vk_delete) or (Key=VK_back) Then
    begin
      edSubRubro.Text:='';
      ceSubRubro.Text:='';
    end;
end;

procedure TFormImportarStockExcel.ceSubRubroKeyPress(Sender: TObject;
  var Key: Char);
Var Dato:String;
begin
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 3 - (Length(ceSubRubro.Text))) + ceSubRubro.Text;
      ceSubRubro.Text := Dato;
      QSubRubro.Close;
      QSubRubro.ParamByName('Rubro').Value := Dato;
      QSubRubro.Open;
      IF QSubRubroCODIGO_SUBRUBRO.AsString<>'' Then
        begin
          ceSubRubro.Text:= QSubRubroCODIGO_SUBRUBRO.Value;
          edSubRubro.Text:= QSubRubroDETALLE_SUBRUBRO.Value;
        end
      else
        begin
          ceSubRubro.Text:= '';
          edSubRubro.Text:= '';
        end;
      QSubRubro.Close;
    end;

end;

procedure TFormImportarStockExcel.ceSubRubroButtonClick(Sender: TObject);
begin
  inherited;
  ;
  CDSBuscaSubRubro.Close;
  CDSBuscaSubRubro.Params.ParamByName('rubro').Value:=ceRubro.Text;
  CDSBuscaSubRubro.Open;
  ComBuscadorSubRubro.Execute;
  IF ComBuscadorSubRubro.rOk THEN
    BEGIN
      QSubRubro.Close;
      QSubRubro.ParamByName('Codigo').Value := ComBuscadorSubRubro.id;
      QSubRubro.Open;
      IF QSubRubroCODIGO_SUBRUBRO.AsString<>'' Then
        begin
          ceSubRubro.Text:= QSubRubroCODIGO_SUBRUBRO.Value;
          edSubRubro.Text:= QSubRubroDETALLE_SUBRUBRO.Value;
        end
     END;
  CDSBuscaSubRubro.Close;
end;

procedure TFormImportarStockExcel.spAyudaFormatoClick(Sender: TObject);
begin
  inherited;
 if pnAviso.Visible=False Then
    pnAviso.Visible:=True
  else
    if pnAviso.Visible=True Then
      pnAviso.Visible:=False;
end;

procedure TFormImportarStockExcel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'ImportarStockExcel.ini');
  //*************************************************************
  if chAlfa.Checked then
    ArchivoIni.WriteString('Importacion', 'Alfa',  'S')
  else
    ArchivoIni.WriteString('Importacion', 'Alfa',  'N');

  ArchivoIni.WriteInteger('Importacion', 'Justifica', rgJustifica.ItemIndex);
  ArchivoIni.WriteInteger('Importacion', 'Caracter', cbChar.ItemIndex);

  ArchivoIni.WriteInteger('busqueda', 'busqueda', rgBuscarRub_SUb.ItemIndex);


  ArchivoIni.Free;
  FreeAndNil(lista);


  Action:=caFree;
end;

procedure TFormImportarStockExcel.FormDestroy(Sender: TObject);
begin
  inherited;
  FormImportarStockExcel:=nil;
end;

procedure TFormImportarStockExcel.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 { if (Key=#10) and (ceMarca.Focused) then
    ceMarca.OnButtonClick(Sender)
  else
    if (Key=#10) and (ceRubro.Focused) then
      ceRubro.OnButtonClick(Sender)
    else
     if (Key=#10) and (ceSubRubro.Focused) then
      ceSubRubro.OnButtonClick(Sender);}
end;

procedure TFormImportarStockExcel.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize := False;
  sbEstado.SimplePanel:=True;
  sbEstado.SimpleText:='';
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'ImportarStockExcel.ini');
  //*************************************************************
  CodigoAlfa                := ArchivoIni.ReadString('Importacion', 'Alfa', 'N');
  Justifica                 := ArchivoIni.ReadInteger('Importacion', 'Justifica', 0);
  Caracter                  := ArchivoIni.ReadInteger('Importacion', 'Caracter', 0);
  rgBuscarRub_SUb.ItemIndex := ArchivoIni.ReadInteger('busqueda', 'busqueda', 0);

  ArchivoIni.Free;

  chAlfa.Checked        := CodigoAlfa='S';
  rgJustifica.ItemIndex := Justifica;
  cbChar.ItemIndex      := Caracter;

 // Verifico si Genera Codigo Barra
  DMMain_FD.QOpciones.CLose;
  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='GENERACB';
  DMMain_FD.QOpciones.Open;
  if (DMMain_FD.QOpciones.Fields[0].AsString<>'') then
    GeneraCodigoBarra:=Trim(DMMain_FD.QOpciones.Fields[0].AsString[1])
  else
    GeneraCodigoBarra:='N';


  DMMain_FD.QOpciones.CLose;
  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='SECUENCIAL';
  DMMain_FD.QOpciones.Open;
  CodigoSecuencial:=Trim(DMMain_FD.QOpciones.Fields[0].AsString[1]);

  DMMain_FD.QOpciones.CLose;




  //AutoSize:=True;
//  cbChar.ItemIndex:=0;
end;

end.