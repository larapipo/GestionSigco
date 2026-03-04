unit UPlanillaSalucla;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  JvToolEdit, Vcl.DBGrids, IBGenerator, UABMBase, Data.FMTBcd,Vcl.Forms,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Datasnap.Provider,
  Datasnap.DBClient, Vcl.Grids, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask, JvExMask, JvDBControls, Vcl.ComCtrls, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, JvAppStorage, JvAppIniStorage,
  Data.SqlExpr, JvComponentBase, JvFormPlacement, System.ImageList, Vcl.ImgList,
  Vcl.Controls, System.Actions, Vcl.ActnList, JvLabel, JvExControls, JvGradient,
  Vcl.Buttons, Vcl.ToolWin;

type
  TFormPlanillaCarnes = class(TFormABMBase)
    pnPie: TPanel;
    pnCabecera: TPanel;
    QPlanillaCab: TFDQuery;
    QPlanillaDet: TFDQuery;
    QPlantilla: TFDQuery;
    CDSPlanillaCab: TClientDataSet;
    DSPPlanillaCab: TDataSetProvider;
    QPlanillaCabID: TIntegerField;
    QPlanillaCabFECHA: TDateField;
    QPlanillaCabPESO_MEDIA: TFloatField;
    QPlanillaCabPRECIO_VALOR_VIVO: TFloatField;
    QPlanillaCabMATARIFE: TStringField;
    QPlanillaCabPRECIO_KG_RECUPERO: TFloatField;
    QPlanillaCabPRECIO_DESPUES_MERMA: TFloatField;
    QPlanillaCabMERMA: TFloatField;
    QPlanillaCabPRECIO_KG_058: TFloatField;
    CDSPlanillaCabID: TIntegerField;
    CDSPlanillaCabFECHA: TDateField;
    CDSPlanillaCabPESO_MEDIA: TFloatField;
    CDSPlanillaCabPRECIO_VALOR_VIVO: TFloatField;
    CDSPlanillaCabMATARIFE: TStringField;
    CDSPlanillaCabPRECIO_KG_RECUPERO: TFloatField;
    CDSPlanillaCabPRECIO_DESPUES_MERMA: TFloatField;
    CDSPlanillaCabMERMA: TFloatField;
    CDSPlanillaCabPRECIO_KG_058: TFloatField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DSPPlanillaDet: TDataSetProvider;
    CDSPlanillaDet: TClientDataSet;
    DSPlanillaDet: TDataSource;
    QPlanillaDetID: TIntegerField;
    QPlanillaDetID_CAB: TIntegerField;
    QPlanillaDetCODIGO: TStringField;
    QPlanillaDetRENDIMIENTO: TFloatField;
    QPlanillaDetPRECIO_CORTE: TFloatField;
    QPlanillaDetVALOR_KG_UNITARIO_CORTE: TFloatField;
    QPlanillaDetREPRESENTA_PROCENTAJE: TFloatField;
    QPlanillaDetPRECIO_VTA: TFloatField;
    QPlanillaDetMARGEN: TFloatField;
    QPlanillaDetDETALLE_STK: TStringField;
    CDSPlanillaDetID: TIntegerField;
    CDSPlanillaDetID_CAB: TIntegerField;
    CDSPlanillaDetCODIGO: TStringField;
    CDSPlanillaDetRENDIMIENTO: TFloatField;
    CDSPlanillaDetPRECIO_CORTE: TFloatField;
    CDSPlanillaDetVALOR_KG_UNITARIO_CORTE: TFloatField;
    CDSPlanillaDetREPRESENTA_PROCENTAJE: TFloatField;
    CDSPlanillaDetPRECIO_VTA: TFloatField;
    CDSPlanillaDetMARGEN: TFloatField;
    CDSPlanillaDetDETALLE_STK: TStringField;
    ibgCab: TIBGenerator;
    ibgDet: TIBGenerator;
    QPlantillaCODIGO: TStringField;
    QPlantillaRENIDIMIENTO: TFloatField;
    PageControl1: TPageControl;
    pag1: TTabSheet;
    pag2: TTabSheet;
    Panel2: TPanel;
    Panel3: TPanel;
    QPlantillaDETALLE_STK: TStringField;
    CDSPlantilla: TClientDataSet;
    DSPPlantilla: TDataSetProvider;
    DSPlantilla: TDataSource;
    CDSPlantillaCODIGO: TStringField;
    CDSPlantillaDETALLE_STK: TStringField;
    CDSPlantillaRENIDIMIENTO: TFloatField;
    dbgPlantilla: TDBGrid;
    BuscadorArticulo: TAction;
    QStock: TFDQuery;
    DSPStock: TDataSetProvider;
    CDSStock: TClientDataSet;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    CDSStockPRESENTACION_CANTIDAD: TFloatField;
    CDSStockMUESTRARUBRO: TStringField;
    CDSStockMUESTRASUBRUBRO: TStringField;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BuscadorArticuloExecute(Sender: TObject);
    procedure CDSPlantillaCODIGOSetText(Sender: TField; const Text: string);
    procedure CDSPlantillaNewRecord(DataSet: TDataSet);
    procedure CDSPlantillaAfterPost(DataSet: TDataSet);
    procedure CDSPlantillaAfterDelete(DataSet: TDataSet);
    procedure dbgPlantillaColEnter(Sender: TObject);
    procedure dbgPlantillaEnter(Sender: TObject);
    procedure CDSPlanillaCabNewRecord(DataSet: TDataSet);
    procedure CDSPlanillaDetNewRecord(DataSet: TDataSet);
    procedure AgregarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPlanillaCarnes: TFormPlanillaCarnes;

