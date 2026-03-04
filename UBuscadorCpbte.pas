UNIT UBuscadorCpbte;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, ActnList,
  DBCtrls, Mask,
  Provider, DBClient, ImgList, IniFiles,Variants, JvExControls,
  JvGradient, JvExDBGrids, JvDBGrid, JvComponentBase, JvFormPlacement, FMTBcd,
  SqlExpr, JvExMask, JvToolEdit, System.Actions, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  AdvOfficeButtons, System.ImageList;
TYPE
  TFormBuscaCpbte = CLASS(TForm)
    pnBase: TPanel;
    edLetra: TEdit;
    edSufijo: TEdit;
    edNumero: TEdit;
    btTodos: TBitBtn;
    DSBuscaCpbte: TDataSource;
    btCancelar: TBitBtn;
    ActionList1: TActionList;
    Buscar: TAction;
    Label1: TLabel;
    Listar: TAction;
    Cancelar: TAction;
    btAceptar: TBitBtn;
    Aceptar: TAction;
    sbtBuscar: TSpeedButton;
    BuscarCliente: TAction;
    CDSBuscaCpbte: TClientDataSet;
    DSPBuscaCpbte: TDataSetProvider;
    CDSBuscaCpbteNROCPBTE: TStringField;
    CDSBuscaCpbteCODIGO: TStringField;
    CDSBuscaCpbteNOMBRE: TStringField;
    CDSBuscaCpbteID_FC: TIntegerField;
    ImageList1: TImageList;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BuscarCpbte: TAction;
    edMuestraComprobante: TEdit;
    pnCliente: TPanel;
    dbeMuestraCliente: TDBEdit;
    DBText1: TDBText;
    Label5: TLabel;
    Label6: TLabel;
    DBText2: TDBText;
    dbgConsulta: TJvDBGrid;
    ComboCliente: TJvComboEdit;
    ComboCpbte: TJvComboEdit;
    CDSClientes: TClientDataSet;
    DSPClientes: TDataSetProvider;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
    DSPTipoComprob: TDataSetProvider;
    CDSTipoComprob: TClientDataSet;
    CDSTipoComprobTIPO_COMPROB: TStringField;
    CDSTipoComprobCLASE_COMPROB: TStringField;
    CDSTipoComprobLETRA: TStringField;
    CDSTipoComprobPREFIJO: TStringField;
    CDSTipoComprobNUMERO: TStringField;
    CDSTipoComprobDENOMINACION: TStringField;
    CDSTipoComprobMUESTRASUCURSAL: TStringField;
    CDSTipoComprobSUCURSAL: TIntegerField;
    CDSTipoComprobID_COMPROBANTE: TIntegerField;
    DSClientes: TDataSource;
    DSSucursal: TDataSource;
    CDSBuscaCpbteANULADO: TStringField;
    pnPie: TPanel;
    dbtDETALLE: TDBText;
    Label7: TLabel;
    CDSBuscaCpbteTIPOCPBTE: TStringField;
    CDSBuscaCpbteMUESTRAESTADO: TStringField;
    DBText3: TDBText;
    Label8: TLabel;
    ComBuscador: TComBuscador;
    QBuscaCpbte: TFDQuery;
    QTipoCom: TFDQuery;
    QBuscarClaseCpbte: TFDQuery;
    QClientes: TFDQuery;
    Qsucursal: TFDQuery;
    QsucursalCODIGO: TIntegerField;
    QsucursalDETALLE: TStringField;
    QBuscarClaseCpbteNOMBRE: TStringField;
    QBuscarClaseCpbteLETRA: TStringField;
    QBuscarClaseCpbteCLASE: TStringField;
    CDSBuscaCpbteTOTAL: TFloatField;
    chOTActivas: TAdvOfficeCheckBox;
    cbClientes: TAdvOfficeCheckBox;
    pnPieBoton: TPanel;
    CDSBuscaCpbteFECHA: TSQLTimeStampField;
    PROCEDURE BuscarExecute(Sender: TObject);
    PROCEDURE edNumeroKeyPress(Sender: TObject; VAR Key: Char);
    PROCEDURE edLetraKeyPress(Sender: TObject; VAR Key: Char);
    PROCEDURE edSufijoKeyPress(Sender: TObject; VAR Key: Char);
    PROCEDURE edSufijoEnter(Sender: TObject);
    PROCEDURE edNumeroEnter(Sender: TObject);
    PROCEDURE FormClose(Sender: TObject; VAR Action: TCloseAction);
    PROCEDURE FormDestroy(Sender: TObject);
    PROCEDURE ListarExecute(Sender: TObject);
    PROCEDURE CancelarExecute(Sender: TObject);
    PROCEDURE AceptarExecute(Sender: TObject);
    PROCEDURE BuscarClienteExecute(Sender: TObject);
    PROCEDURE ComboClienteKeyPress(Sender: TObject; VAR Key: Char);
    PROCEDURE ComboClienteEnter(Sender: TObject);
    PROCEDURE cbClientesClick(Sender: TObject);
    PROCEDURE FormShow(Sender: TObject);
    PROCEDURE FormCreate(Sender: TObject);
    PROCEDURE BuscarCpbteExecute(Sender: TObject);
    PROCEDURE ComboCpbteKeyPress(Sender: TObject; VAR Key: Char);
    procedure dbgConsultaTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbgConsultaKeyPress(Sender: TObject; var Key: Char);
    procedure dbgConsultaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CDSBuscaCpbteCalcFields(DataSet: TDataSet);
    procedure chOTActivasClick(Sender: TObject);
  private
    { Private declarations }
    FClaseCpbte: STRING;
    FTipoCpbteElegido: STRING;
    Nro_Id: Integer;
  public
     BuscadorIni        :TIniFile;
     TipoComprobante:String;
     Letra     : String;
     TipoCpbte : String;
     TipoCpbte1: String;
     TipoCpbte2: String;
     TipoCpbte3: String;
//     EstadoOC:String;
     Sucursal:Integer;
     ModificaCaja:String; // Esta variable es solo para el Ingreso-Egreso de Caja
     CuentaCaja  :Integer;
     NewField    :TField;

    { Public declarations }
  published
    PROPERTY ClaseCpbte: STRING read FClaseCpbte write FClaseCpbte;
    PROPERTY TipoCpbteElegido: STRING read FTipoCpbteElegido write FTipoCpbteElegido;
     { Public declarations }
    PROPERTY Id_Rec: Integer read Nro_Id write Nro_Id;
  END;

VAR
  FormBuscaCpbte: TFormBuscaCpbte;

IMPLEMENTATION

uses UBuscadorTipoCpbte, UDMain_FD;
{$R *.DFM}

PROCEDURE TFormBuscaCpbte.BuscarExecute(Sender: TObject);
VAR
  Dato: STRING;
BEGIN
  CDSBuscaCpbte.IndexDefs.Clear;
  dato := (edLetra.Text + edSufijo.Text + edNumero.Text);
  CDSBuscaCpbte.Close;
  CDSBuscaCpbte.CommandText := '';
  IF Tag = 0 THEN //comprobantes de venta
    CDSBuscaCpbte.CommandText :=
      'select FechaVta as fecha,NroCpbte, Codigo, Nombre, Total,id_fc,anulado,TipoCpbte from fcvtacab where NroCpbte=' +
      '''' + dato + '''' +' and sucursal ='+ IntToStr(sucursal)+ ' Order By FechaVta desc ,NroCpbte desc ';
      // +' and ' +
      //'ClaseCpbte=' + '''' + ComboCpbte.Text + '''';

  IF Tag = 1 THEN // comrp. de compra
    CDSBuscaCpbte.CommandText :=
      'select FechaCompra as fecha,NroCpbte, Codigo, Nombre, Total,id_fc,Tipo_Liquidacion as Anulado,TipoCpbte from fccompcab where NroCpbte=' +
      '''' + dato + '''' +' and sucursalcompra ='+ IntToStr(sucursal)+ ' Order By NroCpbte';
  IF Tag = 2 THEN  // recibos
    CDSBuscaCpbte.CommandText :=
      'select Fecha,NroCpbte, Codigo, Nombre, Total ,id_rc as id_fc,''N'' as Anulado,TipoCpbte from Recibos where NroCpbte=' +
      '''' + dato + '''' +' and sucursal ='+ IntToStr(sucursal)+ ' Order By NroCpbte';
  IF Tag = 3 THEN  //orden de pago
    CDSBuscaCpbte.CommandText :=
      'select Fecha,NroCpbte, Codigo, Nombre, Total,id_op as Id_fc,''N'' as Anulado,TipoCpbte from OrdenPago where NroCpbte=' +
      '''' + dato + '''' +' and sucursal ='+ IntToStr(sucursal)+ ' Order By NroCpbte';
  IF Tag = 4 THEN  // presupuestos
    CDSBuscaCpbte.CommandText :=
      'select FechaVta as Fecha,(NroCpbte || sub_nro) as NroCpbte , Codigo, Nombre, id_pr as Id_fc, Total, Anulado ,TipoCpbte  from PresCab where NroCpbte=' +
      '''' + dato + '''' +' and sucursal ='+ IntToStr(sucursal)+ ' Order By NroCpbte';
  IF Tag = 400 THEN  // presupuestos
    CDSBuscaCpbte.CommandText :=
      'select p.FechaVta as Fecha,(p.NroCpbte || p.sub_nro) as NroCpbte , p.Codigo, p.Nombre, p.id_pr as Id_fc,'+
      '(select sum(ps.total) from presubdet ps where ps.id_cab=p.id_pr) as Total'+
      ', p.Anulado ,p.TipoCpbte  from PresCab p where p.NroCpbte=' +
      '''' + dato + '''' +' and p.sucursal ='+ IntToStr(sucursal)+ ' Order By p.NroCpbte';

