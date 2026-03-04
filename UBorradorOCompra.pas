unit UBorradorOCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Datasnap.Provider, Datasnap.DBClient, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons, System.Actions, Vcl.ActnList, AdvSearchList, AdvSearchEdit,
  DBAdvSearchEdit,IniFiles;

type

  TFormBorradorOC = class(TForm)
    dbgArticulosRc: TDBGrid;
    QBorradorOC: TFDQuery;
    CDSBorradorOC: TClientDataSet;
    DSBorradoOC: TDataSource;
    DSPBorradorOC: TDataSetProvider;
    CDSBorradorOCID: TIntegerField;
    CDSBorradorOCNRO_ORDENCOMPRA: TStringField;
    CDSBorradorOCFECHA_RECEPCION: TSQLTimeStampField;
    CDSBorradorOCID_OC: TIntegerField;
    CDSBorradorOCCODIGO: TStringField;
    CDSBorradorOCCANTIDAD: TFloatField;
    CDSBorradorOCESTADO: TStringField;
    pnCabecera: TPanel;
    pnPie: TPanel;
    CDSBorradorOCDETALLE_STK: TStringField;
    dbgArticulosInx: TDBGrid;
    Splitter1: TSplitter;
    CDSBorradorInexistente: TClientDataSet;
    DSBorradoInexsitente: TDataSource;
    CDSBorradorOCCODIGOBARRA: TStringField;
    CDSBorradorOCEN_OCOMPRA: TStringField;
    btEnviarDatos: TBitBtn;
    ActionList1: TActionList;
    BuscarArticulo: TAction;
    QStock: TFDQuery;
    CDSStock: TClientDataSet;
    DSPStock: TDataSetProvider;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    Label1: TLabel;
    sBuscar: TDBAdvSearchEdit;
    QSubRub: TFDQuery;
    DSPSubRub: TDataSetProvider;
    CDSSubRub: TClientDataSet;
    CDSSubRubCODIGO_SUBRUBRO: TStringField;
    CDSSubRubDETALLE_SUBRUBRO: TStringField;
    CDSSubRubCODIGO_RUBRO: TStringField;
    CDSSubRubMUESTRARUBRO: TStringField;
    DSSubRub: TDataSource;
    AltaStock: TAction;
    spAltaStock: TFDStoredProc;
    CDSBorradorInexistenteID: TIntegerField;
    CDSBorradorInexistenteNRO_ORDENCOMPRA: TStringField;
    CDSBorradorInexistenteFECHA_RECEPCION: TSQLTimeStampField;
    CDSBorradorInexistenteID_OC: TIntegerField;
    CDSBorradorInexistenteCODIGO: TStringField;
    CDSBorradorInexistenteCANTIDAD: TFloatField;
    CDSBorradorInexistenteESTADO: TStringField;
    CDSBorradorInexistenteCODIGOBARRA: TStringField;
    CDSBorradorInexistenteDETALLE_STK: TStringField;
    CDSBorradorInexistenteEN_OCOMPRA: TStringField;
    QBorradodOCInexistentes: TFDQuery;
    DSPBorradorInexistentes: TDataSetProvider;
    btOk: TBitBtn;
    QBorradodOCInexistentesID: TIntegerField;
    QBorradodOCInexistentesNRO_ORDENCOMPRA: TStringField;
    QBorradodOCInexistentesFECHA_RECEPCION: TSQLTimeStampField;
    QBorradodOCInexistentesID_OC: TIntegerField;
    QBorradodOCInexistentesCODIGO: TStringField;
    QBorradodOCInexistentesCANTIDAD: TFloatField;
    QBorradodOCInexistentesESTADO: TStringField;
    QBorradodOCInexistentesCODIGOBARRA: TStringField;
    QBorradodOCInexistentesDETALLE_STK: TStringField;
    QBorradodOCInexistentesEN_OCOMPRA: TStringField;
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgArticulosRcColEnter(Sender: TObject);
    procedure dbgArticulosRcEnter(Sender: TObject);
    procedure dbgArticulosRcDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btEnviarDatosClick(Sender: TObject);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure CDSBorradorOCCODIGOSetText(Sender: TField; const Text: string);
    procedure AltaStockExecute(Sender: TObject);
    procedure dbgArticulosInxColEnter(Sender: TObject);
    procedure dbgArticulosInxEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btOkClick(Sender: TObject);
    procedure dbgArticulosRcDblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    FID_OC:Integer;
  public
    ArchivoIni:TInifile;
  published
    property ID_oc:integer read fid_oc write fid_oc;
    { Public declarations }
  end;

var
  FormBorradorOC: TFormBorradorOC;

