unit DMConversorVta_Comp;

interface

uses
  System.SysUtils, System.Classes, Data.DB, RemoteDB.Client.Dataset,
  RemoteDB.Client.Database, Datasnap.Provider, Datasnap.DBClient,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDatosConversorVta_Comp = class(TDataModule)
    RemoteDB: TRemoteDBDatabase;
    QFacCab: TXDataset;
    QFacDet: TXDataset;
    QFacImp: TXDataset;
    QMaxMin: TXDataset;
    DSPFacImp: TDataSetProvider;
    DSPFacDet: TDataSetProvider;
    DSPFacCab: TDataSetProvider;
    CDSFcVtaCabXML: TClientDataSet;
    CDSFcVtaDetXML: TClientDataSet;
    CDSFcVtaImpXML: TClientDataSet;
    QProveedor: TFDQuery;
    QProveedorCODIGO: TStringField;
    QProveedorNOMBRE: TStringField;
    QProveedorRAZON_SOCIAL: TStringField;
    mtHost: TFDMemTable;
    mtHostALIAS: TStringField;
    mtHostHOST: TStringField;
    mtHostPUERTO: TStringField;
    mtHostID: TIntegerField;
    QMaxMinMIN: TIntegerField;
    QMaxMinMAX: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DatosConversorVta_Comp: TDatosConversorVta_Comp;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
