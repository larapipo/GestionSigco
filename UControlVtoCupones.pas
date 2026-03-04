unit UControlVtoCupones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, Grids, DBGrids, JvExDBGrids, JvDBGrid, DB,
  Provider, DBClient, SqlExpr, JvComponentBase, JvFormPlacement,
  ImgList, ActnList, ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls, Mask,
  JvExMask, JvToolEdit, JvExComCtrls, JvProgressBar, Spin,IniFiles, Menus,DBXCommon,
  JvAppStorage, JvAppIniStorage, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, JvBaseEdits,
  System.ImageList;

type
  TFormControlVtoCupones = class(TFormABMBase)
    CDSCupones: TClientDataSet;
    DSPCupones: TDataSetProvider;
    CDSCuponesID: TIntegerField;
    CDSCuponesNUMERO: TStringField;
    CDSCuponesCLIENTE: TStringField;
    CDSCuponesPERIODO: TStringField;
    CDSCuponesCODIGOBARRA1: TStringField;
    CDSCuponesCODIGOARTICULO: TStringField;
    CDSCuponesFACTURA_ID: TIntegerField;
    CDSCuponesFACTURA_TIPO: TStringField;
    CDSCuponesFACTURA_CLASE: TStringField;
    CDSCuponesFACTURA_NROCPBTE: TStringField;
    CDSCuponesPAGADO: TStringField;
    CDSCuponesNOMBRE: TStringField;
    CDSCuponesCON_PLANPAGO: TStringField;
    CDSCuponesCORTAR_SERVICIO: TStringField;
    DSCupones: TDataSource;
    ControlVecimientos: TAction;
    pcListado: TPageControl;
    pag1: TTabSheet;
    dbgCupones: TJvDBGrid;
    lwEstados: TListView;
    Button1: TButton;
    lbCantidad: TLabel;
    BitBtn1: TBitBtn;
    ExportarTXT: TAction;
    ToolButton1: TToolButton;
    pgEstado: TProgressBar;
    CDSCuponesDIRECCION_COMERCIAL: TStringField;
    GravarListado: TAction;
    CDSCuponesESTADO: TStringField;
    rgEstados: TRadioGroup;
    ControlSAldos: TAction;
    PopupMenu1: TPopupMenu;
    spVerificaSaldoCupon_old: TSQLStoredProc;
    ControlSAldosCupones1: TMenuItem;
    QCupones: TFDQuery;
    CDSCuponesIMPORTE_1: TFloatField;
    CDSCuponesIMPORTE_2: TFloatField;
    CDSCuponesFECHA_GENERACION: TSQLTimeStampField;
    CDSCuponesFECHA: TSQLTimeStampField;
    CDSCuponesFECHA_VTO1: TSQLTimeStampField;
    CDSCuponesFECHA_VTO2: TSQLTimeStampField;
    CDSCuponesFACTURA_FECHA: TSQLTimeStampField;
    Panel2: TPanel;
    Label2: TLabel;
    edCantidadCuotas: TSpinEdit;
    Label1: TLabel;
    edFecha: TJvDateEdit;
    rgCondicion: TRadioGroup;
    Label3: TLabel;
    spVerificaSaldoCuponFD: TFDStoredProc;
    edDifSaldo: TJvCalcEdit;
    Label4: TLabel;
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgCuponesDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure ControlVecimientosExecute(Sender: TObject);
    procedure ExportarTXTExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dbgCuponesDblClick(Sender: TObject);
    procedure lwEstadosColumnClick(Sender: TObject; Column: TListColumn);
    procedure lwEstadosCompare(Sender: TObject; Item1, Item2: TListItem;
      Data: Integer; var Compare: Integer);
    procedure ControlSAldosExecute(Sender: TObject);
  private
    { Private declarations }
  public
    ListaNovedades:TStringList;
    ColumnToSort : Integer;
    procedure guardarListViewFichero (AListView: TListView);

    { Public declarations }
  end;

