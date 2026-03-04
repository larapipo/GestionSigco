unit UReasigancionPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Vcl.ExtCtrls, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB,
  Data.SqlExpr, JvComponentBase, JvFormPlacement, Vcl.ImgList, System.Actions,
  Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, Datasnap.DBClient,
  Datasnap.Provider, Vcl.Samples.Spin, Vcl.Mask, JvExMask, JvToolEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid,DateUtils, Vcl.Menus,UBuscadorClientes,
  AdvOfficeButtons,StrUtils, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations, System.ImageList;

type
  TFormReAsignacionPedidos = class(TFormABMBase)
    pnPediosAsociados: TPanel;
    pnPedidos: TPanel;
    Splitter1: TSplitter;
    tvListado: TTreeView;
    cxGRtos: TcxGrid;
    cxGRtosDBTableView1: TcxGridDBTableView;
    cxGRtosLevel1: TcxGridLevel;
    QPedidos: TFDQuery;
    DSPPedidos: TDataSetProvider;
    CDSPedidos: TClientDataSet;
    DSPedidos: TDataSource;
    QRtoAsociados: TFDQuery;
    DSPRtoAsociado: TDataSetProvider;
    CDSRtoAsociado: TClientDataSet;
    DSRtoAsociado: TDataSource;
    QPrevisiones: TFDQuery;
    DSPPrevisiones: TDataSetProvider;
    CDSPrevisiones: TClientDataSet;
    DSPrevisiones: TDataSource;
    CDSPedidosID: TIntegerField;
    CDSPedidosFECHA: TSQLTimeStampField;
    CDSPedidosCLIENTE: TStringField;
    CDSPedidosNOMBRE: TStringField;
    CDSPedidosID_FACTURA: TIntegerField;
    CDSPedidosTIPO_FACTURA: TStringField;
    CDSPedidosPEDIDO_PREVISION: TStringField;
    CDSPedidosESTADO_PREVISION: TStringField;
    CDSPedidosID_PREVISION: TIntegerField;
    cxGRtosDBTableView1ID: TcxGridDBColumn;
    cxGRtosDBTableView1FECHA: TcxGridDBColumn;
    cxGRtosDBTableView1CLIENTE: TcxGridDBColumn;
    cxGRtosDBTableView1NOMBRE: TcxGridDBColumn;
    cxGRtosDBTableView1ID_FACTURA: TcxGridDBColumn;
    cxGRtosDBTableView1TIPO_FACTURA: TcxGridDBColumn;
    cxGRtosDBTableView1ID_PREVISION: TcxGridDBColumn;
    Panel2: TPanel;
    QPrevisionesID: TIntegerField;
    QPrevisionesFECHA: TSQLTimeStampField;
    QPrevisionesCLIENTE: TStringField;
    QPrevisionesNOMBRE: TStringField;
    QPrevisionesID_FACTURA: TIntegerField;
    QPrevisionesTIPO_FACTURA: TStringField;
    QPrevisionesPEDIDO_PREVISION: TStringField;
    QPrevisionesESTADO_PREVISION: TStringField;
    QPrevisionesID_PREVISION: TIntegerField;
    CDSPrevisionesID: TIntegerField;
    CDSPrevisionesFECHA: TSQLTimeStampField;
    CDSPrevisionesCLIENTE: TStringField;
    CDSPrevisionesNOMBRE: TStringField;
    CDSPrevisionesID_FACTURA: TIntegerField;
    CDSPrevisionesTIPO_FACTURA: TStringField;
    CDSPrevisionesPEDIDO_PREVISION: TStringField;
    CDSPrevisionesESTADO_PREVISION: TStringField;
    CDSPrevisionesID_PREVISION: TIntegerField;
    CDSRtoAsociadoID: TIntegerField;
    CDSRtoAsociadoFECHA: TSQLTimeStampField;
    CDSRtoAsociadoCLIENTE: TStringField;
    CDSRtoAsociadoNOMBRE: TStringField;
    CDSRtoAsociadoID_FACTURA: TIntegerField;
    CDSRtoAsociadoTIPO_FACTURA: TStringField;
    CDSRtoAsociadoPEDIDO_PREVISION: TStringField;
    CDSRtoAsociadoESTADO_PREVISION: TStringField;
    CDSRtoAsociadoID_PREVISION: TIntegerField;
    Panel3: TPanel;
    lbNivel: TLabel;
    AsignarPedido: TAction;
    QActualiza: TFDQuery;
    PopupMenu1: TPopupMenu;
    BorrarRto1: TMenuItem;
    BorrarItem: TAction;
    BuscarCliente: TAction;
    QClientes: TFDQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    QClientesNOMBRE_COMPLETO: TStringField;
    QClientesRAZON_SOCIAL: TStringField;
    QClientesDIRECCION_PARTICULAR: TStringField;
    QClientesDIRECCION_COMERCIAL: TStringField;
    QClientesTELEFONO_PARTICULAR: TStringField;
    QClientesTELEFONO_COMERCIAL_1: TStringField;
    QClientesTELEFONO_COMERCIAL_2: TStringField;
    QClientesTELEFONO_CELULAR: TStringField;
    QClientesID_COD_POSTAL: TIntegerField;
    QClientesCPOSTAL: TStringField;
    QClientesLOCALIDAD: TStringField;
    QClientesCONDICION_IVA: TIntegerField;
    QClientesEMITE_REMITO: TStringField;
    QClientesEMITE_FACTURA: TStringField;
    QClientesNRO_DE_CUIT: TStringField;
    QClientesACTIVO: TStringField;
    QClientesLIMITE_CREDITO: TFloatField;
    QUltimaPrevision: TFDQuery;
    IntegerField1: TIntegerField;
    SQLTimeStampField1: TSQLTimeStampField;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField2: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    IntegerField3: TIntegerField;
    pnCab: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    RxLabel1: TJvLabel;
    Desde: TJvDateEdit;
    RxLabel3: TJvLabel;
    Hasta: TJvDateEdit;
    spFech: TSpinButton;
    Panel4: TPanel;
    Label2: TLabel;
    ceCliente: TJvComboEdit;
    edNombre: TEdit;
    chbFiltrar: TAdvOfficeCheckBox;
    procedure spFechDownClick(Sender: TObject);
    procedure spFechUpClick(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tvListadoCustomDrawItem(Sender: TCustomTreeView; Node: TTreeNode;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure tvListadoDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure tvListadoDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure AsignarPedidoExecute(Sender: TObject);
    procedure BorrarItemExecute(Sender: TObject);
    procedure BuscarClienteExecute(Sender: TObject);
    procedure ceClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure chbFiltrarClick(Sender: TObject);
    procedure cxGRtosDBTableView1DblClick(Sender: TObject);
    procedure tvListadoDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ID,ID_Prevision:Integer;
    Lista:TStringList;
  end;

var
  FormReAsignacionPedidos: TFormReAsignacionPedidos;

implementation

uses UDMain_FD, UPedidos;
{$R *.dfm}

procedure TFormReAsignacionPedidos.AsignarPedidoExecute(Sender: TObject);
begin
  inherited;
  QActualiza.Close;
  QActualiza.ParamByName('id').AsInteger  := id;
  QActualiza.ParamByName('idp').ASInteger := ID_Prevision;
  QActualiza.ExecSQL;
  QActualiza.Close;
end;

procedure TFormReAsignacionPedidos.BorrarItemExecute(Sender: TObject);
var Dato:string;
nodo:TTreeNode;
I1,I2:Integer;
begin
  inherited;
  Nodo:=tvListado.Selected;
  if Nodo<>nil then
    begin
      if (Nodo.Level=1) then
       begin
         Dato := tvListado.Selected.Text;
//         Delete(Dato,Pos('-',Dato),1);
         i1   :=1;//Pos('Nro',tvListado.Selected.Text)+1;
         i2   :=Pos('-',Dato);
         Dato:= Copy(Dato,i1,i2-i1);
         if Dato<>'' then
           begin
             ID_Prevision := -1;
             ID           := StrToInt(Trim(Dato));
             AsignarPedido.Execute;
             Buscar.Execute;
           end;
       end;
    end;


end;

procedure TFormReAsignacionPedidos.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
  CDSPedidos.Filtered:=False;
  CDSPedidos.Filter:='';
  IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''+','+'''I'''; // Act+Inac+Judiciales
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
    BEGIN
      ceCliente.Text :=FormBuscadorClientes.Codigo;
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := FormBuscadorClientes.Codigo;
      QClientes.Open;
      edNombre.Text := QClientesNOMBRE.Value;
      QClientes.Close;
     // CDSRtos.Filtered:=False;
//      CDSRtos.Filter:='CODIGO = '+''''+FormBuscadorClientes.Codigo+'''';
//      CDSRtos.Filtered:=True;

      Buscar.Execute;
    END;
end;

procedure TFormReAsignacionPedidos.BuscarExecute(Sender: TObject);
VAR  Nodo1,Nodo1_1: TTreeNode;
  N,X: Integer;
begin
  CDSPedidos.Close;
  CDSPedidos.IndexFieldNames:='';
  CDSPedidos.IndexDefs.Clear;
  CDSPedidos.Params.ParamByName('desde').AsDate:=Desde.Date;
  CDSPedidos.Params.ParamByName('hasta').AsDate:=Hasta.Date;
  CDSPedidos.Open;
  CDSPedidos.First;

  Nodo1 := NIL;

  Lista.Clear;
  tvListado.Items.Clear;

  CDSPrevisiones.Close;
  CDSPrevisiones.Params.ParamByName('desde').AsDate:=Desde.Date;
  CDSPrevisiones.Params.ParamByName('hasta').AsDate:=Hasta.Date;
  CDSPrevisiones.Open;
  CDSPrevisiones.First;

  if chbFiltrar.Checked then
    begin
      if (Not(CDSPedidos.IsEmpty)) and (Trim(cecliente.Text)<>'') then
        begin
          CDSPedidos.Filtered := False;
          CDSPedidos.Filter   := 'CLIENTE = '+''+Trim(cecliente.Text)+'';
          CDSPedidos.Filtered := chbFiltrar.Checked;
        end;
        if (Not(CDSPrevisiones.IsEmpty)) and (Trim(cecliente.Text)<>'') then
          begin
            CDSPrevisiones.Filtered := False;
            CDSPrevisiones.Filter   := 'CLIENTE = '+''+Trim(cecliente.Text)+'';
            CDSPrevisiones.Filtered := chbFiltrar.Checked;
          end;
      end;



  WHILE NOT (CDSPrevisiones.Eof) DO
    BEGIN
      Lista.Add(IntToStr(CDSPrevisionesID.Value));
      Application.ProcessMessages;
      Nodo1 := tvListado.Items.Add(NIL,'Nro '+ CDSPrevisionesID.AsString  +' - '+
                                               CDSPrevisionesFECHA.AsString+' - '+
                                               CDSPrevisionesNOMBRE.Value +' - '+
                                               CDSPrevisionesTIPO_FACTURA.AsString);
      tvListado.Selected := Nodo1;
      N := tvListado.Selected.AbsoluteIndex;

      CDSRtoAsociado.Close;
      CDSRtoAsociado.Params.ParamByName('id').Value := CDSPrevisionesID.Value;
      CDSRtoAsociado.Open;
      CDSRtoAsociado.First;
      WHILE NOT (CDSRtoAsociado.Eof) DO
        BEGIN
          Nodo1 := tvListado.Items.AddChild(tvListado.Items[N], ' '+CDSRtoAsociadoID.AsString + ' - ...' +
                                                                    CDSRtoAsociadoFECHA.AsString + ' - ' +
                                                                    CDSRtoAsociadoTIPO_FACTURA.Value   + ' - ' +
                                                                    CDSRtoAsociadoNOMBRE.AsString );
          tvListado.Selected := Nodo1;
          CDSRtoAsociado.Next;
        END;
      CDSPrevisiones.Next;
    END;


//  tvListado.SetFocus;
//  dbgRtos.SetFocus;
//  dbgRtos.SelectAll;
//  ActiveControl:=tvListado;
end;

procedure TFormReAsignacionPedidos.ceClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if (Key=vk_delete) or (Key=VK_BACK) then
    begin
      ceCliente.Text          := '';
      edNombre.Text           := '';
      CDSPedidos.Filtered     := False;
      CDSPedidos.Filter       := '';

      CDSPrevisiones.Filtered := False;
      CDSPrevisiones.Filter   := '';

    end;
end;

procedure TFormReAsignacionPedidos.ceClienteKeyPress(Sender: TObject;
  var Key: Char);
VAR
  Dato: STRING;
  Aux:Real;
BEGIN
  IF Key = #13 THEN
    BEGIN
      chbFiltrar.Checked:=False;
      key := #0;
      Dato:='';
      if (Trim(ceCliente.Text)<>'') then
        Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := Dato;
      QClientes.Open;
      IF NOT(QClientes.IsEmpty) THEN
        edNombre.Text := QClientesNOMBRE.Value;
      Buscar.Execute;
    END;
end;

procedure TFormReAsignacionPedidos.chbFiltrarClick(Sender: TObject);
begin
  inherited;
 if (Not(CDSPedidos.IsEmpty)) and (Trim(cecliente.Text)<>'') then
    begin
      CDSPedidos.Filtered := False;
      CDSPedidos.Filter   := 'CLIENTE = '+''+Trim(cecliente.Text)+'';
      CDSPedidos.Filtered := chbFiltrar.Checked;

      CDSPrevisiones.Filtered := False;
      CDSPrevisiones.Filter   := 'CLIENTE = '+''+Trim(cecliente.Text)+'';
      CDSPrevisiones.Filtered := chbFiltrar.Checked;

    end;
end;

procedure TFormReAsignacionPedidos.cxGRtosDBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if not(Assigned(FormPedidos)) then
    FormPedidos:=TFormPedidos.Create(Self);
  FormPedidos.DatoNew:=CDSPedidosID.AsInteger;
  FormPedidos.Recuperar.Execute;
  FormPedidos.Show;
  FormPedidos.BringToFront;

end;

procedure TFormReAsignacionPedidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormReAsignacionPedidos.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name;
  Lista:=TStringList.Create;
end;

procedure TFormReAsignacionPedidos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormReAsignacionPedidos:=nil;
end;

procedure TFormReAsignacionPedidos.FormShow(Sender: TObject);
VAR M,D,A:Word;
begin
  inherited;
  DecodeDate(Date,A,M,D);
  Desde.Date:=EncodeDate(A,M,1);
  Hasta.Date:=EncodeDate(A,M,DaysInMonth(Desde.date));
  CDSPedidos.Close;
  CDSPedidos.IndexFieldNames:='';
  CDSPedidos.IndexDefs.Clear;
  CDSPedidos.Params.ParamByName('desde').AsDate:=Desde.Date;
  CDSPedidos.Params.ParamByName('hasta').AsDate:=Hasta.Date;
  CDSPedidos.Open;
  CDSPedidos.First;
end;

procedure TFormReAsignacionPedidos.spFechDownClick(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  Desde.Date:=IncMonth(Desde.Date,-1);
  DecodeDate(Desde.date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(Desde.Date));
  Buscar.Execute;
end;

procedure TFormReAsignacionPedidos.spFechUpClick(Sender: TObject);
var d,m,y:word;
begin
  inherited;
 Desde.Date:=IncMonth(Desde.Date,1);
  DecodeDate(Desde.Date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(Desde.Date));
  Buscar.Execute;
end;

procedure TFormReAsignacionPedidos.tvListadoCustomDrawItem(
  Sender: TCustomTreeView; Node: TTreeNode; State: TCustomDrawState;
  var DefaultDraw: Boolean);
begin
  inherited;
  if (Node.Level=0) and (Node.HasChildren) then
    begin
      Sender.Canvas.Font.Color:=clBlue;
      Sender.Canvas.Font.Style:=[fsBold];
    end
  else
     begin
       Sender.Canvas.Font.Color:=clBlack;
       Sender.Canvas.Font.Style:=[];
     end;

  if cdsFocused in State then
    Sender.Canvas.Font.Color:=clWhite;
end;

procedure TFormReAsignacionPedidos.tvListadoDblClick(Sender: TObject);
var RecID,ColID,i,N:Integer;
  Nro:String;
TargetNode,Nodo1:TTreeNode;
begin
  inherited;
  TargetNode       := tvListado.Selected; // Get target node
  if TargetNode.Level=0 then
    begin
      Nro:= AnsiLeftStr(TargetNode.Text,Pos('-',TargetNode.Text)-1);  // Copy(TargetNode.Text,18,13);
      Delete(Nro,1,3);
      ID_Prevision := StrToInt(Trim(Nro));
    end
  else
    if TargetNode.Level=1 then
      begin
        Nro:= AnsiLeftStr(TargetNode.Text,Pos('-',TargetNode.Text)-1);  // Copy(TargetNode.Text,18,13);
       // Delete(Nro,1,3);
        ID_Prevision := StrToInt(Trim(Nro));
      end;

  if not(Assigned(FormPedidos)) then
    FormPedidos:=TFormPedidos.Create(Self);
  FormPedidos.DatoNew:=id_prevision;
  FormPedidos.Recuperar.Execute;
  FormPedidos.Show;
  FormPedidos.BringToFront;
end;

procedure TFormReAsignacionPedidos.tvListadoDragDrop(Sender, Source: TObject; X,Y: Integer);
var RecID,ColID,i:Integer;
  Nro:String;
TargetNode,Nodo1:TTreeNode;
begin
  inherited;
  TargetNode       := tvListado.GetNodeAt(X,Y); // Get target node
  if (TargetNode.Level=0) and (TargetNode<>nil) then
  begin
    i  := TargetNode.Index;
    Nro:= AnsiLeftStr(TargetNode.Text,Pos('-',TargetNode.Text)-1);  // Copy(TargetNode.Text,18,13);
    Delete(Nro,1,3);

   // if (Source is TcxGridDBTableView) then
    for i := 0 to (cxGRtosDBTableView1.Controller.SelectedRecordCount - 1) do
      begin
       if Not(VarIsNull(cxGRtosDBTableView1.Controller.SelectedRecords[i].RecordIndex)) then
         begin
           RecId   := cxGRtosDBTableView1.Controller.SelectedRecords[i].RecordIndex;
           ColId   := cxGRtosDBTableView1.DataController.GetItemByFieldName('ID').Index;
           ID      := cxGRtosDBTableView1.DataController.Values[RecId, ColId];
           ID_Prevision := StrToInt(Trim(Nro));
           AsignarPedido.Execute;
         end;
      end;
      Nodo1 := NIL;

    Lista.Clear;
    tvListado.Items.Clear;
    Buscar.Execute;

   // CDSPrevisiones.Close;
//    CDSPrevisiones.Open;
//    CDSPrevisiones.First;
//
//    WHILE NOT (CDSPrevisiones.Eof) DO
//      BEGIN
//        Lista.Add(IntToStr(CDSPrevisionesID.Value));
//        Application.ProcessMessages;
//        Nodo1 := tvListado.Items.Add(NIL,'Nro '+ CDSPrevisionesID.AsString    + ' - '+
//                                                 CDSPrevisionesFECHA.AsString + ' - '+
//                                                 CDSPrevisionesNOMBRE.Value   + ' - '+
//                                                 CDSPrevisionesTIPO_FACTURA.Value);
//        tvListado.Selected := Nodo1;
//        N := tvListado.Selected.AbsoluteIndex;
//
//        CDSRtoAsociado.Close;
//        CDSRtoAsociado.Params.ParamByName('id').Value := CDSPrevisionesID.Value;
//        CDSRtoAsociado.Open;
//        CDSRtoAsociado.First;
//        WHILE NOT (CDSRtoAsociado.Eof) DO
//          BEGIN
//            Nodo1 := tvListado.Items.AddChild(tvListado.Items[N], ' '+CDSRtoAsociadoID.AsString + ' - ...' +
//                                                                      CDSRtoAsociadoFECHA.AsString + ' - ' +
//                                                                      CDSRtoAsociadoTIPO_FACTURA.Value   + ' - ' +
//                                                                      CDSRtoAsociadoNOMBRE.Value );
//            tvListado.Selected := Nodo1;
//            CDSRtoAsociado.Next;
//          END;
//        CDSPrevisiones.Next;
//      END;
  end;
end;

procedure TFormReAsignacionPedidos.tvListadoDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
VAR Nodo:TTreeNode;

begin
  inherited;
  if (Source is TcxGrid ) then
    Accept:=True;
  if Accept=True then
    Accept:=Not(CDSPedidos.IsEmpty);

  if Accept then
    begin
      if (y < 14) then {On the upper edge - should scroll up }
        SendMessage(tvListado.Handle, WM_VSCROLL, SB_LINEUP, 0)
      else
        if (tvListado.Height - y < 14) then { On the lower edge - should scroll down }
          SendMessage(tvListado.Handle, WM_VSCROLL, SB_LINEDOWN, 0);
      Nodo:=tvListado.Selected;
     // if Nodo.Level>0 then
     //   Accept:=False;
      lbNivel.Caption:='Level:'+IntToStr(Nodo.Level)+'..Y:'+IntToStr(y)+' CLIENTE:'+Nodo.Text;
    end;
end;

end.
