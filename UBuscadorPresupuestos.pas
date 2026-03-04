unit UBuscadorPresupuestos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Data.DB, Datasnap.Provider, Datasnap.DBClient,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, JvExControls, JvLabel, JvDBControls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxTextEdit, cxDBEdit, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, Vcl.Menus,IniFiles, AdvGroupBox, AdvOfficeButtons, AdvUtil,
  AdvObj, BaseGrid, AdvGrid, DBAdvGrid, System.Actions, Vcl.ActnList;

type
  TFormBuscadorPresupuestos = class(TForm)
    pnBase: TPanel;
    Label1: TLabel;
    JvDBStatusLabel1: TJvDBStatusLabel;
    cxDBTextEdit1: TDBEdit;
    pnPie: TPanel;
    btOk: TBitBtn;
    btCancelar: TBitBtn;
    pnCabecera: TPanel;
    Label3: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    edDato: TEdit;
    DSBuscador: TDataSource;
    QBuscado: TFDQuery;
    Label4: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    PopupMenu1: TPopupMenu;
    TotaldePresupuesto1: TMenuItem;
    TotalporDetalledeItems1: TMenuItem;
    CDSBuscador: TClientDataSet;
    DSPBuscador: TDataSetProvider;
    CDSBuscadorID_PR: TIntegerField;
    CDSBuscadorTIPOCPBTE: TStringField;
    CDSBuscadorCLASECPBTE: TStringField;
    CDSBuscadorLETRAFAC: TStringField;
    CDSBuscadorNROCPBTE: TStringField;
    CDSBuscadorCODIGO: TStringField;
    CDSBuscadorNOMBRE: TStringField;
    CDSBuscadorRAZONSOCIAL: TStringField;
    CDSBuscadorTOTAL: TFloatField;
    CDSBuscadorOBSERVACION1: TStringField;
    CDSBuscadorOBSERVACION2: TStringField;
    CDSBuscadorANULADO: TStringField;
    CDSBuscadorREFERENCIA: TStringField;
    CDSBuscadorFECHAVTA: TSQLTimeStampField;
    CDSBuscadorNROCPBTE2: TStringField;
    CDSBuscadorNRO_ORDEN_COMP: TStringField;
    CDSBuscadorMUESTRATOTALITEMS: TFloatField;
    CDSBuscadorFECHA_REVISION: TSQLTimeStampField;
    rgBuscarPor: TAdvOfficeRadioGroup;
    CDSBuscadorDETALLE: TStringField;
    CDSBuscadorSECTOR: TStringField;
    DBAdvGrid1: TDBAdvGrid;
    ActionList1: TActionList;
    Buscar: TAction;
    procedure edDatoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edDatoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dbgResultadoKeyPress(Sender: TObject; var Key: Char);
    procedure dbgResultadoDblClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbgResultadoTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure DBAdvGrid1DblClick(Sender: TObject);
    procedure DBAdvGrid1ClickSort(Sender: TObject; ACol: Integer);
    procedure DBAdvGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBAdvGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
  private
    FId:integer;
    FTipo :String;
    FClase:String;
    FTipoComp:String;
    { Private decrations }
  public
    { Public declarations }
    ArchivoIni:TIniFile;
  published
    property id:integer read fid write fid;
    property Tipo:String read FTipo write FTipo;
    property Clase:String read FClase write FClase;
    property TipoComp:String read FTipoComp write FTipoComp;
  end;


var
  FormBuscadorPresupuestos: TFormBuscadorPresupuestos;

implementation

{$R *.dfm}

procedure TFormBuscadorPresupuestos.btCancelarClick(Sender: TObject);
begin
  fid   :=-1;
  FTipo :='';
  FClase:='';
end;

procedure TFormBuscadorPresupuestos.btOkClick(Sender: TObject);
begin
//  DBAdvGrid1.ro
  FId   := CDSBuscadorID_PR.Value;
  FTipo := CDSBuscadorTIPOCPBTE.Value;
  FClase:= CDSBuscadorCLASECPBTE.Value;
end;

