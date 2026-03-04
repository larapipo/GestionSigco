unit UImportarProveedores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, StdCtrls, Provider, DB, DBClient, ComCtrls, Grids, DBGrids, Gauges,
  JvComponentBase, ImgList, ActnList, JvExControls, JvGradient, Buttons,
  ToolWin, ExtCtrls, JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr,
  System.Actions, JvAppStorage, JvAppIniStorage, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, System.ImageList;

type
  TFormImportarProveedores = class(TFormABMBase)
    gbMarca: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    lbMarcaNuevos: TLabel;
    lbMarcasModificados: TLabel;
    Label3: TLabel;
    lbMarcasTotales: TLabel;
    BitBtn1: TBitBtn;
    CDSProveedores: TClientDataSet;
    DSPProveedores: TDataSetProvider;
    Importar: TAction;
    OpenDialog: TOpenDialog;
    CDSProveeXML: TClientDataSet;
    DSProveeXML: TDataSource;
    DBGrid1: TDBGrid;
    btImportar: TBitBtn;
    ToolButton1: TToolButton;
    Animate1: TAnimate;
    Progress: TGauge;
    QProveedores: TFDQuery;
    QProveedoresCODIGO: TStringField;
    QProveedoresNOMBRE: TStringField;
    QProveedoresRAZON_SOCIAL: TStringField;
    QProveedoresN_DE_CUENTA: TStringField;
    QProveedoresID_COD_POSTAL: TIntegerField;
    QProveedoresCOD_POSTAL: TStringField;
    QProveedoresLOCALIDAD: TStringField;
    QProveedoresDIRECCION: TStringField;
    QProveedoresTELEFONO_1: TStringField;
    QProveedoresTELEFONO_2: TStringField;
    QProveedoresCONDICION_IVA: TIntegerField;
    QProveedoresN_DE_CUIT: TStringField;
    QProveedoresACTIVO: TStringField;
    QProveedoresRETIENE_IVA: TStringField;
    QProveedoresRETIENE_IB: TStringField;
    QProveedoresRETIENE_GANANCIAS: TStringField;
    QProveedoresIVA_SERVICIOS: TStringField;
    QProveedoresPRECIOS_CON_IVA: TStringField;
    QProveedoresOBSERVACIONES: TMemoField;
    QProveedoresNOMBRE_REPRESENTANTE: TStringField;
    QProveedoresDIRECCION_REPRESENTANTE: TStringField;
    QProveedoresTELEFONO_REPRESENTANTE: TStringField;
    QProveedoresTIPO_PROVEEDOR: TStringField;
    QProveedoresFECHAULTIMACOMPRA: TSQLTimeStampField;
    QProveedoresFECHAALTA: TSQLTimeStampField;
    QProveedoresSALDO_INICIAL: TFloatField;
    QProveedoresID_PERC_IVA: TIntegerField;
    QProveedoresID_PERC_IBB: TIntegerField;
    QProveedoresID_PERC_IBB_2: TIntegerField;
    QProveedoresID_PERC_IBB_3: TIntegerField;
    QProveedoresRUBRO: TIntegerField;
    QProveedoresID_FACTURAPORDEFECTO: TIntegerField;
    QProveedoresID_FACTURACTDODEFECTO: TIntegerField;
    QProveedoresEXENTO_GANACIA: TStringField;
    QProveedoresCODIGO_REGIMEN_RET_GANACIA: TIntegerField;
    QProveedoresEXENTO_RETENCION_IB: TStringField;
    QProveedoresID_TASA_RETENCION_IB: TIntegerField;
    QProveedoresNRO_IIBB: TStringField;
    QProveedoresCORREO: TStringField;
    QProveedoresCONV_MULTI: TStringField;
    QProveedoresMONEDA_PRECIOS: TIntegerField;
    QProveedoresRUBRO_GASTO: TStringField;
    QProveedoresSUB_RUB_GASTOS: TStringField;
    QProveedoresCON_OCOMPRA: TStringField;
    QProveedoresAUTORIZADO_NOMBRE: TStringField;
    QProveedoresAUTORIZADO_TIPODOC: TStringField;
    QProveedoresAUTORIZADO_NRODOC: TStringField;
    QProveedoresRETENCION_IVA: TStringField;
    QProveedoresCODIGO_RET_IVA: TIntegerField;
    QProveedoresPORCENTAJE_RET_IVA: TSingleField;
    CDSProveedoresCODIGO: TStringField;
    CDSProveedoresNOMBRE: TStringField;
    CDSProveedoresRAZON_SOCIAL: TStringField;
    CDSProveedoresN_DE_CUENTA: TStringField;
    CDSProveedoresID_COD_POSTAL: TIntegerField;
    CDSProveedoresCOD_POSTAL: TStringField;
    CDSProveedoresLOCALIDAD: TStringField;
    CDSProveedoresDIRECCION: TStringField;
    CDSProveedoresTELEFONO_1: TStringField;
    CDSProveedoresTELEFONO_2: TStringField;
    CDSProveedoresCONDICION_IVA: TIntegerField;
    CDSProveedoresN_DE_CUIT: TStringField;
    CDSProveedoresACTIVO: TStringField;
    CDSProveedoresRETIENE_IVA: TStringField;
    CDSProveedoresRETIENE_IB: TStringField;
    CDSProveedoresRETIENE_GANANCIAS: TStringField;
    CDSProveedoresIVA_SERVICIOS: TStringField;
    CDSProveedoresPRECIOS_CON_IVA: TStringField;
    CDSProveedoresOBSERVACIONES: TMemoField;
    CDSProveedoresNOMBRE_REPRESENTANTE: TStringField;
    CDSProveedoresDIRECCION_REPRESENTANTE: TStringField;
    CDSProveedoresTELEFONO_REPRESENTANTE: TStringField;
    CDSProveedoresTIPO_PROVEEDOR: TStringField;
    CDSProveedoresFECHAULTIMACOMPRA: TSQLTimeStampField;
    CDSProveedoresFECHAALTA: TSQLTimeStampField;
    CDSProveedoresSALDO_INICIAL: TFloatField;
    CDSProveedoresID_PERC_IVA: TIntegerField;
    CDSProveedoresID_PERC_IBB: TIntegerField;
    CDSProveedoresID_PERC_IBB_2: TIntegerField;
    CDSProveedoresID_PERC_IBB_3: TIntegerField;
    CDSProveedoresRUBRO: TIntegerField;
    CDSProveedoresID_FACTURAPORDEFECTO: TIntegerField;
    CDSProveedoresID_FACTURACTDODEFECTO: TIntegerField;
    CDSProveedoresEXENTO_GANACIA: TStringField;
    CDSProveedoresCODIGO_REGIMEN_RET_GANACIA: TIntegerField;
    CDSProveedoresEXENTO_RETENCION_IB: TStringField;
    CDSProveedoresID_TASA_RETENCION_IB: TIntegerField;
    CDSProveedoresNRO_IIBB: TStringField;
    CDSProveedoresCORREO: TStringField;
    CDSProveedoresCONV_MULTI: TStringField;
    CDSProveedoresMONEDA_PRECIOS: TIntegerField;
    CDSProveedoresRUBRO_GASTO: TStringField;
    CDSProveedoresSUB_RUB_GASTOS: TStringField;
    CDSProveedoresCON_OCOMPRA: TStringField;
    CDSProveedoresAUTORIZADO_NOMBRE: TStringField;
    CDSProveedoresAUTORIZADO_TIPODOC: TStringField;
    CDSProveedoresAUTORIZADO_NRODOC: TStringField;
    CDSProveedoresRETENCION_IVA: TStringField;
    CDSProveedoresCODIGO_RET_IVA: TIntegerField;
    CDSProveedoresPORCENTAJE_RET_IVA: TSingleField;
    procedure ImportarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btImportarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImportarProveedores: TFormImportarProveedores;
  ArchiTxt:TextFile;
  I:Integer;
  s,dato:String;
  Nuevos,Modificados:Integer;