implementation

uses UDMain_FD, UBuscadorArticulos;
{$R *.dfm}

procedure TFormPlanillaCarnes.AgregarExecute(Sender: TObject);
begin
  inherited;
  CDSPlantilla.First;
  while not(CDSPlantilla.Eof) do
    begin
      CDSPlanillaDet.Append;
      CDSPlanillaDetCODIGO.Value      := CDSPlantillaCODIGO.Value;
      CDSPlanillaDetDETALLE_STK.Value := CDSPlantillaDETALLE_STK.Value;
      CDSPlanillaDetRENDIMIENTO.Value := CDSPlantillaRENIDIMIENTO.Value;
      CDSPlanillaDet.Post;
      CDSPlantilla.Next;
    end;
end;

procedure TFormPlanillaCarnes.BuscadorArticuloExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscadorArticulos)) then
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
  FormBuscadorArticulos.Param1:=1;
  FormBuscadorArticulos.Param2:=3;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
  FormBuscadorArticulos.Esquema     :=-1;

  FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' then
    CDSPlantillaCODIGOSetText(CDSPlantillaCODIGO,FormBuscadorArticulos.Codigo);

end;

procedure TFormPlanillaCarnes.CDSPlanillaCabNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSPlanillaCabID.Value                   := ibgCab.IncrementFD(1);
  CDSPlanillaCabFECHA.AsDateTime           := Date;
  CDSPlanillaCabPESO_MEDIA.Value           := 0;
  CDSPlanillaCabPRECIO_VALOR_VIVO.Value    := 0;
  CDSPlanillaCabMATARIFE.Value             := '';
  CDSPlanillaCabPRECIO_KG_RECUPERO.Value   := 0;
  CDSPlanillaCabPRECIO_DESPUES_MERMA.Value := 0;
  CDSPlanillaCabMERMA.Value                := 0;
  CDSPlanillaCabPRECIO_KG_058.Value        := 0;
end;