procedure TFormBuscadorPresupuestos.BuscarExecute(Sender: TObject);
begin
  CDSBuscador.Close;

  case rgBuscarPor.ItemIndex of
    0:CDSBuscador.CommandText:= 'select f.id_pr,f.tipocpbte,f.fechavta,f.fecha_revision, f.clasecpbte,f.letrafac,f.nrocpbte2, f.codigo,f.nombre,f.total,f.observacion1, f.observacion2,'+
                                'f.razonsocial,f.anulado,f.referencia,f.nro_orden_comp,f.nrocpbte,f.detalle,f.sector,'+
                                'f.muestratotalitems,f.Multiple  from buscador_presupuesto f '+

                                ' where ( (f.observacion1 containing :dato ) or (f.observacion2 containing :dato ) or (:dato is null) ) ';


    1:CDSBuscador.CommandText:= 'select f.id_pr,f.tipocpbte,f.fechavta,f.fecha_revision, f.clasecpbte,f.letrafac,f.nrocpbte2, f.codigo,f.nombre,f.total,f.observacion1, f.observacion2,'+
                                'f.razonsocial,f.anulado,f.referencia,f.nro_orden_comp,f.nrocpbte,f.detalle,f.sector,'+
                                'f.muestratotalitems,f.Multiple  from buscador_presupuesto f '+


                                ' where ((f.nombre containing :dato ) or (:dato is null) )';

    2:CDSBuscador.CommandText:= 'select f.id_pr,f.tipocpbte,f.fechavta,f.fecha_revision, f.clasecpbte,f.letrafac,f.nrocpbte2, f.codigo,f.nombre,f.total,f.observacion1, f.observacion2,'+
                                'f.razonsocial,f.anulado,f.referencia,f.nro_orden_comp,f.nrocpbte,f.detalle,f.sector,'+
                                'f.muestratotalitems,f.Multiple  from buscador_presupuesto f '+


                                ' where ( (f.referencia  containing :dato ) or (:dato is null) )';

    3:CDSBuscador.CommandText:= 'select f.id_pr,f.tipocpbte,f.fechavta,f.fecha_revision, f.clasecpbte,f.letrafac,f.nrocpbte2, f.codigo,f.nombre,f.total,f.observacion1, f.observacion2,'+
                                'f.razonsocial,f.anulado,f.referencia,f.nro_orden_comp,f.nrocpbte,f.detalle,f.sector,'+
                                'f.muestratotalitems,f.Multiple  from buscador_presupuesto f '+


                                ' where ( (f.nro_orden_comp containing :dato ) or (:dato is null) )';

    4:CDSBuscador.CommandText:= 'select f.id_pr,f.tipocpbte,f.fechavta,f.fecha_revision, f.clasecpbte,f.letrafac,f.nrocpbte2, f.codigo,f.nombre,f.total,f.observacion1, f.observacion2,'+
                                'f.razonsocial,f.anulado,f.referencia,f.nro_orden_comp,f.nrocpbte,f.detalle,f.sector,'+
                                'f.muestratotalitems,f.Multiple  from buscador_presupuesto f '+


                                ' where ( (f.detalle containing :dato ) or (:dato is null) )';

    5:CDSBuscador.CommandText:= 'select f.id_pr,f.tipocpbte,f.fechavta,f.fecha_revision, f.clasecpbte,f.letrafac,f.nrocpbte2, f.codigo,f.nombre,f.total,f.observacion1, f.observacion2,'+
                                'f.razonsocial,f.anulado,f.referencia,f.nro_orden_comp,f.nrocpbte,f.detalle,f.sector,'+
                                'f.muestratotalitems,f.Multiple  from buscador_presupuesto f '+


                                ' where ( (f.sector containing :dato ) or (:dato is null) )';

    6:CDSBuscador.CommandText:= 'select f.id_pr,f.tipocpbte,f.fechavta,f.fecha_revision, f.clasecpbte,f.letrafac,f.nrocpbte2, f.codigo,f.nombre,f.total,f.observacion1, f.observacion2,'+
                                'f.razonsocial,f.anulado,f.referencia,f.nro_orden_comp,f.nrocpbte,f.detalle,f.sector,'+
                                'f.muestratotalitems,f.Multiple  from buscador_presupuesto f '+


                               ' where ( (f.multiple containing :dato ) or (:dato is null) )';




  end;


  CDSBuscador.Params.ParamByName('dato').Value:=Trim(edDato.Text);
  CDSBuscador.Open;


  edDato.SetFocus;
  edDato.SelectAll;