implementation

{$R *.dfm}
uses UDMain_FD, UOrdenCompra, UBuscadorArticulos, UStock_2;


procedure TFormBorradorOC.AltaStockExecute(Sender: TObject);
var Codigo:string;
begin
  if CDSBorradorInexistente.State<>dsBrowse then
    CDSBorradorInexistente.Post;
  if (Trim(CDSBorradorInexistenteCODIGO.Value)='*') and (Trim(CDSBorradorInexistenteDETALLE_STK.AsString)<>'') then
    BEGIN
      DMMain_FD.fdcGestion.StartTransaction;
        TRY
          Codigo:='*';
          spAltaStock.Close;
          spAltaStock.ParamByName('DETALLE').AsString           := UpperCase(Trim(CDSBorradorInexistenteDETALLE_STK.AsString));
          spAltaStock.ParamByName('DETALLE_ADICIONAL').AsString := UpperCase(Trim(CDSBorradorInexistenteDETALLE_STK.AsString));
          spAltaStock.ParamByName('COSTO').AsFloat              := 0;
          spAltaStock.ParamByName('PRECIOVTA').AsFloat          := 0;
          spAltaStock.ParamByName('CANTIDAD').AsFloat           := CDSBorradorInexistenteCANTIDAD.AsFloat;
          if sBuscar.Text<>'' then
            spAltaStock.ParamByName('SUBRUB').AsString          := CDSSubRubCODIGO_SUBRUBRO.Value
          else
            spAltaStock.ParamByName('SUBRUB').AsString          := '*****';


           //   if sBuscar.ListSource.DataSet.FieldByName('CODIGO_SUBRUBRO').AsString<>'' then
           //     spAltaStock.ParamByName('SUBRUB').AsString            := sBuscar.ListSource.DataSet.FieldByName('CODIGO_SUBRUBRO').AsString;

          spAltaStock.ExecProc;

          DMMain_FD.fdcGestion.Commit;
          Codigo:=spAltaStock.ParamByName('codigo_out').AsString;
          spAltaStock.Close;
        except
          Codigo:='*';
          DMMain_FD.fdcGestion.Rollback;
        END;
      CDSBorradorInexistente.Edit;
      CDSBorradorInexistenteCODIGO.Value:=Codigo;
      CDSBorradorInexistente.Post;
      CDSBorradorInexistente.ApplyUpdates(-1);

    //  CDSBorradorOC.Close;
    //  CDSBorradorOC.Params.ParamByName('id_oc').value          := FID_OC;
    //  CDSBorradorOC.Open;

    //  CDSBorradorInexistente.Close;
    //  CDSBorradorInexistente.Params.ParamByName('id_oc').value := FID_OC;
    //  CDSBorradorInexistente.Open;
    END;
end;

procedure TFormBorradorOC.btOkClick(Sender: TObject);
begin
   ModalResult:=mrOk;
 /////  Close;
end;

procedure TFormBorradorOC.btEnviarDatosClick(Sender: TObject);
begin
  if (FormOrdenCompra.DSBase.State=dsBrowse) and (Not(FormOrdenCompra.DSBase.DataSet.IsEmpty))   then
    FormOrdenCompra.Modificar.Execute;
  FormOrdenCompra.Modo:='X';
  CDSBorradorOC.First;
  while not(CDSBorradorOC.Eof) do
    begin
      FormOrdenCompra.RecepcionarOCompra(CDSBorradorOCCODIGO.AsString,CDSBorradorOCCANTIDAD.AsFloat);
      CDSBorradorOC.Next;
    end;
  CDSBorradorInexistente.First;
  while not(CDSBorradorInexistente.Eof) do
    begin
      if Trim(CDSBorradorInexistenteCODIGO.AsString)<>'*' then
        FormOrdenCompra.RecepcionarOCompra(CDSBorradorInexistenteCODIGO.AsString,CDSBorradorInexistenteCANTIDAD.AsFloat);
      CDSBorradorInexistente.Next;
    end;

  FormOrdenCompra.Modo:='R';
end;

procedure TFormBorradorOC.BuscarArticuloExecute(Sender: TObject);
begin
//  if (DSBase.State in [dsInsert,dsEdit]) then
    begin
      IF (Assigned(FormBuscadorArticulos)) THEN
        FreeAndNil(FormBuscadorArticulos);

      IF Not(Assigned(FormBuscadorArticulos)) THEN
        FormBuscadorArticulos      := TFormBuscadorArticulos.Create(self);
      FormBuscadorArticulos.Param1 := 1;
      FormBuscadorArticulos.Param2 := 3;
      FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
      FormBuscadorArticulos.Esquema     :=-1;

      if FormBuscadorArticulos.Visible=False Then
        FormBuscadorArticulos.ShowModal;
      if FormBuscadorArticulos.Codigo<>'' Then
        CDSBorradorOCCODIGOSetText(CDSBorradorOCCODIGO,FormBuscadorArticulos.Codigo);
    end;