var
  FormControlVtoCupones: TFormControlVtoCupones;

implementation

{$R *.dfm}
uses UListCpbteNoImportados,UDMain_FD, UFactura_2, UFacturaCtdo_2;



procedure TFormControlVtoCupones.guardarListViewFichero (AListView: TListView);
var
  idxItem, idxSub, IdxImage: Integer;
  F: TFileStream;
  pText: PChar;
  Codigo,Nombre,Direccion,Estado: string;
  W, ItemCount, SubCount: Word;
  MySignature: array [0..2] of Char;
begin
  //Initialization
  ListaNovedades:=TStringList.Create;
  ListaNovedades.Clear;
  with AListView do
  begin
    ItemCount := 0;
    SubCount  := 0;
     if Items.Count = 0 then ItemCount := 0
    else
      ItemCount := Items.Count;
    if Items.Count > 0 then
      begin
        for idxItem := 1 to ItemCount do
          begin
            with Items[idxItem - 1] do
              begin
                if SubItems.Count = 0 then SubCount := 0 else SubCount := Subitems.Count;
                Codigo := Caption;
                if SubCount > 0 then
                  begin
                    for idxSub := 0 to SubItems.Count - 1 do
                      begin
                        case idxSub of
                          0:Nombre   := SubItems[idxSub];
                          3:direccion:= SubItems[idxSub];
                          2:condicion:= SubItems[idxSub];
                        end;
                      end;
                  end;
                ListaNovedades.Add(Codigo+';'+condicion+';'+nombre+';'+direccion);
              end;
          end;
      end;
  end;
end;


function Ordenacion( Item1, Item2: TListItem; ParamSort: Integer ): integer; stdcall;
begin
  Result := CompareText( Item1.SubItems[1], Item2.SubItems[1] );
end;


//Esta función compara los items 1 y 2 y le devuelve el resultado a CustomSort. Si queremos ordenarla descendentemente sería así:


//function Ordenacion( Item1, Item2: TListItem; ParamSort: Integer ): integer; stdcall;
//begin
//  Result := -CompareText( Item1.SubItems[1], Item2.SubItems[1] );
//end;

procedure TFormControlVtoCupones.BitBtn1Click(Sender: TObject);
begin
  inherited;
   guardarListViewFichero(lwEstados);
   if (ListaNovedades<>nil) and (ListaNovedades.Count>0) then
    begin
      if Not(Assigned(FormListaNoImportados)) then
        FormListaNoImportados:=TFormListaNoImportados.Create(Application);
      FormListaNoImportados.Caption:='Archivo de Novedades';
      FormListaNoImportados.mLista.Lines:=(ListaNovedades);
      FormListaNoImportados.Show;
    end
  else
    ShowMessage('No hay Datos para Gravar');
end;

procedure TFormControlVtoCupones.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSCupones.Close;
  case rgEstados.ItemIndex of
    0:CDSCupones.Params.ParamByName('estado').Value :='*';
    1:CDSCupones.Params.ParamByName('estado').Value :='S';
    2:CDSCupones.Params.ParamByName('estado').Value :='N';
    3:CDSCupones.Params.ParamByName('estado').Value :='G';
  end;
  CDSCupones.Open;
  ControlVecimientos.Execute;
 // lwEstados.AlphaSort;
 // lwEstados.CustomSort(@ordenacion,0)
 // lwEstados.ViewStyle:=vsReport;
end;

procedure TFormControlVtoCupones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ControlVtos.Ini');
  ArchivoIni.WriteInteger('cuotas', 'cuotas', edCantidadCuotas.Value);
  ArchivoIni.Free;
  Action:=caFree;
end;

procedure TFormControlVtoCupones.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ControlVtos.Ini');
  edCantidadCuotas.Value  :=ArchivoIni.ReadInteger('cuotas', 'cuotas', 2);
  ArchivoIni.Free;
