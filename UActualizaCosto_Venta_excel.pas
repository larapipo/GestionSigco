unit UActualizaCosto_Venta_excel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, JvComponentBase, ImgList, DB,  
  ActnList, ComCtrls, JvExControls, JvGradient, Buttons, StdCtrls, ToolWin,
  ExtCtrls, Grids, DBGrids, ADODB, Mask, JvExMask, JvToolEdit, JvDBLookup,
  JvDBLookupComboEdit, JvFormPlacement, JvLabel, JvDBControls, SqlExpr,
  JvAppStorage, CompBuscador,JvAppIniStorage,
  System.Actions, Datasnap.DBClient, Datasnap.Provider, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList, AdvUtil, AdvObj,
  BaseGrid, AdvGrid, DBAdvGrid, Data.FMTBcd, JvWaitingGradient;

type
  TFormActualizaCostoVta_excel = class(TFormABMBase)
    edPath: TEdit;
    SpeedButton1: TSpeedButton;
    spAyudaFormato: TSpeedButton;
    pnAviso: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    DSStockXLS: TDataSource;
    OpenDialog: TOpenDialog;
    Label2: TLabel;
    chActualizaPrecioVta: TCheckBox;
    DSLista: TDataSource;
    dbclista: TJvDBLookupCombo;
    DSPListaPrecios: TDataSetProvider;
    CDSListaPrecios: TClientDataSet;
    CDSListaPreciosID: TIntegerField;
    CDSListaPreciosNOMBRE: TStringField;
    CDSListaPreciosF_PAGO: TIntegerField;
    spActualiza: TFDStoredProc;
    btImportar: TBitBtn;
    ToolButton1: TToolButton;
    edFecha: TDateTimePicker;
    Label3: TLabel;
    pbEstado: TProgressBar;
    btNovedades: TButton;
    chExcel2013: TCheckBox;
    JvDBStatusLabel1: TJvDBStatusLabel;
    mtStockXLS: TFDMemTable;
    stStockXLS: TAdvStringGrid;
    DBAdvGrid1: TDBAdvGrid;
    chUsaCodigoALternativo: TCheckBox;
    FDStoredProcPrueba: TFDStoredProc;
    QBuscaCodigoBarra: TFDQuery;
    QBuscaCodigoBarraMIN: TStringField;
    chBuscaPorEAN: TCheckBox;
    procedure spAyudaFormatoClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btImportarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CancelarExecute(Sender: TObject);
    procedure btNovedadesClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chUsaCodigoALternativoClick(Sender: TObject);
    procedure chBuscaPorEANClick(Sender: TObject);
  private
    { Private declarations }
  public
    lista:TStringList;
    { Public declarations }
  end;

var
  FormActualizaCostoVta_excel: TFormActualizaCostoVta_excel;

implementation

uses UDMain_FD,DMBuscadoresForm, UListCpbteNoImportados;

{$R *.dfm}