procedure TFormPlanillaCarnes.CDSPlanillaDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSPlanillaDetID_CAB.Value       := CDSPlanillaCabID.Value;
  CDSPlanillaDetID.Value           := ibgDet.IncrementFD(1);
  CDSPlanillaDetPRECIO_CORTE.Value := 0;
  CDSPlanillaDetVALOR_KG_UNITARIO_CORTE.Value:= 0;
  CDSPlanillaDetREPRESENTA_PROCENTAJE.Value  := 0;
  CDSPlanillaDetPRECIO_VTA.Value   := 0;
  CDSPlanillaDetMARGEN.Value       := 0;
  CDSPlanillaDetDETALLE_STK.Value  := '';

end;

procedure TFormPlanillaCarnes.CDSPlantillaAfterDelete(DataSet: TDataSet);
begin
  inherited;
  CDSPlantilla.ApplyUpdates(0);
end;

procedure TFormPlanillaCarnes.CDSPlantillaAfterPost(DataSet: TDataSet);
begin
  inherited;
  CDSPlantilla.ApplyUpdates(0);
end;

procedure TFormPlanillaCarnes.CDSPlantillaCODIGOSetText(Sender: TField;
  const Text: string);
var Cod:String;
    CDSClone:TClientDataSet;
begin
  inherited;
  if Text<>#13 then
    begin
      if CDSPlantilla.State=dsBrowse then
        CDSPlantilla.Edit;

      Sender.AsString:=Copy('00000000',1,8-Length(Text))+Text;
      CDSClone:=TClientDataSet.Create(self);
      CDSClone.CloneCursor(CDSPlantilla,True);
      cod:=VarToStr(CDSClone.Lookup('codigo',Sender.AsString,'codigo'));
      if Cod='' then
        begin
          if CDSPlantilla.State=dsBrowse then CDSPlantilla.Append;
          CDSStock.Close;
          CDSStock.Params.ParamByName('codigo').ASString:=Sender.AsString;
          CDSStock.Open;
          if Not(CDSStock.IsEmpty) then
            begin
              if CDSPlantilla.State=dsBrowse then CDSPlantilla.Edit;
              CDSPlantillaCODIGO.AsString               := CDSStockCODIGO_STK.AsString;
              CDSPlantillaDETALLE_STK.AsString          := CDSStockDETALLE_STK.AsString;
            end;
        end
      else
        begin
          Sender.Clear;
          CDSPlantilla.Cancel;
        end;
      CDSClone.Free;
    end;
end;

procedure TFormPlanillaCarnes.CDSPlantillaNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSPlantillaRENIDIMIENTO.Value := 0;
end;

procedure TFormPlanillaCarnes.dbgPlantillaColEnter(Sender: TObject);
begin
  inherited;
  if dbgPlantilla.SelectedIndex=1 then
    dbgPlantilla.SelectedIndex:=2
end;

procedure TFormPlanillaCarnes.dbgPlantillaEnter(Sender: TObject);
begin
  inherited;
  if dbgPlantilla.SelectedIndex=1 then
    dbgPlantilla.SelectedIndex:=0
end;

procedure TFormPlanillaCarnes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSPlanillaCab.Close;
  CDSPlanillaDet.Close;
  CDSPlantilla.Close;
  Action:=caFree;
end;

procedure TFormPlanillaCarnes.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  AddClientDataSet(CDSPlanillaCab,DSPPlanillaCab);
  AddClientDataSet(CDSPlanillaDet,DSPPlanillaDet);

  CDSPlanillaCab.Close;
  CDSPlanillaDet.Close;
  CDSPlanillaCab.Open;
  CDSPlanillaDet.Open;
  CDSPlantilla.Close;
  CDSPlantilla.Open;

  Tabla:='TABLA_RINDE_CABECERA';
  Campo:='id';
  pnPrincipal.Enabled:=True;
end;

procedure TFormPlanillaCarnes.FormDestroy(Sender: TObject);
begin
  inherited;
  FormPlanillaCarnes :=nil;
end;

end.