implementation

uses UDMain_FD,  UBuscaDirectorio;

{$R *.DFM}

procedure TFormImportarProveedores.ImportarExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscaDirectorio)) Then
    FormBuscaDirectorio:=TFormBuscaDirectorio.Create(Application);
  FormBuscaDirectorio.ShowModal;
  if FormBuscaDirectorio.ModalResult=mrOk Then
    begin
      CDSProveeXML.LoadFromFile(FormBuscaDirectorio.Directorio+'\Proveedores.xml');
    end
  else
   ShowMessage('Directorio no valido...');
end;

procedure TFormImportarProveedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormImportarProveedores.FormDestroy(Sender: TObject);
begin
  inherited;
  FormImportarProveedores:=nil;
end;

procedure TFormImportarProveedores.btImportarClick(Sender: TObject);
var
Nombre:String;
I:Integer;
begin
  inherited;
  CDSProveedores.Open;
  Animate1.Visible:=True;
  Animate1.Active :=True;
  Nuevos     :=0;
  Modificados:=0;

  CDSProveeXML.First;
  Progress.MaxValue:=CDSProveeXML.RecordCount;
  Progress.Progress:=0;
  sbEstado.SimpleText:='Procesando Archivo de Proveedores...';
  while not(CDSProveeXML.Eof) do
    begin
      //Inserto Los Provee
      Progress.Progress:=Progress.Progress+1;
      For i:=0 to CDSProveeXML.FieldCount-1 do
        begin
          Nombre:=CDSProveeXML.Fields[i].FieldName;
          if Nombre='CODIGO' Then
            begin
              CDSProveedores.Close;
              CDSProveedores.Params.ParamByName('CODIGO').AsString:=CDSProveeXML.Fields[i].AsString;
              CDSProveedores.Open;
              if CDSProveeXML.Fields[0].Value<>'' Then
                begin
                  CDSProveedores.Edit;
                  Inc(Modificados);
                end
              else
                begin
                  CDSProveedores.Insert;
                  Inc(Nuevos);
                end;
            end;
          CDSProveedores.FieldByName(Nombre).Value:=CDSProveeXML.FieldByName(Nombre).Value;
        end;
      CDSProveedores.Post;
      CDSProveedores.ApplyUpdates(0);
      CDSProveeXML.Next;
    end;


  sbEstado.SimpleText:='Fianlizado...';

  Animate1.Visible:=False;
  Animate1.Active :=False;

  lbMarcaNuevos.Caption      :=IntToStr(nuevos);
  lbMarcasModificados.Caption:=IntToStr(Modificados);
  lbMarcasTotales.Caption    :=IntToStr(nuevos+Modificados);


end;

end.
