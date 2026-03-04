unit UFacturaProduccion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, Mask, DBCtrls, JvExControls,
  JvGradient, JvExDBGrids, JvDBGrid, Buttons,db, ActnList, System.Actions;

type
  TFormCpbte_Produccion = class(TForm)
    pnBase: TPanel;
    pnCabecera: TPanel;
    lbCodigo: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    edCodigo: TDBEdit;
    edDetalle: TDBEdit;
    pnPie: TPanel;
    dbgDetalle: TJvDBGrid;
    btSalir: TBitBtn;
    ActionList1: TActionList;
    BuscarArticulo: TAction;
    edCantidad: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btSalirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure dbgDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure dbgDetalleColEnter(Sender: TObject);
    procedure edCantidadExit(Sender: TObject);
  private
    { Private declarations }
    FCantidad:Extended;
    FCodigo:String;
  public
    { Public declarations }
  published
    property Cantidad:Extended read FCantidad write FCantidad;
    Property Codigo:String read FCodigo write FCodigo;

  end;

var
  FormCpbte_Produccion: TFormCpbte_Produccion;

implementation

uses DMventa, UBuscadorArticulos, DMVentaCtdo,UDMain_FD;
{$R *.dfm}

procedure TFormCpbte_Produccion.btSalirClick(Sender: TObject);
begin
  if dbgDetalle.DataSource.DataSet.State<>dsBrowse then
    dbgDetalle.DataSource.DataSet.Post;
  Close;
//  FormCpbte_Produccion.Visible:=False;
end;

procedure TFormCpbte_Produccion.BuscarArticuloExecute(Sender: TObject);
begin
  if (dbgDetalle.DataSource.State in [dsInsert,dsEdit]) then
    begin
      IF (Assigned(FormBuscadorArticulos)) THEN
        FreeAndNil(FormBuscadorArticulos);
      IF Not(Assigned(FormBuscadorArticulos)) THEN
        FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
      FormBuscadorArticulos.Param1:=1;
      FormBuscadorArticulos.Param2:=3;
      FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
      FormBuscadorArticulos.Esquema     :=-1;

      if TForm(Self.Owner).Name='FormCpbte_2' then
        FormBuscadorArticulos.ListaPrecio:=DatosVentas.CDSVentaCabLISTAPRECIO.Value
      else
        if TForm(Self.Owner).Name='FormCpbteCtdo_2' then
          FormBuscadorArticulos.ListaPrecio:=DatosVentasCtdo.CDSVentaCabLISTAPRECIO.Value;

      if FormBuscadorArticulos.Visible=False Then
        FormBuscadorArticulos.ShowModal;

      if (TForm(Self.Owner).Name='FormCpbte_2') and (FormBuscadorArticulos.Codigo<>'') Then
        begin
          DatosVentas.CDSFc_Prod_MovCODIGOSetText(DatosVentas.CDSFc_Prod_MovCODIGO,FormBuscadorArticulos.Codigo);
        end
      else
        if (TForm(Self.Owner).Name='FormCpbteCtdo_2') and (FormBuscadorArticulos.Codigo<>'') Then
          begin
            DatosVentasCtdo.CDSFc_Prod_MovCODIGOSetText(DatosVentasCtdo.CDSFc_Prod_MovCODIGO,FormBuscadorArticulos.Codigo);
          end
    end;
end;

procedure TFormCpbte_Produccion.dbgDetalleColEnter(Sender: TObject);
begin
  if FormCpbte_Produccion.dbgDetalle.SelectedIndex=1 then
    FormCpbte_Produccion.dbgDetalle.SelectedIndex:=2;
end;

procedure TFormCpbte_Produccion.dbgDetalleKeyPress(Sender: TObject;
  var Key: Char);
begin
 IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (dbgDetalle.SelectedIndex < 2) THEN
        dbgDetalle.SelectedIndex := dbgDetalle.SelectedIndex + 1
      ELSE
        BEGIN
          IF (dbgDetalle.DataSource.DataSet.Eof) THEN
            dbgDetalle.DataSource.DataSet.Append;
          dbgDetalle.SelectedIndex := 0;
        END;
    END
  ELSE
    IF (Key = #10) THEN
      BEGIN
        Key := #0;
        if Not(Assigned(FormBuscadorArticulos)) then
          begin
            IF (TForm(Self.Owner).Name='FormCpbte_2') and (dbgDetalle.SelectedField = DatosVentas.CDSFc_Prod_MovCODIGO) THEN
              BuscarArticulo.Execute
            else
              IF (TForm(Self.Owner).Name='FormCpbteCtdo_2') and (dbgDetalle.SelectedField = DatosVentasCtdo.CDSFc_Prod_MovCODIGO) THEN
                BuscarArticulo.Execute
          end;
      END;
end;

procedure TFormCpbte_Produccion.edCantidadExit(Sender: TObject);
begin
  btSalir.SetFocus;
end;

procedure TFormCpbte_Produccion.FormDestroy(Sender: TObject);
begin
  FormCpbte_Produccion:=nil;
end;

procedure TFormCpbte_Produccion.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (Key = #13) and
    (not (ActiveControl is Tbutton)) and
    (not (ActiveControl is TDBGrid))
    then
   begin
     perform(wm_nextdlgctl, 0, 0);
     key := #0;
   end
 else
   if Key=#27 then
     begin
       Key:=#0;
       if dbgDetalle.DataSource.DataSet.State<>dsBrowse then
         dbgDetalle.DataSource.DataSet.Post;
       FormCpbte_Produccion.Visible:=False;
     end;
end;

procedure TFormCpbte_Produccion.FormShow(Sender: TObject);
begin
  AutoSize:=True;
  edCantidad.SetFocus;
 // edCantidad.Text:= FormatFloat('0.00',Cantidad);
  edCantidad.SelectAll;
end;

end.