end;

procedure TFormBuscadorPresupuestos.DBAdvGrid1ClickSort(Sender: TObject;
  ACol: Integer);
var campo:String;
begin
 try
   Campo := DBAdvGrid1.Columns[Acol].FieldName;// Field.FieldName;
   with (DBAdvGrid1.DataSource.DataSet as TClientDataSet) do
   if (IndexFieldNames<>Campo) then
     IndexFieldNames := Campo // Ascendente
   else
     begin
       AddIndex(Campo, Campo, [], Campo); // Descendente
       IndexName := Campo;
     end;
 except // Para que no salte una excepción si la columna es un campo calculado.
 end;
end;

procedure TFormBuscadorPresupuestos.DBAdvGrid1DblClick(Sender: TObject);
begin
  btOk.Click;
end;

procedure TFormBuscadorPresupuestos.DBAdvGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=VK_RETURN then
    btOk.Click;
end;

procedure TFormBuscadorPresupuestos.DBAdvGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
    btOk.Click;
end;

procedure TFormBuscadorPresupuestos.dbgResultadoDblClick(Sender: TObject);
begin
  btOk.Click;
end;

procedure TFormBuscadorPresupuestos.dbgResultadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
    begin
      Key:=#0;
      btOk.Click;
    end;
  edDato.SetFocus;
  edDato.SelectAll;
end;

procedure TFormBuscadorPresupuestos.dbgResultadoTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
   begin
    if CDSBuscador.IndexFieldNames = Field.FieldName then
      CDSBuscador.IndexFieldNames := Field.FieldName + ':DN'
    Else
      CDSBuscador.IndexFieldNames := Field.FieldName;
  end;
end;

procedure TFormBuscadorPresupuestos.edDatoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then
    begin
       Buscar.Execute;
    end
  else
   if Key = VK_DOWN then
      begin
        DBAdvGrid1.SetFocus;
        if Not(DBAdvGrid1.DataSource.DataSet.Eof) then
          DBAdvGrid1.DataSource.DataSet.Next;
      end
   else
     if Key = VK_UP then
        begin
          DBAdvGrid1.SetFocus;
          if Not(DBAdvGrid1.DataSource.DataSet.Bof) then
            DBAdvGrid1.DataSource.DataSet.Prior;
        end;
  //else
//   if ((key=VK_DOWN) or (key=VK_UP)) and (Shift=[ssAlt]) then
//     begin
//       if (Key = VK_DOWN)  then
//          begin
//            if rgBuscarPor.ItemIndex<3 then
//              rgBuscarPor.ItemIndex:= rgBuscarPor.ItemIndex+1;
//          end
//       else
//         if (Key = VK_UP) then
//            begin
//              if rgBuscarPor.ItemIndex>0 then
//                rgBuscarPor.ItemIndex:= rgBuscarPor.ItemIndex-1;
//            end;
//     end;


  edDato.SetFocus;

end;

procedure TFormBuscadorPresupuestos.edDatoKeyPress(Sender: TObject; var Key: Char);
begin
  //if key=#13 then
  //  begin
  //    Key:=#0;
  //    CDSBuscador.Close;
  //    CDSBuscador.Params.ParamByName('dato').Value :=Trim(edDato.Text);
   //   CDSBuscador.Open;
  //  end;
 // edDato.SetFocus;
end;

procedure TFormBuscadorPresupuestos.FormActivate(Sender: TObject);
begin
  edDato.SetFocus;
end;

procedure TFormBuscadorPresupuestos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'buscador_presupuesto.ini');
  ArchivoIni.WriteBool('Total', 'Total', TotaldePresupuesto1.Checked);
  ArchivoIni.WriteBool('Total', 'Total', TotalporDetalledeItems1.Checked);
  ArchivoIni.WriteInteger('Grup', 'Index', rgBuscarPor.ItemIndex);

  ArchivoIni.Free;
  Action:=caFree;
end;

