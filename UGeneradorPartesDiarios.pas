unit UGeneradorPartesDiarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, VCL.TMSFNCTypes,
  VCL.TMSFNCUtils, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes,DateUtils,
  VCL.TMSFNCGridCell, VCL.TMSFNCGridOptions, VCL.TMSFNCCustomControl,
  VCL.TMSFNCCustomScrollControl, VCL.TMSFNCGridData, VCL.TMSFNCCustomGrid,
  VCL.TMSFNCGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.Async,
  FireDAC.DApt, AdvUtil, Vcl.Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid,
  Vcl.ComCtrls, Vcl.StdCtrls, AdvGlowButton, Datasnap.DBClient,
  Datasnap.Provider, Vcl.DBGrids;

type
  TFormGeneradorParteDiarios = class(TForm)
    pnBase: TPanel;
    pnPie: TPanel;
    QDiario: TFDQuery;
    QDiarioID: TIntegerField;
    QDiarioID_SUBDET_PROD: TIntegerField;
    QDiarioFECHA: TSQLTimeStampField;
    QDiarioNROCPBTE: TStringField;
    QDiarioTURNO: TIntegerField;
    QDiarioTIPO_MATERIAL: TIntegerField;
    QDiarioESTACION: TIntegerField;
    QDiarioCANTIDAD: TFloatField;
    QDiarioNRO_LOTE: TStringField;
    QDiarioOBSERVACIONES: TStringField;
    QDiarioNRORTO: TStringField;
    QDiarioID_AJUSTE_STOCK: TIntegerField;
    QDiarioMODO_TRAZABILIDAD: TStringField;
    QDiarioMUESTRACODIGO: TStringField;
    QDiarioMUESTRADETALLE: TStringField;
    QDiarioMUESTRACANTIDAD: TFloatField;
    QDiarioMUESTRASALDO: TFloatField;
    QDiarioMUESTRAID_AJUSTE: TIntegerField;
    QDiarioMUESTRANROAJUSTE: TStringField;
    QDiarioMUESTRAID_PRO_CAB: TIntegerField;
    DSDetallesProduccion: TDataSource;
    QMovimientos: TFDQuery;
    edFecha: TDateTimePicker;
    Label2: TLabel;
    btOk: TAdvGlowButton;
    btCerrar: TAdvGlowButton;
    DSPMovimientos: TDataSetProvider;
    CDSMovimientos: TClientDataSet;
    CDSMovimientosCODIGO: TStringField;
    CDSMovimientosDETALLE: TStringField;
    CDSMovimientosCANTIDAD: TFloatField;
    CDSMovimientosID_SUB: TIntegerField;
    CDSMovimientosSALDO_SUB: TFloatField;
    CDSMovimientosPRODUCIDO: TFloatField;
    CDSMovimientosCODIGOBARRA: TStringField;
    DBGrid1: TDBGrid;
    CDSMovimientosID: TIntegerField;
    CDSMovimientosID_OPCAB: TIntegerField;
    spIngresarParteDiario: TFDStoredProc;
    AdvGlowButton1: TAdvGlowButton;
    OpenDialog1: TOpenDialog;
    procedure FormShow(Sender: TObject);
    procedure btCerrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CDSMovimientosPRODUCIDOSetText(Sender: TField;
      const Text: string);
    procedure CDSMovimientosCODIGOBARRASetText(Sender: TField;
      const Text: string);
    procedure btOkClick(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
  private
    { Private declarations }
    Fid_Op:Integer;
    FId_Det_OP:Integer;
  public
    { Public declarations }
  published
    property Id_op:Integer read Fid_Op write Fid_Op;
    property Id_Det_op:Integer read FId_Det_OP write FId_Det_OP;
  end;

var
  FormGeneradorParteDiarios: TFormGeneradorParteDiarios;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormGeneradorParteDiarios.AdvGlowButton1Click(Sender: TObject);
var lista:TStringList;
Rec:Integer;
Codigo,Lote,Cantidad:String;
begin
  if OpenDialog1.Execute then
    if opendialog1.FileName<>'' then
      begin
        lista:=TStringList.Create;
        lista.LoadFromFile(OpenDialog1.FileName);

        for rec:= 0 to lista.Count-1 do
          begin
            codigo   :=Copy(lista[rec],1,8);
            lote     :=Copy(Lista[rec],9,12);
            Cantidad :=Copy(Lista[rec],21,8);
            if CDSMovimientos.Locate('CODIGO',Codigo,[] ) Then
              begin
                CDSMovimientos.Edit;
                CDSMovimientosCODIGOBARRA.Value:=Lote;
                CDSMovimientosPRODUCIDOSetText(CDSMovimientosPRODUCIDO,Cantidad);
                CDSMovimientos.Post;
              end;
          end;
      end;

   FreeAndNil(lista);
end;

procedure TFormGeneradorParteDiarios.btCerrarClick(Sender: TObject);
begin
  Close;
end;


procedure TFormGeneradorParteDiarios.btOkClick(Sender: TObject);
begin
  CDSMovimientos.First;
  while Not(CDSMovimientos.Eof) do
    begin
      if CDSMovimientosPRODUCIDO.Value>0 then
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          try
            spIngresarParteDiario.Close;
            spIngresarParteDiario.Params.ParamByName('id_op').AsInteger         := CDSMovimientosID_OPCAB.AsInteger;
            spIngresarParteDiario.Params.ParamByName('id_op_detalle').AsInteger := CDSMovimientosID.AsInteger;
            spIngresarParteDiario.Params.ParamByName('cantidad').AsFloat        := CDSMovimientosPRODUCIDO.AsFloat;
            spIngresarParteDiario.Params.ParamByName('lote').AsString           := CDSMovimientosCODIGOBARRA.AsString;
            spIngresarParteDiario.Params.ParamByName('fecha').AsDate            := edFecha.Date;
            spIngresarParteDiario.ExecProc;
            DMMain_FD.fdcGestion.Commit;
          except
            DMMain_FD.fdcGestion.Rollback;
          end;
          spIngresarParteDiario.Close;
        end;
      CDSMovimientos.Next;
    end;
end;

procedure TFormGeneradorParteDiarios.CDSMovimientosCODIGOBARRASetText(
  Sender: TField; const Text: string);
begin
  Sender.AsString:=Text;
end;

procedure TFormGeneradorParteDiarios.CDSMovimientosPRODUCIDOSetText(
  Sender: TField; const Text: string);
var aux:String;
begin
  if CDSMovimientos.State=dsBrowse then
    CDSMovimientos.Edit;
  Sender.AsString:=Text;
  //if Sender.AsFloat>CDSMovimientosCANTIDAD.AsFloat then
  //  Sender.AsString:=CDSMovimientosSALDO_SUB.AsString;


  Aux:= FormatDateTime('YYMMDD', edFecha.Date)+
        FormatDateTime('YYMMDD', IncDay(edFecha.Date,DMMain_FD.GetDiasVto(CDSMovimientosCODIGO.AsString)));
  CDSMovimientosCODIGOBARRASetText(CDSMovimientosCODIGOBARRA,Aux);

  CDSMovimientosSALDO_SUB.Value:=CDSMovimientosCANTIDAD.Value-Sender.AsFloat;

end;

procedure TFormGeneradorParteDiarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
end;

procedure TFormGeneradorParteDiarios.FormDestroy(Sender: TObject);
begin
  FormGeneradorParteDiarios:=nil;
end;

procedure TFormGeneradorParteDiarios.FormShow(Sender: TObject);
begin
  CDSMovimientos.Close;
  CDSMovimientos.ParamByName('id').Value:=Fid_Op;
  CDSMovimientos.Open;

//  DBAdvGrid1.Columns[1].Alignment:=taCenter;
//  DBAdvGrid1.Columns[2].Alignment:=taLeftJustify;
//  DBAdvGrid1.Columns[3].Alignment:=taRightJustify;
//  DBAdvGrid1.Columns[4].Alignment:=taRightJustify;
//  DBAdvGrid1.Columns[5].Alignment:=taRightJustify;
//
//  DBAdvGrid1.Columns[1].HeaderAlignment:=taCenter;
//  DBAdvGrid1.Columns[2].HeaderAlignment:=taCenter;
//  DBAdvGrid1.Columns[3].HeaderAlignment:=taCenter;
//  DBAdvGrid1.Columns[4].HeaderAlignment:=taCenter;
//  DBAdvGrid1.Columns[5].HeaderAlignment:=taCenter;
//  DBAdvGrid1.Columns[5].HeaderAlignment:=taCenter;

  edFecha.Date:=Date;

end;

end.