procedure TFormActualizaCostoVta_excel.btImportarClick(Sender: TObject);
var Codigo,Aux:String;
iniciar:boolean;
Costo,Precio:String;
begin
  inherited;
  Iniciar:=True;
  lista:=TStringList.Create;
  sbEstado.SimplePanel:=True;
  sbEstado.SimpleText:='';
  pbEstado.Min:=0;
  if mtStockXLS.RecordCount-1>0 then
    pbEstado.Max:=mtStockXLS.RecordCount-1;

  pbEstado.Position:=0;

  if (Not(chActualizaPrecioVta.Checked)) and
     (MessageDlg('Va actualizar Costos y NO LOS PRECIOS DE VTA... esta seguro???',mtWarning,mbYesNo,0,mbNo)=mrNo) then
   Iniciar:=False;

  if Iniciar then
    begin
      mtStockXLS.First;
      while not mtStockXLS.Eof do
        begin

          if pbEstado.Position<pbEstado.Max then
            pbEstado.Position:=pbEstado.Position+1;
          sbEstado.SimpleText:='Reg:'+IntToStr(pbEstado.Position)+'/'+IntToStr(pbEstado.Max);
          Application.ProcessMessages;
          Codigo := Trim(mtStockXLS.FieldByName('Codigo').AsString);
          if codigo<>'' Then
            begin
              DMMain_FD.fdcGestion.StartTransaction;
              Try
                if (DMMain_FD.JustificaCodigo='D') Then
                  Codigo := Copy(DMMain_FD.CharCodigo, 1, 8 - length(Codigo)) + Codigo;
                if (DMMain_FD.JustificaCodigo='I') Then
                  Codigo := Codigo + Copy(DMMain_FD.CharCodigo, 1, 8 - Length(Codigo));
                codigo:=copy(codigo,1,8);
                Costo :=mtStockXLS.FieldByName('Costo').AsString;
                if (mtStockXLS.FindField('preciovta')<>NIL) then
                  Precio:=mtStockXLS.FieldByName('preciovta').AsString
                else
                  Precio:='0';

                StringReplace(Costo ,',','',[rfReplaceAll]);
                StringReplace(Costo ,'$','',[rfReplaceAll]);

                StringReplace(Precio,',','',[rfReplaceAll]);
                StringReplace(Precio,'$','',[rfReplaceAll]);

                if Precio='' Then Precio:= '0';
                if Costo='' Then  Costo := '0';

                if chUsaCodigoALternativo.Checked then
                  Codigo:='*';

                if (chBuscaPorEAN.Checked) and (mtStockXLS.FindField('codigo_ean')<>NIL) then
                  begin
                    QBuscaCodigoBarra.Close;
                    QBuscaCodigoBarra.ParamByName('CODIGOEAN').Value:= Trim(mtStockXLS.FieldByName('codigo_ean').AsString);
                    QBuscaCodigoBarra.Open;
                    if Trim(QBuscaCodigoBarra.Fields[0].AsString)<>'' then
                      codigo:=Trim(QBuscaCodigoBarra.Fields[0].AsString);
                  end;

                //Costo := ReplaceStr ansi
                spActualiza.Close;
                spActualiza.ParamByName('codigo').AsString := codigo;
                spActualiza.ParamByName('costo').Value     := StrToFloat(costo);
                spActualiza.ParamByName('precio').Value    := StrToFloat(Precio);
                spActualiza.ParamByName('lista').Value     := dbclista.KeyValue;//   StrToInt(Edit1.Text);
                spActualiza.ParamByName('Fecha').AsDate    := edFecha.Date;//   StrToInt(Edit1.Text);

                if chActualizaPrecioVta.Checked=False then
                  begin
                    spActualiza.ParamByName('lista').Value   := 0;
                    spActualiza.ParamByName('precio').Value  := 0;
                  end;

                if (mtStockXLS.FindField('codigo_alternativo')<>NIL) then
                  spActualiza.ParamByName('codigo_reemplazo').Value  := Trim( mtStockXLS.FieldByName('codigo_alternativo').AsString )
                else
                  spActualiza.ParamByName('codigo_reemplazo').Clear;

                if chActualizaPrecioVta.Checked=False then
                  spActualiza.ParamByName('lista').clear;

                if Not(chUsaCodigoALternativo.Checked) then
                  spActualiza.ParamByName('codigo_reemplazo').Clear;

                spActualiza.ExecProc;
                DMMain_FD.fdcGestion.Commit;
                spActualiza.Close;
              except
                 lista.Add(codigo + '-'+ costo + '-' + Precio);

                DMMain_FD.fdcGestion.Rollback;
              //  ShowMessage('Transacción no finalizada....!');
              End;
            end;
          mtStockXLS.Next;
        end;
      if chActualizaPrecioVta.Checked then
        aux:='Si Actualiza..'
      else
        if Not(chActualizaPrecioVta.Checked) then
          aux:='No Actualiza..';

      DMMain_FD.LogFileFD(1,2,'Actualizacion Costo/Vta desde Excel >>Lista de Precios: '+dbclista.Text+
                         ' >>Fecha: '+DateToStr(edFecha.Date)+
                         ' >>Actuliza Lista: '+ Aux+
                         ' >>Archivo Usado : '+edPath.Text,
                         ' ACTCOSVTA');


      sbEstado.SimpleText:='..';
      pbEstado.Position:=0;
      Application.ProcessMessages;
      edPath.Clear;

      mtStockXLS.Active:=False;
    end;
  FreeAndNil(Lista);