procedure TFormBuscadorPresupuestos.FormCreate(Sender: TObject);
var i,Ind:integer;
begin
  AutoSize:=False;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'buscador_presupuesto.ini');
  //*************************************************************
  TotaldePresupuesto1.Checked      := ArchivoIni.ReadBool('Total', 'Total', True);
  TotalporDetalledeItems1.Checked  := ArchivoIni.ReadBool('Total', 'Total', False);
  rgBuscarPor.ItemIndex            := ArchivoIni.ReadInteger('Grup', 'Index', 1);
  ArchivoIni.Free;

  
  {
  for i:= 0 to dbgResultado.Columns.Count-1 do
    begin
      if dbgResultado.Columns[I].FieldName='TOTAL' Then
        Ind:=i;
    end;
  dbgResultado.Columns[Ind].Visible := TotalporDetalledeItems1.Checked;

  for i:= 0 to dbgResultado.Columns.Count-1 do
    begin
      if dbgResultado.Columns[I].FieldName='MUESTRATOTALITEMS' Then
        Ind:=i;
    end;

  dbgResultado.Columns[Ind].Visible := TotaldePresupuesto1.Checked;
  }
end;

procedure TFormBuscadorPresupuestos.FormDestroy(Sender: TObject);
begin
  FormBuscadorPresupuestos:=nil;
end;

procedure TFormBuscadorPresupuestos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((key=VK_LEFT) or (key=VK_RIGHT)) and (Shift=[ssAlt]) then
    begin
      if (key=VK_LEFT) Then
        begin
          if rgBuscarPor.ItemIndex<rgBuscarPor.Items.Count-1 then
            rgBuscarPor.ItemIndex:=rgBuscarPor.ItemIndex+1
          else
            rgBuscarPor.ItemIndex:=0;
        end
      else
        if (key=VK_RighT) Then
          begin
            if rgBuscarPor.ItemIndex>0 then
              rgBuscarPor.ItemIndex:=rgBuscarPor.ItemIndex-1
            else
              rgBuscarPor.ItemIndex:=rgBuscarPor.Items.Count-1;
          end;
    end;
  edDato.SetFocus;
end;

procedure TFormBuscadorPresupuestos.FormShow(Sender: TObject);
begin
{
 if FormBuscadorPresupuestos<>nil then
    if FormBuscadorPresupuestos.Width<>1118 then
      FormBuscadorPresupuestos.Width:=1118;
 }

  Buscar.Execute;
  FormBuscadorPresupuestos.Height:=FormBuscadorPresupuestos.Height+15;
  FormBuscadorPresupuestos.Height:=FormBuscadorPresupuestos.Height-15;
   rgBuscarPor.Font.Color:=clWhite;

  edDato.SetFocus;

  if FormBuscadorPresupuestos.Width<1118 then
    FormBuscadorPresupuestos.Width:=1118;
end;

procedure TFormBuscadorPresupuestos.SpeedButton1Click(Sender: TObject);
begin
//  CDSBuscador.Close;
//  CDSBuscador.ParamByName('dato').Value :=Trim(edDato.Text);
//  CDSBuscador.Open;
//  edDato.SetFocus;
end;

{procedure TFormBuscadorPresupuestos.TotaldePresupuesto1Click(Sender: TObject);
var i,Ind:integer;
begin
  TotaldePresupuesto1.Checked     := Not(TotaldePresupuesto1.Checked);
  TotalporDetalledeItems1.Checked := Not(TotaldePresupuesto1.Checked);
  for i:= 0 to dbgResultado.Columns.Count-1 do
    begin
      if dbgResultado.Columns[I].FieldName='TOTAL' Then
        Ind:=i;
    end;
  dbgResultado.Columns[Ind].Visible := TotalporDetalledeItems1.Checked;
  dbgResultado.Columns[Ind].Visible := TotaldePresupuesto1.Checked;
end;
}
{
procedure TFormBuscadorPresupuestos.TotalporDetalledeItems1Click(Sender: TObject);
var i,Ind:integer;
begin
  TotalporDetalledeItems1.Checked := Not(TotalporDetalledeItems1.Checked);
  TotaldePresupuesto1.Checked     := Not(TotalporDetalledeItems1.Checked);
  for i:= 0 to dbgResultado.Columns.Count-1 do
    begin
      if dbgResultado.Columns[I].FieldName='MUESTRATOTALITEMS' Then
        Ind:=i;
    end;
  dbgResultado.Columns[Ind].Visible := TotalporDetalledeItems1.Checked;
  dbgResultado.Columns[Ind].Visible := TotaldePresupuesto1.Checked;
end;
}
end.