{  ************ Original *************
      'select FechaVta as Fecha,NroCpbte, Codigo, Nombre, id_pr as Id_fc, Total,  case when id_factura <= 0 Then ''N'' '+
                                          ' when p.id_factura >0 Then ''S'' '+
                                          ' end as Anulado ,TipoCpbte  from PresCab where NroCpbte=' +
      '''' + dato + '''' +' and sucursal ='+ IntToStr(sucursal)+ ' Order By NroCpbte';
}
  IF Tag = 5 THEN //Egresos
    CDSBuscaCpbte.CommandText :=
      'select Fecha,NroCpbte,codigo_gasto as Codigo ,Detalle as Nombre, Importe as Total, id_Egreso as id_fc,''N'' as Anulado,TipoCpbte from Egr_caja where NroCpbte=' +
      '''' + dato + '''' +' and sucursal ='+ IntToStr(sucursal)+ ' Order By NroCpbte';
  IF Tag = 6 THEN //comprobantes de Remitos de venta
    CDSBuscaCpbte.CommandText :=
      'select FechaVta as fecha,NroCpbte, Codigo, Nombre, Total,id_rto as id_fc,anulado as Anulado,TipoCpbte from rtocab where NroCpbte=' +
      '''' + dato + '''' +' and sucursal ='+ IntToStr(sucursal)+ ' Order By NroCpbte';
  IF Tag = 7 THEN //comprobantes de Adelantos de Sueldo
    CDSBuscaCpbte.CommandText :=
      'select fecha,NroCpbte, Codigo, Nombre, importe as Total,id as id_fc,''N'' as Anulado,TipoCpbte from adelantos_sueldo where NroCpbte=' +
      '''' + dato + '''' +' and sucursal ='+ IntToStr(sucursal)+ ' Order By NroCpbte';
  IF Tag = 8 THEN //Ingresos
    CDSBuscaCpbte.CommandText :=
      'select Fecha,NroCpbte,numero as codigo,Detalle as Nombre, Importe as Total, id_Ingreso as id_fc,''N'' as Anulado,TipoCpbte from Ing_caja where NroCpbte=' +
      '''' + dato + '''' +' and sucursal ='+ IntToStr(sucursal)+ ' Order By NroCpbte';
  IF tag = 9 THEN  // cobros de cheques
    BEGIN
      CDSBuscaCpbte.CommandText :=
        'select fecha,NroCpbte, cast(id as varchar(6)) as Codigo, Detalle as Nombre, importe as Total,id as id_fc,''N'' as Anulado,TipoCpbte from Cobro_Cheques_A_Caja where NroCpbte=' +
        '''' + dato + '''' +' and sucursal ='+ IntToStr(sucursal)+ ' Order By NroCpbte';
    END;
  IF tag = 10 THEN  // trasnferencias de Stock
    BEGIN
      CDSBuscaCpbte.CommandText :=
        'select fecha,NroCpbte, cast(deposito_origen as varchar(6)) as Codigo, (NOMBRE_DEPOSITO_ORIGEN || '' a '' || NOMBRE_DEPOSITO_DESTINO) as Nombre, 0.00 as Total,id_trcab as id_fc,''N'' as Anulado,TipoCpbte from trancab where NroCpbte=' +
        '''' + dato + '''' +' and sucursal ='+ IntToStr(sucursal)+ ' Order By NroCpbte';
    END;
   IF tag = 11 THEN  // Trans.de Efectivo
    BEGIN
      CDSBuscaCpbte.CommandText :=
        'select t.fecha,t.NroCpbte, cast(t.caja_origen as varchar(6)) as Codigo, (co.nombre || '' a '' || cd.nombre ) as Nombre, t.importe as Total,t.id as id_fc,''N'' as Anulado,TipoCpbte from transferencias_caja t '+
        'left join cuenta_caja co on co.id_cuenta=t.caja_origen '+
        'left join cuenta_caja cd on cd.id_cuenta=t.caja_destino '+
        'where t.Clasecpbte=' + ''''+ ComboCpbte.text + '''' + ' Order By t.NroCpbte ';
    END;
   IF tag = 12 THEN // Ajustes de Stock
    BEGIN
      CDSBuscaCpbte.CommandText :=
        'select r.fecha,r.NroCpbte, cast(r.deposito as varchar(6)) as Codigo, d.NOMBRE as Nombre, 0.00 as Total,id_rto as id_fc,''N'' as Anulado,TipoCpbte from rtomercacab r ' +
        'left join depositos d on d.id=r.deposito '+
        'where NroCpbte=' + '''' + dato + '''' + ' and ' +
        'ClaseCpbte=' + '''' + ComboCpbte.Text + '''' + ' Order By NroCpbte';
    END;
   IF tag = 13 THEN // Ajustes de Cta.Cte Vta
    BEGIN
      CDSBuscaCpbte.CommandText :=
        'select a.fecha,a.NroCpbte, a.Codigo, c.NOMBRE as Nombre, (a.debe+a.haber) as Total,a.id id_fc,''N'' as Anulado,TipoCpbte from ajuste_cc_clientes a ' +
        'left join clientes c on c.codigo=a.codigo '+
        'where NroCpbte=' + '''' + dato + '''' + ' and ' +
        'ClaseCpbte=' + '''' + ComboCpbte.Text + '''' + ' Order By NroCpbte';
    END;
   IF tag = 14 THEN // Ajustes de Cta.Cte Compra
    BEGIN
      CDSBuscaCpbte.CommandText :=
        'select a.fecha,a.NroCpbte, a.Codigo, c.NOMBRE as Nombre, (a.debe+a.haber) as Total,a.id id_fc,''N'' as Anulado,TipoCpbte from ajuste_cc_provee a ' +
        'left join poveedor c on c.codigo=a.codigo '+
        'where NroCpbte=' + '''' + dato + '''' + ' and ' +
        'ClaseCpbte=' + '''' + ComboCpbte.Text + '''' + ' Order By NroCpbte';
    END;
  IF tag = 15 THEN   //Orden de Compra
    BEGIN
       CDSBuscaCpbte.CommandText :=
          'select Fecha as Fecha,NroCpbte, Codigo, Nombre, Total, id_oc as id_fc,estado as Anulado,TipoCpbte from OrdenCompraCab '+
          'where NroCpbte=' + '''' + dato + '''' +
          ' and ClaseCpbte=' + '''' + ComboCpbte.Text +''''+ ' Order By NroCpbte';
    END;
  IF tag = 16 THEN  // Remplazo de cheques
    BEGIN
      CDSBuscaCpbte.CommandText :=
        'select fecha,NroCpbte, cast(id as varchar(6)) as Codigo, Detalle as Nombre, importe as Total,id as id_fc,''N'' as Anulado,TipoCpbte from remplazo_Cheques where NroCpbte=' +
        '''' + dato + '''' + ' and ' +
        'ClaseCpbte=' + '''' + ComboCpbte.Text + '''' + ' Order By NroCpbte';
    END;
  IF tag = 17 THEN  // Orden de Produccion
    BEGIN
      CDSBuscaCpbte.CommandText :=
        'select fecha_Iniciada as Fecha,NroCpbte, cast(id as varchar(6)) as Codigo, Productor as Nombre, 0.00 as Total,id as id_fc,Estado as Anulado,TipoCpbte from ordenproduccion_cab where NroCpbte=' +
        '''' + dato + '''' + ' and ' +
        'ClaseCpbte=' + '''' + ComboCpbte.Text + '''' + ' Order By NroCpbte';
    END;
  IF tag = 18 THEN  // Orden de Trabajo
    BEGIN
      CDSBuscaCpbte.CommandText :=
        'select fechaInicio as Fecha,NroCpbte, Codigo, Nombre, Total,id_ot as id_fc,cast(estado as varchar(1)) as Anulado,TipoCpbte,archivada from ordentrabajocab where NroCpbte=' +
        '''' + dato + '''' + ' and ' +
        'ClaseCpbte=' + '''' + ComboCpbte.Text + '''' + ' Order By NroCpbte';
    END;
  IF tag = 19 THEN // Notas de Pedido
    BEGIN
      CDSBuscaCpbte.CommandText :=
        'select np.fecha,np.NroCpbte, ''N/N'' as Codigo,(''Dep.Solicita:''||d.nombre || ''- Suc:''||s.detalle) as Nombre, 0.00 as Total,np.id as id_fc,np.pedido as Anulado,np.TipoCpbte from notapedidocab np'+
          'join depositos d on d.id=np.deposito '+
          'join sucursal s on s.codigo=np.a_sucursal '+
        //  'select fecha,NroCpbte, ''N/N'' as Codigo, ''--'' as Nombre, 0.00 as Total,id as id_fc,''N'' as Anulado,TipoCpbte from notapedidocab ' +
        'where NroCpbte=' + '''' + dato + '''' + ' and ' +
        'ClaseCpbte=' + '''' + ComboCpbte.Text + '''' + ' Order By NroCpbte';
    END;
  IF tag = 20 THEN  // Remplazo de cheques de Terceros
    BEGIN
      CDSBuscaCpbte.CommandText :=
        'select fecha,NroCpbte, cast(id as varchar(6)) as Codigo, Detalle as Nombre, importe as Total,id as id_fc,''N'' as Anulado,TipoCpbte from remplazo_Cheques_tercero where NroCpbte=' +
        '''' + dato + '''' + ' and ' +
        'ClaseCpbte=' + '''' + ComboCpbte.Text + '''' + ' Order By NroCpbte';
    END;
  IF tag = 21 THEN  // Recepcion de Mercaderia
    CDSBuscaCpbte.CommandText :=
      'select FechaRecepcion as fecha,NroCpbte, Codigo, Nombre, Total,id_recmer as id_fc,''N'' as Anulado,TipoCpbte from recepmercacab where NroCpbte=' +
      '''' + dato + '''' +' and sucursalcompra ='+ IntToStr(sucursal)+ ' Order By NroCpbte';
  IF Tag = 22 THEN //Anulacion de Chques
    CDSBuscaCpbte.CommandText :=
      'select Fecha,NroCpbte,''S/N'' as Codigo ,Detalle as Nombre, Importe as Total, id as id_fc,''N'' as Anulado,TipoCpbte from Anulacion_cheques where NroCpbte=' +
      '''' + dato + '''' +' and sucursal ='+ IntToStr(sucursal)+ ' Order By NroCpbte';

  IF Tag = 23 THEN  //Anulacion orden de pago
    CDSBuscaCpbte.CommandText :=
      'select Fecha,NroCpbte, Codigo, Nombre, Total,id_Anulacion as Id_fc,''N'' as Anulado,TipoCpbte from Anulacion_OPago where NroCpbte=' +
      '''' + dato + '''' +' and sucursal ='+ IntToStr(sucursal)+ ' Order By NroCpbte';

  IF Tag = 24 THEN  //Anulacion de Recibos
    CDSBuscaCpbte.CommandText :=
      'select Fecha,NroCpbte, Codigo, Nombre, Total,id_Anulacion as Id_fc,''N'' as Anulado,TipoCpbte from Anulacion_Recibo where NroCpbte=' +
      '''' + dato + '''' +' and sucursal ='+ IntToStr(sucursal)+ ' Order By NroCpbte';

  IF tag = 25 THEN // Ajustes de Nros de Serie
    BEGIN
      CDSBuscaCpbte.CommandText :=
        'select r.fecha,r.NroCpbte, ''S/N'' as Codigo as Codigo, r.obs as Nombre, 0.00 as Total,id as id_fc,''N'' as Anulado,TipoCpbte from AJUSTE_NRO_SERIES r ' +
        'where NroCpbte=' + '''' + dato + '''' + ' and ' +
        'ClaseCpbte=' + '''' + ComboCpbte.Text + '''' + ' Order By NroCpbte';
    END;

  IF Tag = 26 THEN //Anulacion de Adelantos de Sueldo
    CDSBuscaCpbte.CommandText :=
      'select fecha,NroCpbte, Codigo, Nombre, importe as Total,id as id_fc,''N'' as Anulado ,TipoCpbte from Anulacion_adelantos_sueldo where NroCpbte=' +
      '''' + dato + '''' +' and sucursal ='+ IntToStr(sucursal)+ ' Order By NroCpbte';

  IF Tag = 27 THEN //Remitos de Obras
    CDSBuscaCpbte.CommandText :=
      'select r.fecha,r.NroCpbte, cast(r.codigo as varchar(6)) as Codigo, o.detalle as Nombre, r.Total,r.id_rto as id_fc,''N'' as Anulado,TipoCpbte from Rto_ObraCab r '+
      ' left join obras o on o.codigo = r.codigo '+
      ' where NroCpbte=' + '''' + dato + '''' +' and sucursal ='+ IntToStr(sucursal)+ ' Order By NroCpbte';

  IF tag = 28 THEN  // Envio Stock En Garantia (RMA)
    CDSBuscaCpbte.CommandText :=
      'select g.FechaEnvio as fecha,g.NroCpbte, g.proveedor as Codigo, p.Nombre, Total,id_rto as id_fc,''N'' as Anulado,TipoCpbte from RTOGTIA_ENVIO_CAB '+
      'left join Poveedor p on p.codigo=g.proveedor '+
      'where g.NroCpbte='+'''' + dato + '''' +' and g.sucursal ='+ IntToStr(sucursal)+
      ' Order By g.NroCpbte';
  IF Tag = 29 THEN //Ticket de venta
    CDSBuscaCpbte.CommandText :=
      'select FechaVta as fecha,NroCpbte, Codigo, Nombre, Total,id_fc,''N'' as Anulado,TipoCpbte from fcvtacab where NroCpbte=' +
      '''' + dato + '''' +' and sucursal ='+ IntToStr(sucursal)+ ' Order By NroCpbte';
  IF Tag = 30 THEN //comprobantes Nota de Pedido de Clientes
    CDSBuscaCpbte.CommandText :=
      'select FechaPedido as fecha,NroCpbte, Codigo, Nombre, Total,id as id_fc,estado as Anulado,TipoCpbte from npedidocab_cliente where NroCpbte=' +
      '''' + dato + '''' +' and sucursal ='+ IntToStr(sucursal)+ ' Order By FechaPedido desc,NroCpbte desc';
  IF Tag = 31 THEN //Reemplazo de Valores
    CDSBuscaCpbte.CommandText :=
      'select Fecha,NroCpbte, ''S/N'' as Codigo, ''Reemplazo Valores'' as Nombre, Importe as Total,id as id_fc,''N'' as Anulado,TipoCpbte from REEMPLAZO_VALORES_INGRESADOS where NroCpbte=' +
      '''' + dato + '''' +' and sucursal ='+ IntToStr(sucursal)+ ' Order By NroCpbte';
  IF Tag = 32 THEN //Valores Compartidos
    CDSBuscaCpbte.CommandText :=
      'select Fecha,NroCpbte, Codigo, Nombre, Importe as Total,id as id_fc,''N'' as Anulado,TipoCpbte from CHEQUE_COMPARTIDO where NroCpbte=' +
      '''' + dato + '''' +' and sucursalventa ='+ IntToStr(sucursal)+ ' Order By NroCpbte';

  IF Tag = 33 THEN //comprobantes de Remitos de Mk
    CDSBuscaCpbte.CommandText :=
      'select FechaVta as fecha,NroCpbte, Codigo, Nombre, VtaTotal as Total,id_rto as id_fc,''N'' as Anulado,TipoCpbte from rtocab_mkt where NroCpbte=' +
      '''' + dato + '''' +' and sucursal ='+ IntToStr(sucursal)+ ' Order By NroCpbte';

  IF Tag = 34 THEN //comprobantes de Chques Anulados
    CDSBuscaCpbte.CommandText :=
      'select Fecha as fecha,NroCpbte, ''S/N'' as Codigo, detalle as Nombre, 0 as Total,id_rto as id_fc,''N'' as Anulado,TipoCpbte from CHEQUES_ANULDOS where NroCpbte=' +
      '''' + dato + '''' +' and sucursal ='+ IntToStr(sucursal)+ ' Order By NroCpbte';

  IF Tag = 35 THEN //Liquidacion Granos
    CDSBuscaCpbte.CommandText :=
      'select Fecha,NroCpbte, Codigo, Nombre, total_operacion as Total,id_lq as id_fc,''N'' as anulado,TipoCpbte from LIQGRANOS_CAB where NroCpbte=' +
      '''' + dato + '''' +' and sucursal ='+ IntToStr(sucursal)+ ' Order By Fecha desc ,NroCpbte desc ';
      // +' and ' +
      //'ClaseCpbte=' + '''' + ComboCpbte.Text + '''';


  CDSBuscaCpbte.Open;
  dbgConsulta.Width:=dbgConsulta.Width + 1;
  dbgConsulta.Width:=dbgConsulta.Width - 1;

  dbgConsulta.Columns[0].DisplayName  := 'Fecha';
  dbgConsulta.Columns[1].DisplayName := 'Tipo';
  dbgConsulta.Columns[2].DisplayName := 'Nro.Cpbte';
  dbgConsulta.Columns[3].DisplayName := 'Codigo';
  dbgConsulta.Columns[4].DisplayName := 'Nombre';
  dbgConsulta.Columns[5].DisplayName := 'Total';
  IF Assigned(dbgConsulta.Fields[6]) THEN
    dbgConsulta.Fields[6].Visible := false;
  TNumericField(dbgConsulta.Fields[5]).DisplayFormat := '##0.00';