end;

procedure TFormActualizaCostoVta_excel.btNovedadesClick(Sender: TObject);
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

procedure TFormActualizaCostoVta_excel.CancelarExecute(Sender: TObject);
begin
  if Not(mtStockXLS.IsEmpty) then
    begin
      mtStockXLS.Last;
      mtStockXLS.Close;
      edPath.Clear;
    end;
end;

procedure TFormActualizaCostoVta_excel.chBuscaPorEANClick(Sender: TObject);
begin
  inherited;
  if chBuscaPorEAN.Checked then
    chUsaCodigoALternativo.Checked:=False;

end;

procedure TFormActualizaCostoVta_excel.chUsaCodigoALternativoClick(
  Sender: TObject);
begin
  inherited;
  if chUsaCodigoALternativo.Checked then
    chBuscaPorEAN.Checked:=False;
end;

procedure TFormActualizaCostoVta_excel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSListaPrecios.Close;
  mtStockXLS.Close;
end;

procedure TFormActualizaCostoVta_excel.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  CDSListaPrecios.Close;
  CDSListaPrecios.Params.ParamByName('uso').Value:='*';
  CDSListaPrecios.Open;
  DMMain_FD.LogFileFD(1,0,'Apertura Actualizacion Costo/Vta ... Incio de Formulario....','ACTPRECMAN');

  edFecha.Date:=Date;
end;

procedure TFormActualizaCostoVta_excel.FormDestroy(Sender: TObject);
begin
  inherited;
  FormActualizaCostoVta_excel:=nil;
end;

procedure TFormActualizaCostoVta_excel.FormResize(Sender: TObject);
begin
  inherited;
  if FormActualizaCostoVta_excel<>nil then
    if FormActualizaCostoVta_excel.Width<>690 then
      FormActualizaCostoVta_excel.Width:=690;
end;

procedure TFormActualizaCostoVta_excel.FormShow(Sender: TObject);
begin
  inherited;
  if FormActualizaCostoVta_excel<>nil then
    if FormActualizaCostoVta_excel.Width<>690 then
      FormActualizaCostoVta_excel.Width:=690;
end;

procedure TFormActualizaCostoVta_excel.spAyudaFormatoClick(Sender: TObject);
begin
  inherited;
 if pnAviso.Visible=False Then
    pnAviso.Visible:=True
  else
    if pnAviso.Visible=True Then
      pnAviso.Visible:=False;
end;

procedure TFormActualizaCostoVta_excel.SpeedButton1Click(Sender: TObject);
var r,c:Integer;
ColName:String;
begin
  inherited;
  mtStockXLS.Active   :=False;
  if OpenDialog.Execute Then
    if  OpenDialog.FileName<>'' Then
      begin

        edPath.Text:=OpenDialog.FileName;

        stStockXLS.LoadFromXLS(edPath.Text);

        mtStockXLS.Close;
        mtStockXLS.FieldDefs.Clear;
        for c:= 0 to stStockXLS.ColCount - 1 do
          begin
            stStockXLS.Cells[c,0];
            if stStockXLS.Cells[c,0]<>'' Then
              mtStockXLS.FieldDefs.Add(stStockXLS.Cells[c,0],ftString,50,False);
          end;
        mtStockXLS.Open;

        mtStockXLS.DisableControls;
        for r:= 1 to stStockXLS.RowCount - 1 do
          begin
            mtStockXLS.Append;
            for c:= 0 to stStockXLS.ColCount - 1 do
              begin
                if stStockXLS.Cells[c,0]<>'' Then
                  begin
                    ColName       :=stStockXLS.Cells[c,0];
                    if mtStockXLS.FindField(ColName)<>nil then
                       mtStockXLS.FieldByName(ColName).Value:=stStockXLS.Cells[c,r];
                  end;
              end;
            mtStockXLS.Post;
          end;
        mtStockXLS.EnableControls;
        mtStockXLS.First;
        mtStockXLS.Refresh;
        FormActualizaCostoVta_excel.Height:=FormActualizaCostoVta_excel.Height-5;
        FormActualizaCostoVta_excel.Height:=FormActualizaCostoVta_excel.Height+5;


    end;

end;


end.