end;

procedure TFormControlVtoCupones.FormDestroy(Sender: TObject);
begin
  inherited;
  FormControlVtoCupones:=nil;
end;

procedure TFormControlVtoCupones.lwEstadosColumnClick(Sender: TObject;
  Column: TListColumn);
begin
  inherited;
  //lwEstados.CustomSort(@ordenacion,Column.Index)
  ColumnToSort := Column.Index;
  (Sender as TCustomListView).AlphaSort;
end;

procedure TFormControlVtoCupones.lwEstadosCompare(Sender: TObject; Item1,
  Item2: TListItem; Data: Integer; var Compare: Integer);
var
  i: Integer;
begin
  if ColumnToSort = 0 then
    Compare := CompareText(Item1.Caption,Item2.Caption)
  else begin
   i := ColumnToSort - 1;
   Compare := CompareText(Item1.SubItems[i],Item2.SubItems[i]);
  end;
end;

procedure TFormControlVtoCupones.ControlSAldosExecute(Sender: TObject);
begin
  inherited;

  DMMain_FD.fdcGestion.StartTransaction;
  try
    spVerificaSaldoCuponFD.Close;
    spVerificaSaldoCuponFD.Params.ParamByName('TopeSsldo').Value:=edDifSaldo.Value;

    spVerificaSaldoCuponFD.ExecProc;
    spVerificaSaldoCuponFD.Close;
    DMMain_FD.fdcGestion.Commit;
    ShowMessage('Cupones Revisados....');

  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('Operacion no finalizada/ puede estar no permitida por tener Mov. de Che de 3º....');
    end

end;

procedure TFormControlVtoCupones.ControlVecimientosExecute(Sender: TObject);
var CDSClone,CDSClone_2:TClientDataSet;
codigo,Estado,Condicion:String;
cont,Id_Estado,Id_Imagen:byte;
Lista:TListItem;
  procedure ArmarLista;
  begin
    Lista:=lwEstados.Items.Add;
    Lista.Caption   :=Codigo;
    Lista.ImageIndex:=10;
    Lista.SubItems.Add(CDSClone.FieldByName('nombre').AsString);

    Lista.SubItems.Add(Estado);
    Lista.SubItems.Add(Condicion);
    Lista.SubItems.Add(CDSClone.FieldByName('direccion_comercial').AsString);
  end;

begin
  inherited;
  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(CDSCupones,true);
  CDSClone_2:=TClientDataSet.Create(Self);
  CDSClone_2.CloneCursor(CDSCupones,true);
  if CDSClone.RecordCount>0 then
    pgEstado.Max:=CDSClone.RecordCount-1
  else
    pgEstado.Max:=0;

  pgEstado.Min:=0;
  CDSClone.First;
  Codigo:='';
  lwEstados.Clear;
  while not(CDSClone.Eof) do
    begin
      pgEstado.Position := pgEstado.Position + 1;
      Application.ProcessMessages;
      if (Codigo<>CDSClone.FieldByName('cliente').AsString) Then
        begin
          Codigo  :=CDSClone.FieldByName('cliente').AsString;
          CDSClone_2.Filtered:=False;
          CDSClone_2.Filter:='CLIENTE = '+''''+codigo+''''+ 'and FECHA_VTO2 <= '+''''+DateToStr(edFecha.Date)+''' ';
          CDSClone_2.Filtered:=True;

          cont:=CDSClone_2.RecordCount;

          Id_Imagen:=10;
          if cont<edCantidadCuotas.Value then
            begin
              Estado   :='E';
              Condicion:='Habilitado';
              Id_Estado:=1;
              //Lista.ImageIndex:=10;
            end
          else
            if cont=edCantidadCuotas.Value then
              begin
                Estado   :='A';
                Condicion:='Avisado';
                Id_Estado :=2;
                //Lista.ImageIndex:=11;
                Id_Imagen:=11;
              end
            else
              if cont>edCantidadCuotas.Value then
                begin
                  Estado:='C';
                  Condicion:='Deshabilitado';
                  Id_Estado :=3;
                  //Lista.ImageIndex:=12;
                  Id_Imagen:=12;
                end;

          if ((Estado='C') or (Estado='A')) then
            begin
              if CDSClone.FieldByName('con_planpago').AsString='S' then
                begin
                  Estado    :='P';
                  Condicion :='Hab.Pln PAgo';
                  Id_Estado :=4;
                  //Lista.ImageIndex:=13;
                  Id_Imagen:=13;
                end
              else
                if CDSClone.FieldByName('cortar_servicio').AsString='N' then
                  begin
                    Estado   :='E';
                    Condicion:='Ser.Incondicional';
                    Id_Estado :=5;
                    //Lista.ImageIndex:=14;
                    Id_Imagen:=14;
                  end;
            end;

          case rgCondicion.ItemIndex of
            0:ArmarLista;
            1:if Id_Estado=1 Then ArmarLista;
            2:if Id_Estado=2 Then ArmarLista;
            3:if Id_Estado=3 Then ArmarLista;
            4:if Id_Estado=4 Then ArmarLista;
            5:if Id_Estado=5 Then ArmarLista;
          end;