//  TStringField(dbgConsulta.Fields[2]).EditMask := 'a-####-########;0';

  if (Tag=4) or (Tag=400) then
    TStringField(dbgConsulta.Fields[2]).EditMask := 'a-####-########-##;0'
  else
    TStringField(dbgConsulta.Fields[2]).EditMask := 'a-####-########;0';

END;

PROCEDURE TFormBuscaCpbte.edNumeroKeyPress(Sender: TObject; VAR Key: Char);
BEGIN
  IF (Length(edNumero.Text)) < 7 THEN
    BEGIN
      IF NOT ((Key IN ['0'..'9']) OR (key = Char(VK_BACK)) OR (key = #13)) THEN
        Key := #0;
    END;
  //else
   // edLetra.SetFocus;
  IF Key = #13 THEN
    BEGIN
      edNumero.Text := Copy('00000000', 1, 8 - Length(edNumero.Text)) + edNumero.Text;
      Buscar.Execute;
      edNumero.SetFocus;
      edNumero.SelectAll;
    END;
END;

PROCEDURE TFormBuscaCpbte.edLetraKeyPress(Sender: TObject; VAR Key: Char);
BEGIN
  IF NOT ((Key IN ['A'..'Z', 'a'..'z']) OR (key = Char(VK_BACK)) OR (key = #13))
    THEN
    Key := #0; //else
  IF Key = #13 THEN
    edSufijo.SetFocus;
END;

PROCEDURE TFormBuscaCpbte.edSufijoKeyPress(Sender: TObject; VAR Key: Char);
BEGIN
  IF (Length(edSufijo.Text)) < 3 THEN
    BEGIN
      IF NOT ((Key IN ['0'..'9']) OR (key = Char(VK_BACK)) OR (key = #13)) THEN
        Key := #0;
    END
  ELSE
    edSufijo.SetFocus;
  IF Key = #13 THEN
    BEGIN
      edSufijo.Text := Copy('0000', 1, 4 - Length(edSufijo.Text)) +
        edSufijo.Text;
      edNumero.SetFocus;
    END;
END;

PROCEDURE TFormBuscaCpbte.edSufijoEnter(Sender: TObject);
BEGIN
  edSufijo.Text := '';
END;

PROCEDURE TFormBuscaCpbte.edNumeroEnter(Sender: TObject);
BEGIN
  edNumero.Text := '';
END;

PROCEDURE TFormBuscaCpbte.FormClose(Sender: TObject;
  VAR Action: TCloseAction);
 var TC: TComponent;
begin
  TC := FindComponent('CDSBuscaCpbteARCHIVADA');
  if not (TC = nil) then
    begin
      CDSBuscaCpbte.Close;
      TC.Free;
    end;

  BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_fd.UsuarioActivo+'_buscador.ini');
  //*************************************************************
  BuscadorIni.WriteString('comprobante', 'Letra', Letra);
  BuscadorIni.WriteString('comprobante', 'Tipo', TipoCpbte);
  BuscadorIni.WriteString('comprobante', 'Clase', ClaseCpbte);
  BuscadorIni.WriteInteger('comprobante', 'Sucursal', Sucursal);
  BuscadorIni.WriteString('comprobante', 'Denominacion', edMuestraComprobante.Text );
  BuscadorIni.WriteBool('comprobante', 'Filtra', cbClientes.Checked);
  BuscadorIni.WriteBool('comprobante', 'OTActivas', chOTActivas.Checked);

  IF cbClientes.Checked=False Then
    begin
      ComboCliente.Text     :='';
      dbeMuestraCliente.Text:='';
    end;
  BuscadorIni.WriteString('comprobante', 'Cliente', ComboCliente.Text);
  BuscadorIni.WriteString('comprobante', 'MuestraCliente',dbeMuestraCliente.Text);
 // BuscadorIni.WriteString('TipoCpbte', 'Tipo', ComboCpbte.Text);
  BuscadorIni.Free;

  Action := caFree;
END;

PROCEDURE TFormBuscaCpbte.FormDestroy(Sender: TObject);
BEGIN
  FormBuscaCpbte := NIL;
END;

procedure TFormBuscaCpbte.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_ESCAPE then
    Cancelar.Execute;
end;

procedure TFormBuscaCpbte.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#27 then
    Cancelar.Execute;
end;

PROCEDURE TFormBuscaCpbte.ListarExecute(Sender: TObject);
BEGIN
  CDSBuscaCpbte.Close;
  CDSBuscaCpbte.IndexDefs.Clear;
  CDSBuscaCpbte.IndexFieldNames:='';
  CDSBuscaCpbte.IndexName:='';
  edLetra.Text  := '';
  edSufijo.Text := '';
  edNumero.Text := '';
  CDSBuscaCpbte.CommandText := '';
  //Facturas Ventas
  IF Tag = 0 THEN
    BEGIN
      IF cbClientes.Checked = True THEN
        CDSBuscaCpbte.CommandText :=
          'select FechaVta as fecha,NroCpbte, Codigo, Nombre, Total,id_fc,anulado,TipoCpbte from fcvtacab where Clasecpbte=' + ''''
          + ComboCpbte.text + '''' + 'and letrafac = '+''''+letra+''''+ ' and tipocpbte = '+''''+TipoCpbte+'''' +
          ' and Codigo=' + '''' + ComboCliente.Text + '''' + ' and sucursal ='+ IntToStr(sucursal) +' Order By FechaVta desc ,NroCpbte desc'
      ELSE
        CDSBuscaCpbte.CommandText :=
          'select FechaVta as fecha,NroCpbte, Codigo, Nombre, Total,id_fc,anulado,TipoCpbte from fcvtacab where Clasecpbte=' + ''''
          + ComboCpbte.text + '''' + ' and tipocpbte = '+''''+TipoCpbte+'''' +' and sucursal ='+ IntToStr(sucursal) +' and letrafac = '+''''+letra+''''  +' Order By FechaVta desc,NroCpbte desc';
    END;
  //Facturas Compras
  IF tag = 1 THEN
    BEGIN
      IF cbClientes.Checked = True THEN
        CDSBuscaCpbte.CommandText :=
          'select FechaCompra as fecha,NroCpbte, Codigo, Nombre, Total ,id_fc, tipo_liquidacion as Anulado,TipoCpbte from fcCompCab where Clasecpbte=' + ''''
          + ComboCpbte.text + '''' + 'and letrafac = '+''''+letra+''''+ ' and tipocpbte = '+''''+TipoCpbte+'''' +
          ' and Codigo=' + '''' + ComboCliente.Text + '''' +' and sucursalcompra ='+ IntToStr(sucursal) +' and letrafac = '+''''+letra+''''
          + ' Order By FechaCompra desc , NroCpbte '
      ELSE
        CDSBuscaCpbte.CommandText :=
          'select FechaCompra as Fecha,NroCpbte, Codigo, Nombre, Total ,id_fc,tipo_liquidacion Anulado,TipoCpbte from FcCompCab where clasecpbte=' + ''''
          + ComboCpbte.text + '''' +' and sucursalcompra = '+ IntToStr(sucursal) + ' and letrafac = '+''''+letra+''''
          + ' and tipocpbte = '+''''+TipoCpbte+'''' + ' Order By FechaCompra desc , NroCpbte ';
    END;
  //Recibos Cobros a Clientes
  IF tag = 2 THEN
    BEGIN
      IF cbClientes.Checked = True THEN
        CDSBuscaCpbte.CommandText :=
          'select Fecha,NroCpbte, Codigo, Nombre, Total ,id_rc as id_fc,''N'' as Anulado,TipoCpbte from Recibos where clasecpbte=' + ''''
          + comboCpbte.text + '''' +  ' and letrarc = '+''''+letra+'''' +
          ' and Codigo=' + '''' + ComboCliente.Text + '''' +' and sucursal = '+ IntToStr(sucursal) + ' Order By NroCpbte desc'
      ELSE
        CDSBuscaCpbte.CommandText :=
          'select Fecha,NroCpbte, Codigo, Nombre, Total ,id_rc as id_fc,''N'' as Anulado,TipoCpbte from Recibos where clasecpbte=' + ''''
          + comboCpbte.text + '''' +' and sucursal = '+ IntToStr(sucursal) + ' and letrarc = '+''''+letra+''''+ ' Order By NroCpbte desc';
    END;
  //Ordenes de Pago
  IF tag = 3 THEN
    BEGIN
      IF cbClientes.Checked = True THEN
        CDSBuscaCpbte.CommandText :=
          'select Fecha,NroCpbte, Codigo, Nombre, Total ,id_op as id_fc,''N'' as Anulado,TipoCpbte from OrdenPago where clasecpbte=' + ''''
          + comboCpbte.text + '''' + ' and letraop = '+''''+letra+'''' +
          ' and Codigo=' + '''' + ComboCliente.Text + '''' +' and sucursal ='+ IntToStr(sucursal) + ' Order By Fecha desc,nrocpbte desc'
      ELSE
        CDSBuscaCpbte.CommandText :=
          'select Fecha,NroCpbte, Codigo, Nombre, Total ,id_op as id_fc,''N'' as Anulado,TipoCpbte from OrdenPago where clasecpbte=' + ''''
          + combocpbte.text + '''' +' and sucursal ='+ IntToStr(sucursal) + ' and letraop = '+''''+letra+''''+ ' Order By Fecha desc,nrocpbte desc';
    END;
  //Presupuestos
  IF tag = 4 THEN
    BEGIN
      IF cbClientes.Checked = True THEN
        CDSBuscaCpbte.CommandText :=
          'select FechaVta as Fecha,(NroCpbte ||sub_nro) as NroCpbte, Codigo, Nombre, Total, id_pr as id_fc, Anulado,TipoCpbte from PresCab where Codigo='+ #39
          + ComboCliente.Text + #39 +' and sucursal ='+ IntToStr(sucursal) + ' Order By NroCpbte desc'
      ELSE
        CDSBuscaCpbte.CommandText :=
          'select FechaVta as Fecha,(NroCpbte ||sub_nro) as NroCpbte, Codigo, Nombre, Total, id_pr as id_fc, Anulado ,TipoCpbte from PresCab where Clasecpbte=' + #39
          + comboCpbte.text + #39 +' and sucursal ='+ IntToStr(sucursal) + ' Order By NroCpbte desc';
{ **************** Original ***********************
      IF cbClientes.Checked = True THEN
        CDSBuscaCpbte.CommandText :=
          'select FechaVta as Fecha,NroCpbte, Codigo, Nombre, Total, id_pr as id_fc, case when id_factura <= 0 Then ''N'' '+
                                                                                        ' when id_factura >0 Then ''S'' '+
                                                                                        ' end as Anulado,TipoCpbte from PresCab where Codigo='+ #39
          + ComboCliente.Text + #39 +' and sucursal ='+ IntToStr(sucursal) + ' Order By NroCpbte desc'
      ELSE
        CDSBuscaCpbte.CommandText :=
          'select FechaVta as Fecha,NroCpbte, Codigo, Nombre, Total, id_pr as id_fc, case when id_factura <= 0 Then ''N'' '+
                                                                                        ' when id_factura >0 Then ''S'' '+
                                                                                        ' end as Anulado ,TipoCpbte from PresCab where Clasecpbte=' + #39
          + comboCpbte.text + #39 +' and sucursal ='+ IntToStr(sucursal) + ' Order By NroCpbte desc';
}
    END;
  IF Tag = 400 THEN  // presupuestos
    begin
      IF cbClientes.Checked = True THEN
        CDSBuscaCpbte.CommandText :=
          'select p.FechaVta as Fecha,(p.NroCpbte || p.sub_nro) as NroCpbte, p.Codigo, p.Nombre,'+
          '(select sum(ps.total) from presubdet ps where ps.id_cab=p.id_pr) as Total'+
          ', p.id_pr as id_fc, p.Anulado,p.TipoCpbte from PresCab p where p.Codigo='+ #39
          + ComboCliente.Text + #39 +' and p.sucursal ='+ IntToStr(sucursal) + ' Order By p.NroCpbte desc'
      else
        CDSBuscaCpbte.CommandText :=
          'select p.FechaVta as Fecha,(p.NroCpbte ||p.sub_nro) as NroCpbte, p.Codigo, p.Nombre,'+
          '(select sum(ps.total) from presubdet ps where ps.id_cab=p.id_pr) as Total'+
          ', p.id_pr as id_fc, p.Anulado,p.TipoCpbte from PresCab p where p.clasecpbte='+ #39
          + ComboCpbte.Text + #39 +' and p.sucursal ='+ IntToStr(sucursal) + ' Order By p.NroCpbte desc';
    end;
  //Egresos
  IF tag = 5 THEN
    BEGIN
      if ModificaCaja='S' Then
        begin
          IF cbClientes.Checked = True THEN
            CDSBuscaCpbte.CommandText :=
              'select c.Fecha,c.NroCpbte,d.CodigoGasto as Codigo ,d.Detalle as Nombre, c.Importe as Total, c.id_Egreso as id_fc,''N'' as Anulado,c.TipoCpbte from Egr_caja c ' +
              'left join egr_caja_detalle d on d.id_cpbte=c.id_Egreso where c.ClaseCpbte=' + #39
              + ComboCpbte.Text + #39 +' and c.sucursalventa ='+ IntToStr(sucursal) + ' and d.codigogasto=' +#39+ comboCliente.text +#39+' Order By c.NroCpbte desc'
          else
            CDSBuscaCpbte.CommandText :=
              'select Fecha,NroCpbte,Codigo_Gasto as Codigo ,Detalle as Nombre, Importe as Total, id_Egreso as id_fc,''N'' as Anulado,TipoCpbte from Egr_caja where ClaseCpbte=' + #39
              + ComboCpbte.Text + #39 +' and sucursalventa ='+ IntToStr(sucursal) + ' Order By NroCpbte desc';
        end
      else
        begin
          IF cbClientes.Checked = True THEN
            CDSBuscaCpbte.CommandText :=
              'select Fecha,NroCpbte,Codigo_Gasto as Codigo ,Detalle as Nombre, Importe as Total, id_Egreso as id_fc, caja.id_cuenta_caja,''N'' as Anulado,TipoCpbte from Egr_caja '+
              'left join caja_mov caja on caja.id_comprobante=id_egreso and caja.tipo_comprob=tipocpbte '+
              'where ClaseCpbte=' + #39+ ComboCpbte.Text + #39 +' and sucursalventa ='+ IntToStr(sucursal) +
              ' and codigo_gasto=' +#39+ comboCliente.text +#39+' and caja.id_cuenta_caja='+IntToStr(CuentaCaja)+
              ' Order By NroCpbte desc'
          else
            CDSBuscaCpbte.CommandText :=
              'select Fecha,NroCpbte,Codigo_Gasto as Codigo ,Detalle as Nombre, Importe as Total, id_Egreso as id_fc, caja.id_cuenta_caja,''N'' as Anulado,TipoCpbte from Egr_caja '+
              'left join caja_mov caja on caja.id_comprobante=id_egreso and caja.tipo_comprob=tipocpbte '+
              'where ClaseCpbte=' + #39 + ComboCpbte.Text + #39 +' and sucursalventa ='+ IntToStr(sucursal) +
              ' and caja.id_cuenta_caja='+IntToStr(CuentaCaja)+
              ' Order By NroCpbte desc';
        end

    END;
  //Remitos
  IF tag = 6 THEN
    BEGIN
      IF cbClientes.Checked = True THEN
        CDSBuscaCpbte.CommandText :=
          'select FechaVta as fecha,NroCpbte, Codigo, Nombre, Total,id_rto as id_fc, Anulado,TipoCpbte  from Rtocab where Clasecpbte=' + ''''
          + ComboCpbte.text + '''' +
          ' and Codigo=' + '''' + ComboCliente.Text + '''' + ' and sucursal ='+ IntToStr(sucursal) + ' and letrarto =' +''''+ Letra + ''''+  ' Order By FechaVta desc, NroCpbte desc'
      ELSE
        CDSBuscaCpbte.CommandText :=
          'select FechaVta as fecha,NroCpbte, Codigo, Nombre, Total,id_rto as id_fc,Anulado,TipoCpbte from rtocab where Clasecpbte=' + ''''
          + ComboCpbte.text + '''' +' and sucursal ='+ IntToStr(sucursal) + ' and letrarto =' + '''' + Letra + '''' + ' Order By FechaVta desc, NroCpbte desc';
    END;
  //Adelantos de Sueldo
  IF tag = 7 THEN
    BEGIN
      IF cbClientes.Checked = True THEN
        CDSBuscaCpbte.CommandText :=
          'select fecha,NroCpbte, Codigo, Nombre, importe as Total,id as id_fc,''N'' as Anulado,TipoCpbte  from Adelantos_Sueldo where Clasecpbte=' + ''''
          + ComboCpbte.text + '''' +
          ' and Codigo=' + '''' + ComboCliente.Text + '''' + ' and sucursal ='+ IntToStr(sucursal) +' Order By NroCpbte desc'
      ELSE
        CDSBuscaCpbte.CommandText :=
          'select fecha,NroCpbte, Codigo, Nombre, importe as Total,id as id_fc,''N'' as Anulado,TipoCpbte from adelantos_sueldo where Clasecpbte=' + ''''
          + ComboCpbte.text + '''' +' and sucursal ='+ IntToStr(sucursal) + ' Order By NroCpbte desc';
    END;
  //Ingresos
  IF tag = 8 THEN
    BEGIN
      if ModificaCaja='S' Then
          CDSBuscaCpbte.CommandText :=
            'select Fecha,NroCpbte,numero as codigo,Detalle as Nombre, Importe as Total, id_Ingreso as id_fc,''N'' as Anulado,TipoCpbte from Ing_caja where ClaseCpbte=' + #39
            + ComboCpbte.Text + #39 +' and sucursalventa ='+ IntToStr(sucursal) + ' Order By NroCpbte desc'
      else
          CDSBuscaCpbte.CommandText :=
            'select Fecha,NroCpbte,numero as codigo,Detalle as Nombre, Importe as Total, id_Ingreso as id_fc, caja.id_cuenta_caja,''N'' as Anulado,TipoCpbte from Ing_caja '+
            'left join caja_mov caja on caja.id_comprobante=id_Ingreso and caja.tipo_comprob=tipocpbte '+
            'where ClaseCpbte=' + #39+ ComboCpbte.Text + #39 +' and sucursalventa ='+ IntToStr(sucursal) +
            ' and caja.id_cuenta_caja='+IntToStr(CuentaCaja)+
            ' Order By NroCpbte desc'
      END;
  // cobros de Cheques a Caja
  IF tag = 9 THEN
    BEGIN
      CDSBuscaCpbte.CommandText :=
        'select fecha,NroCpbte, cast(id as varchar(6)) as Codigo, Detalle as Nombre, importe as Total,id as id_fc,''N'' as Anulado,TipoCpbte from Cobro_Cheques_A_Caja where Clasecpbte=' + ''''
          + ComboCpbte.text + '''' +' and sucursal ='+ IntToStr(sucursal) + ' Order By NroCpbte desc';
    END;
  // Trasnferecnias de Stock
  IF tag = 10 THEN
    BEGIN
      CDSBuscaCpbte.CommandText :=
        'select fecha,NroCpbte, cast(deposito_origen as varchar(6)) as Codigo, (NOMBRE_DEPOSITO_ORIGEN || '' a '' || NOMBRE_DEPOSITO_DESTINO) as Nombre,Total,id_trcab as id_fc,''N'' as Anulado,TipoCpbte from trancab where Clasecpbte=' + ''''
          + ComboCpbte.text + '''' +' and sucursal ='+ IntToStr(sucursal) + ' Order By NroCpbte desc';
    END;
  // Trasnferecnias de Efectivo
  IF tag = 11 THEN
    BEGIN
      if ModificaCaja='S' Then
        CDSBuscaCpbte.CommandText :=
          'select t.fecha,t.NroCpbte, cast(t.caja_origen as varchar(6)) as Codigo, (co.nombre || '' a '' || cd.nombre ) as Nombre, t.importe as Total,t.id as id_fc,''N'' as Anulado,TipoCpbte from transferencias_caja t '+
          'left join cuenta_caja co on co.id_cuenta=t.caja_origen '+
          'left join cuenta_caja cd on cd.id_cuenta=t.caja_destino '+
          'where t.Clasecpbte=' + ''''+ ComboCpbte.text + '''' +' and t.sucursal ='+ IntToStr(sucursal) +
          ' Order By t.NroCpbte desc'
      else
        CDSBuscaCpbte.CommandText :=
          'select t.fecha,t.NroCpbte, cast(t.caja_origen as varchar(6)) as Codigo, (co.nombre || '' a '' || cd.nombre ) as Nombre, t.importe as Total,t.id as id_fc,''N'' as Anulado,TipoCpbte from transferencias_caja t '+
          'left join cuenta_caja co on co.id_cuenta=t.caja_origen '+
          'left join cuenta_caja cd on cd.id_cuenta=t.caja_destino '+
          'where t.Clasecpbte=' + ''''+ ComboCpbte.text + '''' +' and t.sucursal ='+ IntToStr(sucursal) +
          ' and t.caja_origen ='+ IntToStr(CuentaCaja)+
          ' Order By t.NroCpbte desc';
    END;
   IF tag = 12 THEN // Ajustes de Stock
    BEGIN
      CDSBuscaCpbte.CommandText :=
        'select r.fecha,r.NroCpbte, cast(r.deposito as varchar(6)) as Codigo, d.NOMBRE as Nombre, 0.00 as Total,id_rto as id_fc,''N'' as Anulado,TipoCpbte from rtomercacab r ' +
        'left join depositos d on d.id=r.deposito '+
        'where r.ClaseCpbte=' + '''' + ComboCpbte.Text + '''' +' and r.sucursal ='+ IntToStr(sucursal) + ' Order By r.NroCpbte desc';
    END;
   IF tag = 13 THEN // Ajustes de Cta.Cte Vta
     BEGIN
       IF cbClientes.Checked = True THEN
         BEGIN
           CDSBuscaCpbte.CommandText :=
            'select a.fecha,a.NroCpbte, a.Codigo, c.NOMBRE as Nombre, (a.debe+a.haber) as Total,a.id id_fc,''N'' as Anulado,TipoCpbte from ajuste_cc_clientes a ' +
           'left join clientes c on c.codigo=a.codigo '+
           'where a.ClaseCpbte=' + '''' + ComboCpbte.Text + '''' +' and a.Codigo=' + '''' + ComboCliente.Text+ ''''+
           ' and a.sucursal ='+ IntToStr(sucursal) + '  Order By a.NroCpbte desc';
         END
      ELSE
        BEGIN
           CDSBuscaCpbte.CommandText :=
            'select a.fecha,a.NroCpbte, a.Codigo, c.NOMBRE as Nombre, (a.debe+a.haber) as Total,a.id id_fc,''N'' as Anulado,TipoCpbte from ajuste_cc_clientes a ' +
           'left join clientes c on c.codigo=a.codigo '+
           'where ClaseCpbte=' + '''' + ComboCpbte.Text + '''' +' and a.sucursal ='+ IntToStr(sucursal) + '  Order By NroCpbte desc';
        END;
    END;
   IF tag = 14 THEN // Ajustes de Cta.Cte Compra
     BEGIN
       IF cbClientes.Checked = True THEN
         BEGIN
           CDSBuscaCpbte.CommandText :=
            'select a.fecha,a.NroCpbte, a.Codigo, c.NOMBRE as Nombre, (a.debe+a.haber) as Total,a.id id_fc,''N'' as Anulado,TipoCpbte from ajuste_cc_provee a ' +
           'left join Poveedor c on c.codigo=a.codigo '+
           'where a.ClaseCpbte=' + '''' + ComboCpbte.Text + '''' +' and a.Codigo=' + '''' + ComboCliente.Text+ ''''+
           ' and a.sucursal ='+ IntToStr(sucursal) + '  Order By a.NroCpbte desc';
         END
      ELSE
        BEGIN
           CDSBuscaCpbte.CommandText :=
            'select a.fecha,a.NroCpbte, a.Codigo, c.NOMBRE as Nombre, (a.debe+a.haber) as Total,a.id id_fc,''N'' as Anulado,TipoCpbte from ajuste_cc_provee a ' +
           'left join Poveedor c on c.codigo=a.codigo '+
           'where a.ClaseCpbte=' + '''' + ComboCpbte.Text + '''' +' and a.sucursal ='+ IntToStr(sucursal) + '  Order By a.NroCpbte desc';
        END;
    END;
  //Orden de Compra
  IF tag = 15 THEN
    BEGIN
      IF cbClientes.Checked = True THEN
        CDSBuscaCpbte.CommandText :=
          'select Fecha as Fecha,NroCpbte, Codigo, Nombre, Total, id_oc as id_fc,estado as Anulado,TipoCpbte from OrdenCompraCab where Codigo=' + #39
          + ComboCliente.Text + #39 +' and sucursal ='+ IntToStr(sucursal) +' Order By NroCpbte desc'
      ELSE
        CDSBuscaCpbte.CommandText :=
          'select Fecha as Fecha,NroCpbte, Codigo, Nombre, Total, id_oc as id_fc,estado as Anulado,TipoCpbte from OrdenCompraCab where Clasecpbte=' + #39
          + comboCpbte.text + #39 +' and sucursal ='+ IntToStr(sucursal) + ' Order By NroCpbte desc';
    END;
  // Remplazo de Cheques
  IF tag = 16 THEN
    BEGIN
      CDSBuscaCpbte.CommandText :=
        'select fecha,NroCpbte, cast(id as varchar(6)) as Codigo, Detalle as Nombre, importe as Total,id as id_fc,''N'' as Anulado,TipoCpbte from Remplazo_Cheques where Clasecpbte=' + ''''
          + ComboCpbte.text + '''' +' and sucursal ='+ IntToStr(sucursal) + ' Order By NroCpbte desc';
    END;
  IF tag = 17 THEN  // Orden de Produccion
    BEGIN
      CDSBuscaCpbte.CommandText :=
        'select fecha_Iniciada as Fecha,NroCpbte, cast(id as varchar(6)) as Codigo, Productor as Nombre,0.00 as Total,id as id_fc, Estado as Anulado ,TipoCpbte from ordenproduccion_cab where ClaseCpbte=' + ''''
        + ComboCpbte.Text + '''' + ' and sucursal ='+ IntToStr(sucursal) + ' Order By NroCpbte desc';
    END;
  IF tag = 18 THEN  // Orden de Trabajo
    BEGIN
      IF cbClientes.Checked = True THEN
        CDSBuscaCpbte.CommandText :=
          'select fechaInicio as Fecha,NroCpbte, Codigo, Nombre, Total,id_ot as id_fc,cast(estado as varchar(1)) as Anulado,TipoCpbte,archivada from ordentrabajocab where codigo=' + #39
          + ComboCliente.Text + #39 + ' and sucursal ='+ IntToStr(sucursal) + ' Order By NroCpbte desc'
      else
        CDSBuscaCpbte.CommandText :=
        'select fechaInicio as Fecha,NroCpbte, Codigo, Nombre, Total,id_ot as id_fc,cast(estado as varchar(1)) as Anulado,TipoCpbte,archivada from ordentrabajocab where ClaseCpbte=' + ''''
          + ComboCpbte.Text + '''' + ' and sucursal ='+ IntToStr(sucursal) + ' Order By NroCpbte desc';
    END;
  IF tag = 19 THEN // Notas de Pedido
    BEGIN
      CDSBuscaCpbte.CommandText :=
      //  'select fecha,NroCpbte, ''S/N'' as Codigo, ''--'' as Nombre,Cast(0.00 as numeric(15,3)) as Total,id as id_fc,''N'' as Anulado,TipoCpbte from notapedidocab ' +
        'select np.fecha,np.NroCpbte, ''S/N'' as Codigo,(''Dep.Solicita: ''||d.nombre || '' - Suc:''||s.detalle) as Nombre, 0.00 as Total,np.id as id_fc,np.pedido as Anulado,np.TipoCpbte from notapedidocab np '+
        '  join depositos d on d.id=np.deposito '+
        '  join sucursal s on s.codigo=np.a_sucursal '+
        'where np.ClaseCpbte=' + '''' + ComboCpbte.Text + '''' +' and np.sucursal ='+ IntToStr(sucursal) + ' Order By np.NroCpbte desc';
    END;
  IF tag = 20 THEN // Remplazo de Cheques de Terceros
    BEGIN
      CDSBuscaCpbte.CommandText :=
        'select fecha,NroCpbte, cast(id as varchar(6)) as Codigo, Detalle as Nombre, importe as Total,id as id_fc,''N'' as Anulado,TipoCpbte from Remplazo_Cheques_tercero where Clasecpbte=' + ''''
          + ComboCpbte.text + '''' +' and sucursal ='+ IntToStr(sucursal) + ' Order By NroCpbte desc';
    END;
  IF tag = 21 THEN  // Recepcion de Mercaderia
    BEGIN
      IF cbClientes.Checked = True THEN
        CDSBuscaCpbte.CommandText :=
          'select FechaRecepcion as fecha,NroCpbte, Codigo, Nombre, Total ,id_recmer as id_fc,''N'' as Anulado,TipoCpbte from RecepMercaCab where Clasecpbte=' + ''''
          + ComboCpbte.text + '''' + 'and letraRecMer = '+''''+letra+''''+
          ' and Codigo=' + '''' + ComboCliente.Text + '''' +' and sucursalcompra ='+ IntToStr(sucursal) +'and letrarecmer = '+''''+letra+''''
          + ' Order By NroCpbte desc'
      ELSE
        CDSBuscaCpbte.CommandText :=
          'select FechaRecepcion as Fecha,NroCpbte, Codigo, Nombre, Total ,id_recmer as id_fc,''N'' as Anulado,TipoCpbte from RecepMercaCab where clasecpbte=' + ''''
          + ComboCpbte.text + '''' +' and sucursalcompra ='+ IntToStr(sucursal) + 'and letrarecmer = '+''''+letra+''''+ ' Order By NroCpbte desc';
    END;
  IF Tag = 22 THEN //Anulacion de Chques
    CDSBuscaCpbte.CommandText :=
      'select Fecha,NroCpbte,''S/N'' as Codigo ,Detalle as Nombre, Importe as Total, id as id_fc,''N'' as Anulado,TipoCpbte from Anulacion_cheques where clasecpbte=' + ''''
      + ComboCpbte.text + '''' +' and sucursal ='+ IntToStr(sucursal)+ ' Order By NroCpbte desc';
  //Anulacion de ordenes de Pago
  IF tag = 23 THEN
    BEGIN
      IF cbClientes.Checked = True THEN
        CDSBuscaCpbte.CommandText :=
          'select Fecha,NroCpbte, Codigo, Nombre, Total ,id_Anulaion as id_fc,''N'' as Anulado,TipoCpbte from Anulacion_OPago where clasecpbte=' + ''''
          + comboCpbte.text + '''' +
          ' and Codigo=' + '''' + ComboCliente.Text + '''' +' and sucursal ='+ IntToStr(sucursal) + ' Order By Fecha desc,nrocpbte desc'
      ELSE
        CDSBuscaCpbte.CommandText :=
          'select Fecha,NroCpbte, Codigo, Nombre, Total ,id_Anulacion as id_fc,''N'' as Anulado,TipoCpbte from Anulacion_OPago where clasecpbte=' + ''''
          + combocpbte.text + '''' +' and sucursal ='+ IntToStr(sucursal) + ' Order By Fecha desc,nrocpbte desc';
    END;
  //Anulacion de Recibos
  IF tag = 24 THEN
    BEGIN
      IF cbClientes.Checked = True THEN
        CDSBuscaCpbte.CommandText :=
          'select Fecha,NroCpbte, Codigo, Nombre, Total ,id_Anulacion as id_fc,''N'' as Anulado,TipoCpbte from Anulacion_Recibo where clasecpbte=' + ''''
          + comboCpbte.text + '''' +
          ' and Codigo=' + '''' + ComboCliente.Text + '''' +' and sucursal ='+ IntToStr(sucursal) + ' Order By Fecha desc,nrocpbte desc'
      ELSE
        CDSBuscaCpbte.CommandText :=
          'select Fecha,NroCpbte, Codigo, Nombre, Total ,id_Anulacion as id_fc,''N'' as Anulado,TipoCpbte from Anulacion_Recibo where clasecpbte=' + ''''
          + combocpbte.text + '''' +' and sucursal ='+ IntToStr(sucursal) + ' Order By Fecha desc,nrocpbte desc';
    END;

  IF tag = 25 THEN // Ajustes de Nros de Serie
    BEGIN
      CDSBuscaCpbte.CommandText :=
        'select r.fecha,r.NroCpbte, ''S/N'' as Codigo, r.obs as Nombre,0.00 as Total,id as id_fc,''N'' as Anulado,TipoCpbte from AJUSTE_NRO_SERIES r ' +
        'where  ClaseCpbte=' + '''' + ComboCpbte.Text + '''' +' and sucursal ='+ IntToStr(sucursal) + ' Order By NroCpbte';
    END;

  // Anulacion Adelantos de Sueldo
  IF tag = 26 THEN
    BEGIN
      IF cbClientes.Checked = True THEN
        CDSBuscaCpbte.CommandText :=
          'select fecha,NroCpbte, Codigo, Nombre, importe as Total,id as id_fc,''N'' as Anulado,TipoCpbte  from Anulacion_Adelantos_Sueldo where Clasecpbte=' + ''''
          + ComboCpbte.text + '''' +
          ' and Codigo=' + '''' + ComboCliente.Text + '''' + ' and sucursal ='+ IntToStr(sucursal) +' Order By NroCpbte desc'
      ELSE
        CDSBuscaCpbte.CommandText :=
          'select fecha,NroCpbte, Codigo, Nombre, importe as Total,id as id_fc,''N'' as Anulado,TipoCpbte from Anulacion_adelantos_sueldo where Clasecpbte=' + ''''
          + ComboCpbte.text + '''' +' and sucursal ='+ IntToStr(sucursal) + ' Order By NroCpbte desc';
    END;

  // Remitos de Obra
  IF tag = 27 THEN
    BEGIN
      IF cbClientes.Checked = True THEN
        CDSBuscaCpbte.CommandText :=
          'select r.fecha,r.NroCpbte, cast(r.codigo as varchar(6)) as Codigo, o.detalle as Nombre, r.Total,r.id_rto as id_fc,''N'' as Anulado,TipoCpbte from Rto_ObraCab r '+
          ' left join obras o on o.codigo = r.codigo '+
          ' where Clasecpbte=' + '''' + ComboCpbte.text + '''' +
          ' and Codigo=' + '''' + ComboCliente.Text + '''' + ' and sucursal ='+ IntToStr(sucursal) +' Order By NroCpbte desc'
      ELSE
        CDSBuscaCpbte.CommandText :=
          'select r.fecha,r.NroCpbte, cast(r.codigo as varchar(6)) as Codigo, o.detalle as Nombre, r.Total,r.id_rto as id_fc,''N'' as Anulado,TipoCpbte from Rto_ObraCab r '+
          ' left join obras o on o.codigo = r.codigo '+
          ' where Clasecpbte=' + ''''+ ComboCpbte.text + '''' +
          ' and sucursal ='+ IntToStr(sucursal) + ' Order By NroCpbte desc';
    END;


  IF tag = 28 THEN  // Envio Stock En Garantia (RMA)
    begin
      IF cbClientes.Checked = True THEN
        CDSBuscaCpbte.CommandText :=
          'select g.FechaEnvio as fecha,g.NroCpbte, g.proveedor as Codigo, p.Nombre,0.00 as Total ,g.id_rto as id_fc,''N'' as Anulado,TipoCpbte from RTOGTIA_ENVIO_CAB g '+
          'left join Poveedor p on p.codigo=g.proveedor '+
          'where g.Clasecpbte=' + '''' + ComboCpbte.text + '''' + 'and g.letra = '+''''+letra+''''+
          ' and g.proveedor=' + '''' + ComboCliente.Text + '''' +' and g.sucursal ='+ IntToStr(sucursal) +'and g.letra = '+''''+letra+''''+
          ' Order By g.NroCpbte desc'
      ELSE
        CDSBuscaCpbte.CommandText :=
          'select g.FechaEnvio as Fecha,g.NroCpbte, g.proveedor as Codigo, p.Nombre,0.00 as Total ,g.id_rto as id_fc,''N'' as Anulado,TipoCpbte from RTOGTIA_ENVIO_CAB g '+
          'left join Poveedor p on p.codigo=g.proveedor '+
          ' where g.clasecpbte=' + '''' + ComboCpbte.text + '''' +' and g.sucursal ='+ IntToStr(sucursal) + 'and g.letra = '+''''+letra+''''+
          ' Order By g.NroCpbte desc';
    end;
 //Ticket Ventas
  IF Tag = 29 THEN
    BEGIN
      IF cbClientes.Checked = True THEN
        CDSBuscaCpbte.CommandText :=
          'select FechaVta as fecha,NroCpbte, Codigo, Nombre, Total,id_fc,''N'' as Anulado,TipoCpbte  from fcvtacab where Clasecpbte=' + ''''
          + ComboCpbte.text + '''' + 'and letrafac = '+''''+letra+''''+
          ' and Codigo=' + '''' + ComboCliente.Text + '''' + ' and sucursal ='+ IntToStr(sucursal) +' Order By NroCpbte desc'
      ELSE
        CDSBuscaCpbte.CommandText :=
          'select FechaVta as fecha,NroCpbte, Codigo, Nombre, Total,id_fc,''N'' as Anulado,TipoCpbte from fcvtacab where Clasecpbte=' + ''''
          + ComboCpbte.text + '''' +' and sucursal ='+ IntToStr(sucursal) +' and letrafac = '+''''+letra+'''' +' Order By NroCpbte desc';
    END;
  //Nota de Pedido de Clientes
  IF tag = 30 THEN
    BEGIN
      IF cbClientes.Checked = True THEN
        CDSBuscaCpbte.CommandText :=
          'select FechaPedido as fecha,NroCpbte, Codigo, Nombre, Total,id as id_fc,estado as Anulado,TipoCpbte from NPedidoCab_Cliente where Clasecpbte=' + ''''
          + ComboCpbte.text + '''' + 'and letranp = '+''''+letra+''''+
          ' and Codigo=' + '''' + ComboCliente.Text + '''' + ' and sucursal ='+ IntToStr(sucursal) +' Order By FechaPedido desc,NroCpbte desc'
      ELSE
        CDSBuscaCpbte.CommandText :=
          'select FechaPedido as fecha,NroCpbte, Codigo, Nombre, Total,id as id_fc,estado as Anulado,TipoCpbte from NPedidoCab_Cliente where Clasecpbte=' + ''''
          + ComboCpbte.text + '''' +' and sucursal ='+ IntToStr(sucursal) + ' Order By FechaPedido desc,NroCpbte desc';
    END;

   IF Tag = 31 THEN //Reemplazo de Valores
    begin
      CDSBuscaCpbte.CommandText :=
        'select Fecha,NroCpbte, ''S/N'' as Codigo, ''Reemplazo Valores'' as Nombre, Importe as Total,id as id_fc,''N'' as Anulado,TipoCpbte from REEMPLAZO_VALORES_INGRESADOS where ClaseCpbte=' + ''''
        + ComboCpbte.text + '''' +' and sucursal ='+ IntToStr(sucursal)+ ' Order By NroCpbte';
    end;

   IF Tag = 32 THEN //Valores Compartida
    begin
      CDSBuscaCpbte.CommandText :=
        'select Fecha,NroCpbte, Codigo, Nombre, Importe as Total,id as id_fc,''N'' as Anulado,TipoCpbte from CHEQUE_COMPARTIDO where ClaseCpbte=' + ''''
        + ComboCpbte.text + '''' +' and sucursalventa ='+ IntToStr(sucursal)+ ' Order By NroCpbte';
    end;

//        'select Fecha,NroCpbte, ''S/N'' as Codigo, Cast(obs as varchar(50)) as Nombre, Importe as Total,id as id_fc from REEMPLAZO_VALORES_INGRESADOS where ClaseCpbte=' + ''''
//        + ComboCpbte.text + '''' +' and sucursal ='+ IntToStr(sucursal)+ ' Order By NroCpbte';

  //Remitos Marketing
  IF tag = 33 THEN
    BEGIN
      IF cbClientes.Checked = True THEN
        CDSBuscaCpbte.CommandText :=
          'select FechaVta as fecha,NroCpbte, Codigo, Nombre, VtaTotal as Total,id_rto as id_fc,''N'' as Anulado,TipoCpbte  from Rtocab_mkt where Clasecpbte=' + ''''
          + ComboCpbte.text + '''' +
          ' and Codigo=' + '''' + ComboCliente.Text + '''' + ' and sucursal ='+ IntToStr(sucursal) + ' and letrarto =' +''''+ Letra + ''''+  ' Order By FechaVta desc, NroCpbte desc'
      ELSE
        CDSBuscaCpbte.CommandText :=
          'select FechaVta as fecha,NroCpbte, Codigo, Nombre, VtaTotal as Total,id_rto as id_fc,''N'' as Anulado,TipoCpbte from rtocab_mkt where Clasecpbte=' + ''''
          + ComboCpbte.text + '''' +' and sucursal ='+ IntToStr(sucursal) + ' and letrarto =' + '''' + Letra + '''' + ' Order By FechaVta desc, NroCpbte desc';
    END;

   IF Tag = 34 THEN //Chques anulados
   begin
      CDSBuscaCpbte.CommandText :=
        'select a.Fecha,a.NroCpbte, ''S/N'' as Codigo, a.detalle as Nombre, ch.importe as Total,a.id as id_fc,''N'' as Anulado,a.TipoCpbte '+
        'from CHEQUES_ANULDOS a '+
        'left join cheque_propio ch on ch.id_cheque_pro=a.id_cheque '+
        'where a.ClaseCpbte=' + ''''
        + ComboCpbte.text + '''' +' and a.sucursal ='+ IntToStr(sucursal)+ ' Order By a.NroCpbte';
    end;

  IF Tag = 35 THEN
    BEGIN
      IF cbClientes.Checked = True THEN
        CDSBuscaCpbte.CommandText :=
          'select fecha,NroCpbte, Codigo, Nombre, total_operacion as Total,id_lq as id_fc,''N'' AS anulado,TipoCpbte from LIQGRANOS_CAB where Clasecpbte=' + ''''
          + ComboCpbte.text + '''' + 'and letrafac = '+''''+letra+''''+ ' and tipocpbte = '+''''+TipoCpbte+'''' +
          ' and Codigo=' + '''' + ComboCliente.Text + '''' + ' and sucursal ='+ IntToStr(sucursal) +' Order By FechaVta desc ,NroCpbte desc'
      ELSE
        CDSBuscaCpbte.CommandText :=
          'select fecha,NroCpbte, Codigo, Nombre, total_operacion as Total,id_lq as id_fc,''N'' as anulado,TipoCpbte from LIQGRANOS_CAB where Clasecpbte=' + ''''
          + ComboCpbte.text + '''' + ' and tipocpbte = '+''''+TipoCpbte+'''' +' and sucursal ='+ IntToStr(sucursal) +' and letrafac = '+''''+letra+''''  +' Order By Fecha desc,NroCpbte desc';
    END;


  if Tag=18 then
    begin
      if CDSBuscaCpbte.Fields.FindField('ARCHIVADA')=nil Then
        begin
          // Creacion de Campo en Ejecucion...
          NewField:=TStringField.Create(self);
          NewField.FieldName  := 'ARCHIVADA';
          NewField.FieldKind  := fkData;
          NewField.Name       := CDSBuscaCpbte.Name+NewField.FieldName;
          NewField.DataSet    := CDSBuscaCpbte;
          NewField.Visible    := False;
          CDSBuscaCpbte.FieldDefs.Update;
        end;
    end;

  CDSBuscaCpbte.Open;

  if Not(CDSBuscaCpbte.IsEmpty) then
    CDSBuscaCpbte.First;
  dbgConsulta.Width:=dbgConsulta.Width + 1;
  dbgConsulta.Width:=dbgConsulta.Width - 1;
  dbgConsulta.Columns[0].DisplayName := 'Fecha';
  dbgConsulta.Columns[1].DisplayName := 'Tipo';
  dbgConsulta.Columns[2].DisplayName := 'Nro.Cpbte';
  dbgConsulta.Columns[3].DisplayName := 'Codigo';
  dbgConsulta.Columns[4].DisplayName := 'Nombre';
  dbgConsulta.Columns[5].DisplayName := 'Total';
  IF Assigned(dbgConsulta.Fields[6]) THEN
    dbgConsulta.Fields[6].Visible := false;
  TNumericField(dbgConsulta.Fields[5]).DisplayFormat := ',0.00';
  if (Tag=4) or (Tag=400) then
    TStringField(dbgConsulta.Fields[2]).EditMask := 'a-####-########-##;0'
  else
    TStringField(dbgConsulta.Fields[2]).EditMask := 'a-####-########;0';


  if Tag=18 then
    begin
      if CDSBuscaCpbte.Filter='' then
        CDSBuscaCpbte.Filter   := 'Archivada = ''N'' ';
      CDSBuscaCpbte.Filtered := chOTActivas.Checked;
    end;

  if FormBuscaCpbte<>nil then
    dbgConsulta.SetFocus;
 END;

PROCEDURE TFormBuscaCpbte.CancelarExecute(Sender: TObject);
BEGIN
  Id_Rec := -1;
  Close;
END;

PROCEDURE TFormBuscaCpbte.AceptarExecute(Sender: TObject);
BEGIN
  IF (CDSBuscaCpbte.Fields[5].AsString<>'') and (NOT (VarIsNull(CDSBuscaCpbte.Fields[5].Value))) THEN
    Id_Rec := CDSBuscaCpbte.Fields[5].Value
  else
    Id_Rec:=-1;
  ClaseCpbte:=ComboCpbte.Text;
  if CDSBuscaCpbte.Fields[6].AsString<>'' then
    begin
      TipoCpbteElegido:=CDSBuscaCpbte.Fields[6].Value;
      TipoCpbte       :=CDSBuscaCpbte.Fields[6].Value;
    end;

  Close;
END;

PROCEDURE TFormBuscaCpbte.BuscarClienteExecute(Sender: TObject);
var QTem:TFDQuery;
BEGIN
  QTem            := TFDQuery.Create(nil);
  QTem.Connection := DMMain_FD.fdcGestion;
  CDSClientes.Close;
  CDSClientes.CommandText:='';
  IF (Tag = 0) OR (Tag = 2) OR (Tag = 4) OR (Tag = 6) OR (tag = 13) or (tag=18) or (tag=24) or (tag=29) or (tag=30) or (tag=32) or (tag=33) or (tag=35) or (tag=400) THEN {Ventas/Recibos/Presupuestos/Orden de Trabajo}
    CDSClientes.CommandText:='select Codigo,Nombre from Clientes order by Nombre'
  ELSE
    IF (Tag = 1) OR (Tag = 3) or (tag = 14) or (tag=15) or (tag=21) or (tag=23) or (tag=28) THEN {Compras/OPago}
      CDSClientes.CommandText:='select Codigo,Nombre from Poveedor order by Nombre'
    ELSE
      IF (Tag = 5) THEN {Egresos}
        CDSClientes.CommandText:='select Codigo,Detalle as Nombre from gastos_cuentas order by Detalle'
      else
        IF (Tag = 7) or (Tag =26 ) THEN {Adelantos de Sueldo,Anulaciones}
          CDSClientes.CommandText:='select Codigo,Nombre from personal order by nombre'
        else
          IF (Tag = 27)  THEN {Adelantos de Sueldo,Anulaciones}
            CDSClientes.CommandText:='select Codigo,detalle as Nombre from Obras order by Detalle';

  CDSClientes.Open;

  ComBuscador.Execute;
  if ComBuscador.rOk=True then
    begin
      ComboCliente.Text     := ComBuscador.Id;
      IF (Tag = 0) OR (Tag = 2) OR (Tag = 4) OR (Tag = 6) OR (tag = 13) or (tag=18) or (tag=24) or (tag=29) or (tag=30) or (tag=32) or (tag=33) or (tag=35) or (tag=400) THEN {Ventas/Recibos/Presupuestos/Orden de Trabajo}
        QTem.Open('select Nombre from Clientes where codigo='+''''+ComboCliente.Text+'''')
      else
        IF (Tag = 1) OR (Tag = 3) or (tag = 14) or (tag=15) or (tag=21) or (tag=23) or (tag=28) THEN {Compras/OPago}
          QTem.Open('select Nombre from Poveedor where codigo='+''''+ComboCliente.Text+'''')
        else
         IF (Tag = 5) THEN {Egresos}
           QTem.Open('select Detalle from gastos_cuentas where codigo='+''''+ComboCliente.Text+'''')
         else
           IF (Tag = 7) or (Tag =26 ) THEN {Adelantos de Sueldo,Anulaciones}
             QTem.Open('select Nombre from personal where codigo='+''''+ComboCliente.Text+'''')
           else
             IF (Tag = 27)  THEN {Adelantos de Sueldo,Anulaciones}
              QTem.Open('select detalle from Obras where codigo='+''''+ComboCliente.Text+'''');


      dbeMuestraCliente.Text:=QTem.Fields[0].AsString;
    end;
 FreeAndNil(QTem);
  Listar.Execute;
END;

PROCEDURE TFormBuscaCpbte.ComboClienteKeyPress(Sender: TObject;
  VAR Key: Char);
BEGIN
  IF Key = #13 THEN
    BEGIN
      ComboCliente.Text := Copy('000000', 1, 6 - Length(ComboCliente.Text)) +
        ComboCliente.Text;
      CDSClientes.Close;
      CDSClientes.CommandText:='';
      IF (tag = 0) OR (tag = 2) OR (tag = 4) OR (tag = 400) OR (tag = 13) or (tag=18) or (tag=24) or (tag=29) or (tag=30) or (tag=32) or (tag=33) or (tag=6) then
        CDSClientes.CommandText:='select Codigo,Nombre from Clientes where Codigo=:Codigo'
      ELSE
        IF (Tag = 1) OR (Tag = 3) or (tag = 14) or (tag=15) or (tag=21) or (tag=23) or (tag=28) THEN
          CDSClientes.CommandText:='select Codigo,Nombre from poveedor where Codigo=:Codigo'
        ELSE
          IF (Tag = 5) THEN
            CDSClientes.CommandText:='select Codigo,Detalle as Nombre from gastos_Cuentas where codigo=:Codigo'
          else
            IF (Tag = 7) or (tag =26) THEN
              CDSClientes.CommandText:='select Codigo,Nombre from personal where codigo=:Codigo'
            else
              IF (Tag = 27) THEN
                CDSClientes.CommandText:='select Codigo,Detalle as Nombre from Obras where codigo=:Codigo';
      CDSClientes.Params.ParamByName('Codigo').Value := ComboCliente.Text;
      CDSClientes.Open;
      Listar.Execute;
    END;
END;

procedure TFormBuscaCpbte.CDSBuscaCpbteCalcFields(DataSet: TDataSet);
begin
  case CDSBuscaCpbteANULADO.AsString[1] of
    'N':CDSBuscaCpbteMUESTRAESTADO.Value:='';
    'S':CDSBuscaCpbteMUESTRAESTADO.Value:='Anulado';
    'A':CDSBuscaCpbteMUESTRAESTADO.Value:='Autarizado';
    'R':CDSBuscaCpbteMUESTRAESTADO.Value:='Cumpl.Recibi.';
    'C':CDSBuscaCpbteMUESTRAESTADO.Value:='Cancelada';
    '0':CDSBuscaCpbteMUESTRAESTADO.Value:='Presupuesto';
    '1':CDSBuscaCpbteMUESTRAESTADO.Value:='Aceptado';
    '2':CDSBuscaCpbteMUESTRAESTADO.Value:='Reparado';
    '3':CDSBuscaCpbteMUESTRAESTADO.Value:='Reclamo';
    '4':CDSBuscaCpbteMUESTRAESTADO.Value:='Garantia';
    '5':CDSBuscaCpbteMUESTRAESTADO.Value:='No Aceptada';
    '6':CDSBuscaCpbteMUESTRAESTADO.Value:='Sin Reparacio';
    '7':CDSBuscaCpbteMUESTRAESTADO.Value:='Retirada';
    '8':CDSBuscaCpbteMUESTRAESTADO.Value:='Finalizada';
    'I':CDSBuscaCpbteMUESTRAESTADO.Value:='Iniciada';
    'P':CDSBuscaCpbteMUESTRAESTADO.Value:='En Produccion';
    'F':CDSBuscaCpbteMUESTRAESTADO.Value:='Finalizada';
  end;
  if Tag=4 then
    begin
      if CDSBuscaCpbteANULADO.AsString[1]= 'N' Then
        CDSBuscaCpbteMUESTRAESTADO.Value:='Sin Confirmación..'
      else CDSBuscaCpbteMUESTRAESTADO.Value:='Presupuesto Aceptado';
    end else
  if Tag=17 then
    begin
      if CDSBuscaCpbteANULADO.AsString[1]= 'R' Then
        CDSBuscaCpbteMUESTRAESTADO.Value:='En Revision';
    end else
  if Tag=19 then
    begin
      if CDSBuscaCpbteANULADO.AsString[1]= 'N' Then
        CDSBuscaCpbteMUESTRAESTADO.Value:='Nueva'
      else
        if CDSBuscaCpbteANULADO.AsString[1]= 'A' Then
          CDSBuscaCpbteMUESTRAESTADO.Value:='Anulada'
        else
          if CDSBuscaCpbteANULADO.AsString[1]= 'P' Then
            CDSBuscaCpbteMUESTRAESTADO.Value:='Procesada';
    end
  else
  if Tag=30 then
    begin
      case CDSBuscaCpbteANULADO.AsString[1] of
        'N':CDSBuscaCpbteMUESTRAESTADO.Value := '';
        'C':CDSBuscaCpbteMUESTRAESTADO.Value := 'Cumplido';
        'A':CDSBuscaCpbteMUESTRAESTADO.Value := 'Anulado';
        'P':CDSBuscaCpbteMUESTRAESTADO.Value := 'C/Pendietes';
        'X':CDSBuscaCpbteMUESTRAESTADO.Value := 'Vencida';

      end;
    end;
end;

procedure TFormBuscaCpbte.chOTActivasClick(Sender: TObject);
begin
  CDSBuscaCpbte.Filtered:=(chOTActivas.Checked);
end;

PROCEDURE TFormBuscaCpbte.ComboClienteEnter(Sender: TObject);
BEGIN
  Text := '';
END;

PROCEDURE TFormBuscaCpbte.cbClientesClick(Sender: TObject);
BEGIN
  if cbClientes.Checked = False then
    begin
      ComboCliente.Clear;
      dbeMuestraCliente.Clear;
    end;
  ComboCliente.Enabled := cbClientes.Checked = True;
  Listar.Execute;
END;

PROCEDURE TFormBuscaCpbte.FormShow(Sender: TObject);
VAR A:Char;
BEGIN
  chOTActivas.Visible:=Tag=18;

  pnCliente.Visible:= True;
  IF Tag in [1,3,14,15,21,23,28] THEN
    cbClientes.Caption := 'Filtra por Proveedores'
  ELSE
    IF Tag in [7,26] THEN
        cbClientes.Caption := 'Filtra por Empleados'
    else
      IF Tag in [5] THEN
         cbClientes.Caption := 'Filtra por Cuentas'
      else
        if (tag in [0,2,4,6,13,24,29,30,32,33,18]) or (Tag=400) Then
          cbClientes.Caption := 'Filtra por Clientes'
        else
          if tag in[27] Then
            cbClientes.Caption := 'Filtra por Obras'
          else
            pnCliente.Visible:= False;
//  Segun el tipo de Comprobante traigo el listado que viene por el paramamtero de TipoCpbte1
    begin
      a:=#13;
      if TipoCpbte1<>TipoCpbte then
        begin
          TipoCpbte:=TipoCpbte1;
          QBuscarClaseCpbte.Close;
          QBuscarClaseCpbte.ParamByName('tipo').Value    :=TipoCpbte1;
          QBuscarClaseCpbte.ParamByName('sucursal').Value:=Sucursal;
          CASE Tag OF
            0, 2, 4, 6, 8,10,11,12,13,14,17,18,19,20,24,25,27,28,29,30,31,32,33,400: QBuscarClaseCpbte.ParamByName('compra_venta').Value := 'V';
            1, 3, 5, 7, 9, 15, 16, 21, 22, 23, 26,34: QBuscarClaseCpbte.ParamByName('compra_venta').Value := 'C';
          END;
          QBuscarClaseCpbte.Open;
          if Tag=0 then
            begin

            end;

          Letra                    :=QBuscarClaseCpbteLETRA.Value;
          ComboCpbte.Text          :=QBuscarClaseCpbteCLASE.Value;
          edMuestraComprobante.Text:=QBuscarClaseCpbteNOMBRE.Value;
          QBuscarClaseCpbte.Close;
        end
      else
        begin
          ComboCpbte.Text := ClaseCpbte;
          edLetra.Text    := Letra;
        end;
      ComboCpbteKeyPress(Sender,a);
      //Listar.Execute;
    end;
  Qsucursal.Close;
  Qsucursal.ParamByName('suc').Value:=Sucursal;
  Qsucursal.Open;
  BringToFront;
END;

procedure TFormBuscaCpbte.dbgConsultaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if tag=0 Then //Facturas
    begin
      if (CDSBuscaCpbte.FieldByName('Anulado').Value='S') then
        begin
         dbgConsulta.canvas.Font.Style  := [fsStrikeOut];
         dbgConsulta.canvas.Font.color  := clMaroon;
        end;
      if (gdSelected in State) then
       begin
         if (CDSBuscaCpbte.FieldByName('Anulado').Value='S') then
           dbgConsulta.canvas.Font.Style  := [fsStrikeOut];
         dbgConsulta.canvas.brush.color := ClBlack;
         dbgConsulta.canvas.Font.color  := clWhite;
       end;
    end
  else
    if tag=1 Then //Facturas Compra
      begin
        if (CDSBuscaCpbte.FieldByName('Anulado').AsString='C') then
          begin
           dbgConsulta.canvas.Font.Style  := [TFontStyle.fsStrikeOut];
           dbgConsulta.canvas.Font.color  := clMaroon;
          end;
        if (gdSelected in State) then
         begin
           if (CDSBuscaCpbte.FieldByName('Anulado').AsString='C') then
             dbgConsulta.canvas.Font.Style  := [fsUnderline];
           dbgConsulta.canvas.brush.color := ClBlack;
           dbgConsulta.canvas.Font.color  := clWhite;
         end;
      end
    else
     if tag=6 Then //Remitos Ventas
      begin
        if (CDSBuscaCpbte.FieldByName('Anulado').AsString='S') then
          begin
           dbgConsulta.canvas.Font.Style  := [TFontStyle.fsStrikeOut];
           dbgConsulta.canvas.Font.color  := clMaroon;
          end;
        if (gdSelected in State) then
         begin
           if (CDSBuscaCpbte.FieldByName('Anulado').AsString='N') then
             dbgConsulta.canvas.Font.Style  := [];
           dbgConsulta.canvas.brush.color := ClBlack;
           dbgConsulta.canvas.Font.color  := clWhite;
         end;
      end
    else

    if tag=15 Then //O de COmpras
      begin
        if (CDSBuscaCpbte.FieldByName('Anulado').Value='C') or (CDSBuscaCpbte.FieldByName('Anulado').Value='V') then //anulada - cancelada
          begin
           dbgConsulta.canvas.Font.Style  := [fsStrikeOut];
           dbgConsulta.canvas.Font.color  := clMaroon;
          end
        else
          if (CDSBuscaCpbte.FieldByName('Anulado').Value='A') then // autorizada
            begin
             dbgConsulta.canvas.Font.Style  := [fsBold];
             dbgConsulta.canvas.Font.color  := clBlue;
            end
          else
            if (CDSBuscaCpbte.FieldByName('Anulado').Value='R') then // Cumplida Recibida
              begin
               dbgConsulta.canvas.Font.Style  := [fsBold];
               dbgConsulta.canvas.Font.color  := clGreen;
              end;
        if (gdSelected in State) then
          begin
            dbgConsulta.canvas.brush.color := ClBlack;
            dbgConsulta.canvas.Font.color  := clWhite;
          end;
      end
    else

    if tag=30 Then //Nota Pedido Cllientes
      begin
        if (CDSBuscaCpbte.FieldByName('Anulado').Value='A') then //anulada - cancelada
          begin
           dbgConsulta.canvas.Font.Style  := [fsStrikeOut];
           dbgConsulta.canvas.Font.color  := clMaroon;
          end
        else
          if (CDSBuscaCpbte.FieldByName('Anulado').Value='X') then //anulada - cancelada
            begin
             dbgConsulta.canvas.Font.Style  := [];
             dbgConsulta.canvas.Font.color  := clMaroon;
            end
         else

          if (CDSBuscaCpbte.FieldByName('Anulado').Value='P') then // autorizada
            begin
             dbgConsulta.canvas.Font.Style  := [fsBold];
             dbgConsulta.canvas.Font.color  := clBlue;
            end
          else
            if (CDSBuscaCpbte.FieldByName('Anulado').Value='C') then // Cumplida Recibida
              begin
               dbgConsulta.canvas.Font.Style  := [fsBold];
               dbgConsulta.canvas.Font.color  := clGreen;
              end;
        if (gdSelected in State) then
          begin
            dbgConsulta.canvas.brush.color := ClBlack;
            dbgConsulta.canvas.Font.color  := clWhite;
          end;
      end
    else

      if (tag=4) or (tag=400) Then //Presupuestos
        begin
          if (CDSBuscaCpbte.FieldByName('Anulado').Value='N')  then //Iniciada
            begin
             dbgConsulta.canvas.Font.Style  := [fsBold];
             dbgConsulta.canvas.Font.color  := clBlue;
            end
          else
            if (CDSBuscaCpbte.FieldByName('Anulado').Value<>'N') then // Finalizada
              begin
                dbgConsulta.canvas.Font.Style  := [];
                dbgConsulta.canvas.Font.color  := clBlack;
              end;
          if (gdSelected in State) then
            begin
               dbgConsulta.canvas.brush.color := ClBlack;
               dbgConsulta.canvas.Font.color  := clWhite;
             end;
        end
      else
      if tag=17 Then //O de Produccion
        begin
          if (CDSBuscaCpbte.FieldByName('Anulado').Value<>null) Then
            begin
              if (CDSBuscaCpbte.FieldByName('Anulado').Value='I')  then //Iniciada
                begin
                 dbgConsulta.canvas.Font.Style  := [fsBold];
                 dbgConsulta.canvas.Font.color  := clBlue;
                end
              else
                if (CDSBuscaCpbte.FieldByName('Anulado').Value='P') then // Produccion
                  begin
                   dbgConsulta.canvas.Font.Style  := [fsBold];
                   dbgConsulta.canvas.Font.color  := clGreen;
                  end
                else
                 if (CDSBuscaCpbte.FieldByName('Anulado').Value='F') then // Finalizada
                    begin
                     dbgConsulta.canvas.Font.Style  := [];
                     dbgConsulta.canvas.Font.color  := clBlack;
                    end
                 else
                   if (CDSBuscaCpbte.FieldByName('Anulado').Value='A') then // Anulada
                      begin
                       dbgConsulta.canvas.Font.Style  := [fsStrikeOut];
                       dbgConsulta.canvas.Font.color  := clBlack;
                      end
                   else
                     if (CDSBuscaCpbte.FieldByName('Anulado').Value='R') then // RevisionAnulada
                        begin
                         dbgConsulta.canvas.Font.Style  := [fsUnderline];
                         dbgConsulta.canvas.Font.color  := clMaroon;
                        end
                     else
                       begin
                         dbgConsulta.canvas.Font.Style  := [];
                         dbgConsulta.canvas.Font.color  := clBlack;
                       end ;

              if (gdSelected in State) then
                begin
                  dbgConsulta.canvas.brush.color := clBlue;
                  dbgConsulta.canvas.Font.color  := clWhite;
                 end;
            end
          else
            begin
              dbgConsulta.canvas.brush.color := ClBlack;
              dbgConsulta.canvas.Font.color  := clWhite;
            end;
        end
      else
        if tag=18 Then //O de Trabajo
          begin
             if (CDSBuscaCpbte.FieldByName('Anulado').Value='7') or (CDSBuscaCpbte.FieldByName('Anulado').Value='8') then //anulada - cancelada
              begin
               dbgConsulta.canvas.Font.Style  := [];
               dbgConsulta.canvas.Font.color  := clBlack;
              end
            else
              if (CDSBuscaCpbte.FieldByName('Anulado').Value='6')  then //Sin Reparacion
                begin
                 dbgConsulta.canvas.Font.Style  := [fsBold];
                 dbgConsulta.canvas.Font.color  := clMaroon;
                end
              else
                if (CDSBuscaCpbte.FieldByName('Anulado').Value='5')  then //No Aceptado
                  begin
                   dbgConsulta.canvas.Font.Style  := [fsBold];
                   dbgConsulta.canvas.Font.color  := clPurple;
                  end
                else
                  if (CDSBuscaCpbte.FieldByName('Anulado').Value='4')  then //Garantia
                    begin
                      dbgConsulta.canvas.Font.Style  := [fsBold];
                      dbgConsulta.canvas.Font.color  := clFuchsia;
                    end
                  else
                    if (CDSBuscaCpbte.FieldByName('Anulado').Value='3')  then //Reclamo
                      begin
                        dbgConsulta.canvas.Font.Style  := [fsBold];
                        dbgConsulta.canvas.Font.color  := clRed;
                      end
                    else
                      if (CDSBuscaCpbte.FieldByName('Anulado').Value='2') or (CDSBuscaCpbte.FieldByName('Anulado').Value='1')  then //Reparadao/aceptado
                        begin
                          dbgConsulta.canvas.Font.Style  := [fsBold];
                          dbgConsulta.canvas.Font.color  := clGreen;
                        end
                      else
                        begin
                          dbgConsulta.canvas.Font.Style  := [fsBold];
                          dbgConsulta.canvas.Font.color  := clBlue;
                        end;
            if (CDSBuscaCpbte.FieldByName('ARCHIVADA').Value='S') then //Reparadao/aceptado
              dbgConsulta.canvas.Brush.Color  := clMoneyGreen;

            if (gdFocused in State) then
               begin
                 dbgConsulta.canvas.brush.color := ClBlack;
                 dbgConsulta.canvas.Font.color  := clWhite;
               end;
          end
        else
        if tag=19 Then //Nota de Pedidos
          begin
            if (CDSBuscaCpbte.FieldByName('Anulado').Value<>null) Then
              begin
                if (CDSBuscaCpbte.FieldByName('Anulado').Value='P') then // Procesada
                    begin
                     dbgConsulta.canvas.Font.Style  := [];
                     dbgConsulta.canvas.Font.color  := clBlack;
                    end
                  else
                    if (CDSBuscaCpbte.FieldByName('Anulado').Value='N') then // Nueva
                      begin
                       dbgConsulta.canvas.Font.Style  := [fsBold];
                       dbgConsulta.canvas.Font.color  := clGreen;
                      end
                    else
                      if (CDSBuscaCpbte.FieldByName('Anulado').Value='A') then // Anulada
                        begin
                         dbgConsulta.canvas.Font.Style  := [fsStrikeOut];
                         dbgConsulta.canvas.Font.color  := clBlack;
                        end
                     else
                       begin
                         dbgConsulta.canvas.Font.Style  := [];
                         dbgConsulta.canvas.Font.color  := clBlack;
                       end ;

                 if (gdSelected in State) then
                   begin
                     dbgConsulta.canvas.brush.color := clBlue;
                     dbgConsulta.canvas.Font.color  := clWhite;
                   end;
              end
            else
              begin
                dbgConsulta.canvas.brush.color := ClBlack;
                dbgConsulta.canvas.Font.color  := clWhite;
              end;
          end;


    //Esta línea es nueva
    dbgConsulta.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormBuscaCpbte.dbgConsultaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 Then Aceptar.Execute
  else
  if Key=#27 Then Cancelar.Execute;

end;

procedure TFormBuscaCpbte.dbgConsultaTitleBtnClick(Sender: TObject; ACol: Integer;
  Field: TField);
var campo:string;
begin
 try
    Campo := Field.FieldName;
    with dbgConsulta.DataSource.DataSet as TClientDataSet do
      if IndexFieldNames <> Campo then
        IndexFieldNames := Campo // Ascendente
      else
      begin
        AddIndex(Campo, Campo, [], Campo); // Descendente
        IndexName := Campo;
      end;
  except // Para que no salte una excepción si la columna es un campo calculado.
  end;

end;

PROCEDURE TFormBuscaCpbte.FormCreate(Sender: TObject);
BEGIN
  AutoSize    := True;
 // JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;

  BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_buscador.ini');
  //*************************************************************
  Letra                     := BuscadorIni.ReadString('comprobante', 'Letra', '');
  TipoCpbte                 := BuscadorIni.ReadString('comprobante', 'Tipo', '');
  ClaseCpbte                := BuscadorIni.ReadString('comprobante', 'Clase', '');
  Sucursal                  := BuscadorIni.ReadInteger('comprobante', 'Sucursal', 0);
  edMuestraComprobante.Text := BuscadorIni.ReadString('comprobante', 'Denominacion', '');
  cbClientes.Checked        := BuscadorIni.ReadBool('comprobante', 'Filtra', False);
  ComboCliente.Text         := BuscadorIni.ReadString('comprobante', 'Cliente', '');
  dbeMuestraCliente.Text    := BuscadorIni.ReadString('comprobante', 'MuestraCliente','');
  chOTActivas.Checked       := BuscadorIni.ReadBool('comprobante', 'OTActivas', True);

  chOTActivas.Visible := Tag=18;

  BuscadorIni.Free;
END;

PROCEDURE TFormBuscaCpbte.BuscarCpbteExecute(Sender: TObject);
BEGIN
  if Not(Assigned(FormBuscadorTipoCpbte)) Then
    FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(self);
  
  //FormBuscadorTipoCpbte.ShowModal;
  CASE Tag OF
    0, 2, 4, 6, 8,10,11,12,13,14,17,18,19,20,24,25,27,28,29,30,31,32,33,35,400: FormBuscadorTipoCpbte.CV := 'V';
    1, 3, 5, 7, 9, 15, 16, 21, 22, 23, 26,34: FormBuscadorTipoCpbte.CV := 'C';
  END;
  FormBuscadorTipoCpbte.Sucursal     := Sucursal;
  FormBuscadorTipoCpbte.TipoCpbte1   := TipoCpbte1;
  FormBuscadorTipoCpbte.TipoCpbte2   := TipoCpbte2;
  FormBuscadorTipoCpbte.TipoCpbte3   := TipoCpbte3;

  FormBuscadorTipoCpbte.ShowModal;
  if FormBuscadorTipoCpbte.ModalResult=mrok Then
    begin
      Letra                     := FormBuscadorTipoCpbte.Letra;
      ComboCpbte.Text           := FormBuscadorTipoCpbte.ClaseCpbte;
      TipoCpbte                 := FormBuscadorTipoCpbte.TipoCpbte;
      ClaseCpbte                := FormBuscadorTipoCpbte.ClaseCpbte;
      edMuestraComprobante.Text := FormBuscadorTipoCpbte.Detalle;
      Sucursal                  := FormBuscadorTipoCpbte.Sucursal;
    END;

  Qsucursal.Close;
  Qsucursal.ParamByName('suc').Value:=Sucursal;
  Qsucursal.Open;
{
    end;
  QTipoComprob.Close;
  CASE Tag OF
    0, 2, 4, 6, 8,10,11,12,13,14,17,18,19,20,24,25,27,28: QTipoComprob.ParamByName('Compra_venta').Value := 'V';
    1, 3, 5, 7, 9, 15, 16, 21, 22, 23, 26: QTipoComprob.ParamByName('Compra_venta').Value := 'C';
  END;
  QTipoComprob.ParamByName('tipo1').Value:= TipoCpbte1;
  QTipoComprob.ParamByName('tipo2').Value:= TipoCpbte2;
  QTipoComprob.ParamByName('tipo3').Value:= TipoCpbte3;
  QTipoComprob.Open;
  IF BuscadorTipoComprob.Execute THEN
    BEGIN
      Letra                     := BuscadorTipoComprob.LookupTable.fieldbyName('Letra').AsString;
      ComboCpbte.Text           := BuscadorTipoComprob.LookupTable.FieldByName('Clase_comprob').Value;
      TipoCpbte                 := BuscadorTipoComprob.LookupTable.FieldByName('Tipo_comprob').Value;
      ClaseCpbte                := BuscadorTipoComprob.LookupTable.FieldByName('Clase_comprob').Value;
      edMuestraComprobante.Text := BuscadorTipoComprob.LookupTable.FieldByName('denominacion').Value;
      Sucursal                  := BuscadorTipoComprob.LookupTable.FieldByName('sucursal').Value;
    END;
  QTipoComprob.Close;

 }

  Listar.Execute;
END;

PROCEDURE TFormBuscaCpbte.ComboCpbteKeyPress(Sender: TObject;
  VAR Key: Char);
BEGIN
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      CDSTipoComprob.Close;
      CDSTipoComprob.Params.ParamByName('suc').Value:=Sucursal;
      CASE Tag OF
        0, 2, 4, 6, 8,10,11,12,13,14,17,18,19,20,24,25,27,28,29,30,32,33,400: CDSTipoComprob.Params.ParamByName('Compra_venta').Value := 'V';
        1, 3, 5, 7, 9, 15, 16, 21, 22, 23, 26, 34: CDSTipoComprob.Params.ParamByName('Compra_venta').Value := 'C';
      END;
//  esto es un error??    CDSTipoComprob.Params.ParamByName('tipo1').Value:= ComboCpbte.Text;
      CDSTipoComprob.Params.ParamByName('tipo1').Value:= TipoCpbte;
      CDSTipoComprob.Params.ParamByName('tipo2').Value:= '';
      CDSTipoComprob.Params.ParamByName('tipo3').Value:= '';
      CDSTipoComprob.Open;

      edLetra.SetFocus;

    END
  else
    IF Key = #27 THEN
      Cancelar.Execute;

  Listar.Execute;
END;


END.