end;

procedure TFormBorradorOC.CDSBorradorOCCODIGOSetText(Sender: TField;
  const Text: string);
var Aux:string;
begin
  if (Text<>'') and (Text<>#13) then
    begin
      Sender.AsString:=Text;
      CDSStock.Close;
      CDSStock.Params.ParamByName('codigo').AsString:=Sender.AsString;
      CDSStock.Open;
      if Not(CDSStock.IsEmpty) then
        begin
          CDSBorradorOC.Edit;
          CDSBorradorOCCODIGO.Value      := CDSStockCODIGO_STK.Value;
          CDSBorradorOCDETALLE_STK.Value := CDSStockDETALLE_STK.Value;
          CDSBorradorOC.Post;
        end;
      CDSStock.Close;
    end;
end;

procedure TFormBorradorOC.dbgArticulosRcColEnter(Sender: TObject);
begin
  if dbgArticulosRc.SelectedIndex>1 then
    dbgArticulosRc.SelectedIndex:=1;
end;

procedure TFormBorradorOC.dbgArticulosRcDblClick(Sender: TObject);
begin
  if Not(Assigned(FormStock_2)) then
    FormStock_2:=TFormStock_2.Create(Application);
  FormStock_2.DatoNew:=CDSBorradorOCCODIGO.AsString;
  formStock_2.Recuperar.execute;
  FormStock_2.Show;
end;

procedure TFormBorradorOC.dbgArticulosRcDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if Trim(CDSBorradorOCEN_OCOMPRA.AsString)='' then
    dbgArticulosRc.Canvas.Font.Color:=clRed
  else
    dbgArticulosRc.Canvas.Font.Color:=clGreen;

  dbgArticulosRc.DefaultDrawColumnCell(rect,DataCol,Column,state);

end;

procedure TFormBorradorOC.dbgArticulosRcEnter(Sender: TObject);
begin
 if dbgArticulosRc.SelectedIndex<2 then
    dbgArticulosRc.SelectedIndex:=2;
end;

procedure TFormBorradorOC.dbgArticulosInxColEnter(Sender: TObject);
begin
  if dbgArticulosInx.SelectedIndex>1 then
    dbgArticulosInx.SelectedIndex:=1;
end;

procedure TFormBorradorOC.dbgArticulosInxEnter(Sender: TObject);
begin
  if dbgArticulosInx.SelectedIndex>1 then
    dbgArticulosInx.SelectedIndex:=1;
end;

procedure TFormBorradorOC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'BorradoOCompra.ini');
  ArchivoIni.WriteString('SubRubro', 'Codigo', CDSSubRubCODIGO_SUBRUBRO.AsString);
  ArchivoIni.Free;
end;

procedure TFormBorradorOC.FormCreate(Sender: TObject);
var Aux:string;
begin
  AutoSize:=False;
 
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'BorradoOCompra.ini');
  Aux        := ArchivoIni.ReadString('SubRubro', 'Codigo', '');
  ArchivoIni.Free;

  CDSSubRub.Close;
  CDSSubRub.Open;
  if Aux<>'' then
    CDSSubRub.Locate('CODIGO_SUBRUBRO',Aux,[]);
  sBuscar.ListSource:=DSSubRub;
end;

procedure TFormBorradorOC.FormResize(Sender: TObject);
begin
  if FormBorradorOC<>nil then
    if formBorradorOC.Width<>910 then
      formBorradorOC.Width:=910;

end;

procedure TFormBorradorOC.FormShow(Sender: TObject);
begin
  CDSBorradorOC.Close;
  CDSBorradorOC.Params.ParamByName('id_oc').value := FID_OC;
  CDSBorradorOC.Open;

  CDSBorradorInexistente.Close;
  CDSBorradorInexistente.Params.ParamByName('id_oc').value := FID_OC;
  CDSBorradorInexistente.Open;

end;

procedure TFormBorradorOC.SpeedButton1Click(Sender: TObject);
begin
  CDSBorradorOC.Close;
  CDSBorradorOC.Params.ParamByName('id_oc').value          := FID_OC;
  CDSBorradorOC.Open;

  CDSBorradorInexistente.Close;
  CDSBorradorInexistente.Params.ParamByName('id_oc').value := FID_OC;
  CDSBorradorInexistente.Open;
end;

end.