//          Lista.SubItems.Add(Estado);
//          Lista.SubItems.Add(Condicion);
//          Lista.SubItems.Add(CDSClone.FieldByName('direccion_comercial').AsString);
         end;
       CDSClone.Next;
    end;
  pgEstado.Position:=0;
  Application.ProcessMessages;
  CDSClone.Free;
  lbCantidad.Caption:=intToStr( lwEstados.Items.Count);
end;

procedure TFormControlVtoCupones.dbgCuponesDblClick(Sender: TObject);
begin
  inherited;
  if CDSCuponesFACTURA_ID.AsString<>'' then
    begin
      if (CDSCuponesFACTURA_TIPO.AsString='FC') or (CDSCuponesFACTURA_TIPO.AsString='NC') then
        begin
          if not(Assigned(FormCpbte_2)) then
            FormCpbte_2:=TFormCpbte_2.Create(Self);
          FormCpbte_2.DatoNew   := CDSCuponesFACTURA_ID.AsString;
          FormCpbte_2.TipoCpbte := CDSCuponesFACTURA_TIPO.AsString;
          FormCpbte_2.Recuperar.Execute;
          FormCpbte_2.Show;
        end
      else
      if (CDSCuponesFACTURA_TIPO.AsString='FO') then
        begin
          if not(Assigned(FormCpbteCtdo_2)) then
            FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(Self);
          FormCpbteCtdo_2.DatoNew   := CDSCuponesFACTURA_ID.AsString;
          FormCpbteCtdo_2.TipoCpbte := CDSCuponesFACTURA_TIPO.AsString;
          FormCpbteCtdo_2.Recuperar.Execute;
          FormCpbteCtdo_2.Show;
        end;

    end;

end;

procedure TFormControlVtoCupones.dbgCuponesDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  inherited;
  dbgCupones.Canvas.Font.Color:=clBlack;
  dbgCupones.Canvas.Font.Style:=[];
  if CDSCuponesFECHA_VTO2.AsDateTime<edFecha.Date then
    begin
      if gdSelected in State Then
        begin
          dbgCupones.Canvas.Font.Color :=clWhite;
          dbgCupones.Canvas.Brush.Color:=clNavy;
        end
      else
        begin
          dbgCupones.Canvas.Font.Color:=clRed;
          dbgCupones.Canvas.Font.Style:=[fsBold];
        end;
    end;
 dbgCupones.DefaultDrawDataCell(Rect,Field,[]);
end;

procedure TFormControlVtoCupones.ExportarTXTExecute(Sender: TObject);
var Archivo:TextFile;
begin
  inherited;
  lwEstados.ItemIndex:=0;
end;

end.
