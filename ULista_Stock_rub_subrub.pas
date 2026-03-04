unit ULista_Stock_rub_subrub;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, JvComponentBase, JvFormPlacement, ImgList, ActnList,
  JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls, ToolWin,
  ExtCtrls, JvBaseDlg, JvProgressDialog, JvComCtrls, JvExComCtrls, JvDBLookup,
  Menus, Grids, DBGrids, JvExDBGrids, JvDBGrid, DBXCommon,
  JvAppStorage, JvAppIniStorage, System.Actions, Data.FMTBcd, Data.SqlExpr,
  Data.DB, Datasnap.Provider, Datasnap.DBClient, Vcl.ComCtrls, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Mask, JvExMask, JvToolEdit, JvMaskEdit, JvDBFindEdit, System.ImageList;

type
  TFormLista_Stock_Rub_SubRub = class(TFormABMBase)
    CDSRubro: TClientDataSet;
    CDSRubroCODIGO_RUBRO: TStringField;
    CDSRubroDETALLE_RUBRO: TStringField;
    DSPRubro: TDataSetProvider;
    DSPSubRubro: TDataSetProvider;
    CDSSubRubro: TClientDataSet;
    CDSSubRubroCODIGO_SUBRUBRO: TStringField;
    CDSSubRubroDETALLE_SUBRUBRO: TStringField;
    CDSStock: TClientDataSet;
    DSPStock: TDataSetProvider;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    CDSStockSUBRUBRO_STK: TStringField;
    Consultar: TAction;
    BitBtn1: TBitBtn;
    ToolButton1: TToolButton;
    pdProgress: TJvProgressDialog;
    pcDatos: TJvPageControl;
    Pag1: TTabSheet;
    JvTabDefaultPainter1: TJvTabDefaultPainter;
    pag2: TTabSheet;
    tvListado: TTreeView;
    tvArticulos: TTreeView;
    tvSubRubros: TTreeView;
    Label3: TLabel;
    cbSubRubro: TJvDBLookupCombo;
    DSSubRub: TDataSource;
    BorrarItem: TAction;
    PopupMenu1: TPopupMenu;
    BorrarItem1: TMenuItem;
    BorrarItem2: TAction;
    PopupMenu2: TPopupMenu;
    BorrarItem3: TMenuItem;
    SeleccionaSubRubro: TAction;
    SeleccionaItem: TAction;
    Edit1: TEdit;
    edSubRubro: TEdit;
    SpeedButton1: TSpeedButton;
    CambiarNombre: TAction;
    lbIndex: TLabel;
    Button1: TButton;
    CDSStockRUBRO_STK: TStringField;
    PopupMenu3: TPopupMenu;
    MenuItem1: TMenuItem;
    borrarArticulo: TAction;
    CDSStockCON_MOV: TIntegerField;
    ImageList2: TImageList;
    ReemplazarArticulos: TAction;
    ModificararticuloendetallesdeComprobantes1: TMenuItem;
    pag3: TTabSheet;
    CDSControlRubSubStock: TClientDataSet;
    DSPControlRubSubStock: TDataSetProvider;
    CDSControlRubSubStockCODIGO_STK: TStringField;
    CDSControlRubSubStockDETALLE_STK: TStringField;
    CDSControlRubSubStockRUBRO_STK: TStringField;
    CDSControlRubSubStockSUBRUBRO_STK: TStringField;
    CDSControlRubSubStockDETALLE_RUBRO: TStringField;
    CDSControlRubSubStockDETALLE_SUBRUBRO: TStringField;
    dbgControl: TJvDBGrid;
    DSControlRubSubStock: TDataSource;
    btConsultar: TBitBtn;
    SoloDeVta: TAction;
    SoloCompra: TAction;
    CompraVta: TAction;
    PasarlosItmedelSubRubasoloVta1: TMenuItem;
    PasarlosItmedelSubRubasoloCompra1: TMenuItem;
    PasarArtidelSubRubrocomodeComprayVta1: TMenuItem;
    spExapnd: TSpeedButton;
    TabSheet1: TTabSheet;
    BuscarArticulosPorUso: TAction;
    BitBtn2: TBitBtn;
    PopupMenu4: TPopupMenu;
    BorrarArticuloDos: TAction;
    ReemplazarArticulosDos: TAction;
    dbgStock: TDBGrid;
    DSStock: TDataSource;
    chSinUso: TCheckBox;
    BorrarArticulo1: TMenuItem;
    ReemplazarArticulos1: TMenuItem;
    JvDBStatusLabel1: TJvDBStatusLabel;
    InactivarArticulo: TAction;
    QCompVtaStock: TFDQuery;
    QControlRubSubStock_: TFDQuery;
    QSubRub: TFDQuery;
    QStock: TFDQuery;
    QSubRubro: TFDQuery;
    QRubro: TFDQuery;
    QControlRubSubStock_CODIGO_STK: TStringField;
    QControlRubSubStock_DETALLE_STK: TStringField;
    QControlRubSubStock_RUBRO_STK: TStringField;
    QControlRubSubStock_SUBRUBRO_STK: TStringField;
    QControlRubSubStock_DETALLE_RUBRO: TStringField;
    QControlRubSubStock_DETALLE_SUBRUBRO: TStringField;
    QVerificaStockConMov: TFDQuery;
    QInactivarStk: TFDQuery;
    QBorrarSubRubro: TFDQuery;
    QBorrarRubro: TFDQuery;
    QBorrarArticulo: TFDQuery;
    QCambiarNombreArt: TFDQuery;
    QCambiarNombreSub: TFDQuery;
    QCambiarNombreRubro: TFDQuery;
    QVerificaStockConMovESTADO: TStringField;
    QSubRubCODIGO_SUBRUBRO: TStringField;
    QSubRubDETALLE_SUBRUBRO: TStringField;
    QBuscaRubro_en_SubFD: TFDQuery;
    QBuscaRubro_en_SubFDCODIGO_RUBRO: TStringField;
    JvDBFindEdit1: TJvDBFindEdit;
    JvDBFindEdit2: TJvDBFindEdit;
    spCambiaCodigo: TFDStoredProc;
    spToolsArreglaSubRub: TFDStoredProc;
    CorrigeSubRub: TAction;
    SpeedButton2: TSpeedButton;
    procedure ConsultarExecute(Sender: TObject);
    procedure tvListadoClick(Sender: TObject);
    procedure tvListadoCustomDrawItem(Sender: TCustomTreeView; Node: TTreeNode;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tvListadoDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure tvListadoDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure cbSubRubroClick(Sender: TObject);
    procedure tvSubRubrosDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure tvSubRubrosDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure BorrarItemExecute(Sender: TObject);
    procedure BorrarItem2Execute(Sender: TObject);
    procedure SeleccionaSubRubroExecute(Sender: TObject);
    procedure SeleccionaItemExecute(Sender: TObject);
    procedure CambiarNombreExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CDSStockCalcFields(DataSet: TDataSet);
    procedure borrarArticuloExecute(Sender: TObject);
    procedure ReemplazarArticulosExecute(Sender: TObject);
    procedure dbgControlTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure btConsultarClick(Sender: TObject);
    procedure dbgControlDblClick(Sender: TObject);
    procedure SoloDeVtaExecute(Sender: TObject);
    procedure SoloCompraExecute(Sender: TObject);
    procedure CompraVtaExecute(Sender: TObject);
    procedure tvArticulosDblClick(Sender: TObject);
    procedure spExapndClick(Sender: TObject);
    procedure BuscarArticulosPorUsoExecute(Sender: TObject);
    procedure BorrarArticuloDosExecute(Sender: TObject);
    procedure ReemplazarArticulosDosExecute(Sender: TObject);
    procedure chSinUsoClick(Sender: TObject);
    procedure dbgStockDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgStockKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure InactivarArticuloExecute(Sender: TObject);
    procedure dbgStockDblClick(Sender: TObject);
    procedure CorrigeSubRubExecute(Sender: TObject);
  private
    { Private declarations }
  public
   procedure MoveNodo(TargetNodo,SourceNodo:TTreeNode);
    { Public declarations }
  end;
  type
    PConMomviento= ^Boolean;
var
  FormLista_Stock_Rub_SubRub: TFormLista_Stock_Rub_SubRub;

implementation

uses UDMain_FD,DMBuscadoresForm, UCambioArticuloVta, UStock_2;
{$R *.dfm}

procedure TFormLista_Stock_Rub_SubRub.MoveNodo(TargetNodo,SourceNodo:TTreeNode);
var
  nodeTmp : TTreeNode;
  i : Integer;
codigo,rubro,subrubro:String;
begin
  with tvListado do
  begin
    nodeTmp := Items.AddChild(TargetNodo,SourceNodo.Text);
    codigo  :=Copy(SourceNodo.Text,1,pos('-',SourceNodo.Text)-1);
    subrubro:=Copy(TargetNodo.Text,1,pos('-',TargetNodo.Text)-1);

    rubro   :='';

    QBuscaRubro_en_SubFD.Close;
    QBuscaRubro_en_SubFD.ParamByName('subrubro').Value:=subrubro;
    QBuscaRubro_en_SubFD.Open;
    rubro   :=QBuscaRubro_en_SubFD.Fields[0].AsString;

    if (rubro<>'') and (subrubro<>'') then
      begin
        spCambiaCodigo.Close;
        spCambiaCodigo.Params.ParamByName('Rubro').AsString   :=rubro;
        spCambiaCodigo.Params.ParamByName('Codigo').AsString  :=codigo;
        spCambiaCodigo.Params.ParamByName('SubRubro').AsString:=subrubro;
        spCambiaCodigo.ExecProc;
        spCambiaCodigo.Close;

        for i := 0 to SourceNodo.Count -1 do
        begin
          MoveNodo(nodeTmp,SourceNodo.Item[i]);
        end;
      end
    else
      ShowMessage('No se pudo hacer la operación...');
  end;
end;


procedure TFormLista_Stock_Rub_SubRub.ReemplazarArticulosDosExecute(
  Sender: TObject);
var Nodo1:TTreeNode;
codigo,Detalle:string;
begin
  inherited;
  codigo  := CDSStockCODIGO_STK.Value;
  Detalle := CDSStockDETALLE_STK.Value;
  if Not(Assigned(FormCambiaArticuloEnVtas)) then
    FormCambiaArticuloEnVtas:=TFormCambiaArticuloEnVtas.Create(Self);
  FormCambiaArticuloEnVtas.Codigo  := codigo;
  FormCambiaArticuloEnVtas.Detalle := Detalle;

  FormCambiaArticuloEnVtas.ShowModal;
end;

procedure TFormLista_Stock_Rub_SubRub.ReemplazarArticulosExecute(
  Sender: TObject);
var
Nodo1:TTreeNode;
codigo,Detalle:string;
LCodigos: TStringList;
i: integer;
begin
  inherited;     // esta rurina no se porque se hizo asi... 26/02/2022
  LCodigos  :=  TStringList.Create;
  LCodigos.Delimiter := '|';
  try
    for i := 0 to tvArticulos.SelectionCount -1 do
      begin
        Nodo1   := tvArticulos.Selections[i];
        //codigo  := Trim(Copy(Nodo1.Text,1,pos('-',Nodo1.Text)-1));
        codigo  := Trim(Nodo1.Text);
        LCodigos.Add(codigo);
      end;

//    if tvArticulos.SelectionCount = 1 then
//      begin
//        Detalle := Copy(Nodo1.Text,pos('-',Nodo1.Text)+1,45);
//   //     codigo  := Copy(Nodo1.Text,1,pos('-',Nodo1.Text)-1);
//      end
//    else
//      begin
//        Detalle:='Conjunto de Codigos';
//      end;

    if Not(Assigned(FormCambiaArticuloEnVtas)) then
      FormCambiaArticuloEnVtas:=TFormCambiaArticuloEnVtas.Create(Self);
    FormCambiaArticuloEnVtas.Codigos   := LCodigos;
    FormCambiaArticuloEnVtas.Detalle   := Detalle;

    FormCambiaArticuloEnVtas.ShowModal;
  finally
    LCodigos.Free;
  end;
end;

procedure TFormLista_Stock_Rub_SubRub.SeleccionaSubRubroExecute(
  Sender: TObject);
var Nodo1,Nodo2:TTreeNode;
   N, M, O: Integer;
codigo:string;
ConMovimiento:PConMomviento;
begin
  Nodo1:=tvSubRubros.Selected;
  New(ConMovimiento);
  Screen.Cursor:=crHourGlass;
  tvArticulos.Update;
  if {(Nodo1.Count<=0) and }(Nodo1.Level=0) then
    begin
      N := tvSubRubros.Selected.AbsoluteIndex;
      tvSubRubros.Selected := Nodo1;
      tvArticulos.Items.Clear;
      codigo:= Copy(Nodo1.Text,pos('-',Nodo1.Text)+1,45);
      codigo:= Copy(codigo,1,pos('-',codigo)-1);

      cbSubRubro.KeyValue:=Trim(codigo);
      CDSStock.Close;
      CDSStock.Params.ParamByName('sub').Value := Trim(codigo);//Copy(Nodo1.Text,1,pos('-',Nodo1.Text)-1);
      CDSStock.Open;
      WHILE NOT (CDSStock.Eof) DO
        BEGIN
          Nodo2 := tvArticulos.Items.AddChild(Nil,
          CDSStockCODIGO_STK.AsString + ' - ' + CDSStockDETALLE_STK.Value);


          if CDSStockCON_MOV.Value=1 then
            Nodo2.ImageIndex:=1
          else
            Nodo2.ImageIndex:=0;

          if CDSStockCON_MOV.Value=1 then
            Nodo2.SelectedIndex:=1
          else
            Nodo2.SelectedIndex:=0;

          tvArticulos.Selected := Nodo2;

          CDSStock.Next;

        END;
    end;
//  FreeAndNil(ConMovimiento);

  Screen.Cursor:=crDefault;
  dbgStock.Width:=dbgStock.Width+1;
  dbgStock.Width:=dbgStock.Width-1;

end;

procedure TFormLista_Stock_Rub_SubRub.SoloCompraExecute(Sender: TObject);
var Nodo:TTreeNode;
SubRubro:String;
begin
  inherited;
  Nodo :=tvSubRubros.Selected;
  Screen.Cursor:=crHourGlass;
  SubRubro:= Copy(Nodo.Text,pos('-',Nodo.Text)+1,45);
  SubRubro:= Copy(subrubro,1,pos('-',subrubro)-1);
  QCompVtaStock.Close;
  QCompVtaStock.ParamByName('Codigo').Value:=SubRubro;
  QCompVtaStock.ParamByName('Tipo').Value  :=2;
  QCompVtaStock.ExecSQL;
  Screen.Cursor:=crDefault;
  QCompVtaStock.Close;
end;

procedure TFormLista_Stock_Rub_SubRub.SoloDeVtaExecute(Sender: TObject);
var Nodo:TTreeNode;
SubRubro:String;
begin
  inherited;
  Nodo :=tvSubRubros.Selected;
  Screen.Cursor:=crHourGlass;
  SubRubro:= Copy(Nodo.Text,pos('-',Nodo.Text)+1,45);
  SubRubro:= Copy(subrubro,1,pos('-',subrubro)-1);
  QCompVtaStock.Close;
  QCompVtaStock.ParamByName('Codigo').Value:=SubRubro;
  QCompVtaStock.ParamByName('Tipo').Value  :=1;
  QCompVtaStock.ExecSQL;
  Screen.Cursor:=crDefault;
  QCompVtaStock.Close;
end;

procedure TFormLista_Stock_Rub_SubRub.spExapndClick(Sender: TObject);
begin
  inherited;
  if tvListado.AutoExpand=True then
    tvListado.AutoExpand:=False
  else
    tvListado.AutoExpand:=True;
 end;

procedure TFormLista_Stock_Rub_SubRub.BorrarArticuloDosExecute(Sender: TObject);
var Nodo:TTreeNode;
codigo:String;
I:integer;
begin
  inherited;
  codigo := CDSStockCODIGO_STK.Value;
  QVerificaStockConMov.Close;
  QVerificaStockConMov.ParamByName('codigo').Value:= codigo;
  QVerificaStockConMov.Open;
  if (QVerificaStockConMovESTADO.Value='N') Then
    begin
      try
        QBorrarArticulo.Close;
        QBorrarArticulo.ParamByName('codigo').Value:=codigo;
        QBorrarArticulo.ExecSQL;
        QBorrarArticulo.Close;
        CDSStock.Delete;
      Except
        ShowMessage('No se realizo la Acción...');
      end;
    end
  else
    begin
      try
        QInactivarStk.Close;
        QInactivarStk.ParamByName('codigo').Value:=codigo;
        QInactivarStk.ExecSQL;
        QInactivarStk.Close;
        CDSStock.Delete;
      Except
        ShowMessage('No se realizo la Acción...');
      end;
    end;
end;

procedure TFormLista_Stock_Rub_SubRub.borrarArticuloExecute(Sender: TObject);
var Nodo:TTreeNode;
codigo:String;
I:integer;
LCodigos: TStringList;
x, ContErr: Integer;
begin
  inherited;

  if MessageDlg(' Está por ejecutar una operación de borrado de stock. Los artículos que tengan movimientos serán marcados como inactivos. ¿Desea Continuar?',mtConfirmation,mbyesno,0,mbNo)=mrYes then
    begin
      LCodigos           :=  TStringList.Create;
      LCodigos.Delimiter := ',';
      ContErr            := 0;
      DMMain_FD.fdcGestion.StartTransaction;
      try
        for x := 0 to tvArticulos.SelectionCount -1 do
          begin
            Nodo   := tvArticulos.Selections[x];
            codigo := Trim(Copy(Nodo.Text,1,pos('-',Nodo.Text)-1));
            QVerificaStockConMov.Close;
            QVerificaStockConMov.ParamByName('codigo').Value:= codigo;
            QVerificaStockConMov.Open;
            if (QVerificaStockConMovESTADO.Value='N') Then
              begin
                try
                  QBorrarArticulo.Close;
                  QBorrarArticulo.ParamByName('codigo').Value:=codigo;
                  QBorrarArticulo.ExecSQL;
                  QBorrarArticulo.Close;
                 // tvArticulos.Selections[x].Delete;
                Except
                  Inc(ContErr);
                end;
              end
            else
              begin
                try
                  QInactivarStk.Close;
                  QInactivarStk.ParamByName('codigo').Value:=codigo;
                  QInactivarStk.ExecSQL;
                  QInactivarStk.Close;
                  //tvArticulos.Selections[x].Delete;
                EXCEPT
                  Inc(ContErr);
                end;
              end;
          end;

        if (ContErr=0) or (MessageDlg( IntToStr(ContErr) + ' ERRORES! ¿Confirma de todos modos?',mtConfirmation,mbyesno,0,mbNo)=mrYes)  then
          begin
            DMMain_FD.fdcGestion.Commit;
            if tvArticulos.SelectionCount=1 then
              tvArticulos.Selections[0].Delete
            else
              if tvArticulos.SelectionCount>1 then
                while tvArticulos.SelectionCount>1 do
                  tvArticulos.Selections[0].Delete;

          end
        else
          DMMain_FD.fdcGestion.Rollback;

      finally
        LCodigos.Free;
        Buscar.Execute;
      end;
    end;
end;




procedure TFormLista_Stock_Rub_SubRub.BorrarItem2Execute(Sender: TObject);
var subrubro:String;
Nodo:TTreeNode;
begin
  inherited;
   Screen.Cursor:=crHourGlass;
   Nodo:=tvSubRubros.Selected;
   SubRubro:= Trim(Copy(Nodo.Text,pos('-',Nodo.Text)+1,45));
   SubRubro:= Trim(Copy(subrubro,1,pos('-',subrubro)-1));
   if (tvArticulos.Items.Count<=0) then
     begin
       QBorrarSubRubro.Close;
       QBorrarSubRubro.ParamByName('codigo').Value:=subrubro;
       QBorrarSubRubro.ExecSQL;
       tvSubRubros.Selected.Delete;
       QBorrarSubRubro.Close;
     end
   else
     begin
       Screen.Cursor:=crDefault;
       ShowMessage('borre primero las dependencias e intente de nuevo....');
     end;
   Screen.Cursor:=crDefault;
   Nodo:=tvSubRubros.Selected;
   SubRubro:= Trim(Copy(Nodo.Text,pos('-',Nodo.Text)+1,45));
   SubRubro:= Trim(Copy(subrubro,1,pos('-',subrubro)-1));
   cbSubRubro.KeyValue:=subrubro;
   cbSubRubro.OnClick(sender);
//   if tvSubRubros.Selected. AbsoluteIndex>0 then
//     tvSubRubros.Selected:= tvSubRubros.Selections[tvSubRubros.Selected.AbsoluteIndex-1];
end;

procedure TFormLista_Stock_Rub_SubRub.BorrarItemExecute(Sender: TObject);
var Nodo:TTreeNode;
codigo:String;
I:integer;
borrar:Boolean;
begin
  inherited;
//  for I := tvListado.SelectionCount-1 downto 0 do
    begin
      //Nodo:=tvListado.Selections[i];
      Borrar:=False;
      Nodo:=tvListado.Selected;
      codigo  := Trim( Copy(Nodo.Text,1,pos('-',Nodo.Text)-1));
      if (Nodo.Level=1) then
        begin
          if (Nodo.Count<=0) then
            begin
              QBorrarSubRubro.Close;
              QBorrarSubRubro.ParamByName('codigo').Value:=codigo;
              QBorrarSubRubro.ExecSQL;
              Borrar:=True;
              QBorrarSubRubro.Close;
             // tvListado.Selected.Delete;  //Nodo.Delete[i].Delete;
             // Nodo.Delete;
            end
          else ShowMessage('borre primero las dependencias e intente de nuevo....')
        end
      else
        if (Nodo.Level=0) then
          begin
            if (Nodo.Count<=0) then
              begin
                QBorrarRubro.Close;
                QBorrarRubro.ParamByName('codigo').Value:=codigo;
                QBorrarRubro.ExecSQL;
                Borrar:=True;
                QBorrarRubro.Close;
               // tvListado.Items[i].Delete;
               // Nodo.Free;
              end
            else ShowMessage('borre primero las dependencias e intente de nuevo....')
          end
        else
          if (Nodo.Level>=1) then
            begin
              ShowMessage('Opcion no Programada.......');
              Exit;
            end;

        //i:=0;
    end;
  for I := tvListado.SelectionCount-1 downto 0 do
    if (((Nodo.Level=0) or (Nodo.Level=1)) and (Borrar=True)) then
      tvListado.Selections[i].Delete;
end;

procedure TFormLista_Stock_Rub_SubRub.btConsultarClick(Sender: TObject);
begin
  inherited;
  CDSControlRubSubStock.IndexDefs.Clear;
  CDSControlRubSubStock.IndexName:='';
  CDSControlRubSubStock.Close;
  CDSControlRubSubStock.Open;
end;

procedure TFormLista_Stock_Rub_SubRub.BuscarArticulosPorUsoExecute(
  Sender: TObject);
var Nodo1,Nodo2:TTreeNode;
   N, M, O: Integer;
codigo:string;
ConMovimiento:PConMomviento;
begin
  inherited;
  Screen.Cursor:=crHourGlass;
  CDSStock.Close;
  CDSStock.Params.ParamByName('sub').Value := '*****';//Copy(Nodo1.Text,1,pos('-',Nodo1.Text)-1);
  CDSStock.Open;
//  WHILE NOT (CDSStock.Eof) DO
//    BEGIN
//      Nodo2 := twArticulos.Items.AddChild(Nil,
//      CDSStockCODIGO_STK.AsString + ' - ' + CDSStockDETALLE_STK.Value);
//      if CDSStockCON_MOV.Value=1 then
//        Nodo2.ImageIndex:=1
//      else
//        Nodo2.ImageIndex:=0;
//      if CDSStockCON_MOV.Value=1 then
//        Nodo2.SelectedIndex:=1
//      else
//        Nodo2.SelectedIndex:=0;
//      twArticulos.Selected := Nodo2;
//
//      CDSStock.Next;
//    END;
//  FreeAndNil(ConMovimiento);
  Screen.Cursor:=crDefault;

end;

procedure TFormLista_Stock_Rub_SubRub.Button1Click(Sender: TObject);
begin
  inherited;
  tvSubRubros.AlphaSort;
end;

procedure TFormLista_Stock_Rub_SubRub.CambiarNombreExecute(Sender: TObject);
begin
  inherited;
   if  tvListado.Selected.Level=0 then
     begin
       QCambiarNombreRubro.Close;
       QCambiarNombreRubro.ParamByName('Codigo').Value     := Trim(Edit1.Text);
       QCambiarNombreRubro.ParamByName('descripcion').Value:= Trim(edSubRubro.Text);
       QCambiarNombreRubro.ExecSQL;
       QCambiarNombreRubro.Close;
     end
   else
     if  tvListado.Selected.Level=1 then
       begin
         QCambiarNombreSub.Close;
         QCambiarNombreSub.ParamByName('Codigo').Value     := Trim(Edit1.Text);
         QCambiarNombreSub.ParamByName('descripcion').Value:= Trim(edSubRubro.Text);
         QCambiarNombreSub.ExecSQL;
         QCambiarNombreSub.Close;
       end
     else
       if  tvListado.Selected.Level=2 then
         begin
           QCambiarNombreArt.Close;
           QCambiarNombreArt.ParamByName('Codigo').Value     := Trim(Edit1.Text);
           QCambiarNombreArt.ParamByName('descripcion').Value:= Trim(edSubRubro.Text);
           QCambiarNombreArt.ExecSQL;
           QCambiarNombreArt.Close;
         end;


   tvListado.Items[StrToInt(lbIndex.Caption)];
   tvListado.Selected.Text:=Edit1.text+'-'+edSubRubro.Text;
end;

procedure TFormLista_Stock_Rub_SubRub.SeleccionaItemExecute(Sender: TObject);
var Nodo:TTreeNode;
codigo,Detalle:String;
I:integer;
begin
  inherited;
  Nodo    := tvListado.Items[tvListado.Selected.AbsoluteIndex];
  codigo  := Trim(Copy(Nodo.Text,1,pos('-',Nodo.Text)-1));
  Detalle := Copy(Nodo.Text,pos('-',Nodo.Text)+1,100);
  Detalle := Copy(Detalle,pos('-',Detalle)+1,100);
  Detalle := Trim(Detalle);
  Edit1.Text := Codigo;
  edSubRubro.Text := Detalle;
  lbIndex.Caption:=inttostr(tvListado.Selected.AbsoluteIndex);

end;

procedure TFormLista_Stock_Rub_SubRub.cbSubRubroClick(Sender: TObject);
var Nodo1:TTreeNode;
begin
  inherited;
  tvArticulos.Items.Clear;
  CDSStock.Close;
  CDSStock.Params.ParamByName('sub').Value := cbSubRubro.KeyValue;
  CDSStock.Open;
  CDSStock.First;
  CDSStock.DisableControls;
  WHILE NOT (CDSStock.Eof) DO
    BEGIN
      Nodo1 := tvArticulos.Items.AddChild(Nil,
      CDSStockCODIGO_STK.AsString + '-' + CDSStockDETALLE_STK.Value + '--'+CDSStockRUBRO_STK.Value+'-'+CDSStockSUBRUBRO_STK.Value);

      if CDSStockCON_MOV.Value=1 then
         Nodo1.ImageIndex:=1
      else
        Nodo1.ImageIndex:=0;

      if CDSStockCON_MOV.Value=1 then
        Nodo1.SelectedIndex:=1
      else
        Nodo1.SelectedIndex:=0;

      tvArticulos.Selected := Nodo1;

      //   M := tvListado.Selected.AbsoluteIndex;
      CDSStock.Next;
     END;
  tvArticulos.TopItem;
  CDSStock.EnableControls;
end;

procedure TFormLista_Stock_Rub_SubRub.CDSStockCalcFields(DataSet: TDataSet);
begin
  inherited;
  QVerificaStockConMov.Close;
  QVerificaStockConMov.ParamByName('codigo').Value:=CDSStockCODIGO_STK.Value;
  QVerificaStockConMov.Open;
  if (QVerificaStockConMovESTADO.Value='S') Then
     CDSStockCON_MOV.Value:=1
  else
     CDSStockCON_MOV.Value:=0;
end;

procedure TFormLista_Stock_Rub_SubRub.chSinUsoClick(Sender: TObject);
begin
  inherited;
  CDSStock.Filtered:=False;
  CDSStock.Filter:= 'CON_MOV = 0';
  CDSStock.Filtered:=chSinUso.Checked;
  
end;

procedure TFormLista_Stock_Rub_SubRub.CompraVtaExecute(Sender: TObject);
var Nodo:TTreeNode;
SubRubro:String;
begin
  inherited;
  Nodo :=tvSubRubros.Selected;
  Screen.Cursor:=crHourGlass;
  SubRubro:= Copy(Nodo.Text,pos('-',Nodo.Text)+1,45);
  SubRubro:= Copy(subrubro,1,pos('-',subrubro)-1);
  QCompVtaStock.Close;
  QCompVtaStock.ParamByName('Codigo').Value:=Trim(SubRubro);
  QCompVtaStock.ParamByName('Tipo').Value  :=3;
  QCompVtaStock.ExecSQL;
  Screen.Cursor:=crDefault;
  QCompVtaStock.Close;

end;

procedure TFormLista_Stock_Rub_SubRub.ConsultarExecute(Sender: TObject);
VAR  Nodo1,Nodo1_1: TTreeNode;
  N,X: Integer;
  Detalle:String;
BEGIN
  Nodo1 := NIL;
  tvListado.Items.Clear;
  tvSubRubros.Items.Clear;
  CDSRubro.Close;
  CDSSubRubro.Close;

  CDSRubro.Open;
  CDSRubro.First;
  CDSRubro.DisableControls;
  pdProgress.Min:=0;
  pdProgress.Max:=CDSRubro.RecordCount-1;
  pdProgress.Position:=0;
  pdProgress.Show;
  WHILE NOT (CDSRubro.Eof) DO
    BEGIN
      pdProgress.Position:=pdProgress.Position+1;
      Application.ProcessMessages;
      Nodo1 := tvListado.Items.Add(NIL, CDSRubroCODIGO_RUBRO.AsString + '-' +
        CDSRubroDETALLE_RUBRO.Value);
      tvListado.Selected := Nodo1;
      N := tvListado.Selected.AbsoluteIndex;

      CDSSubRubro.Close;
      CDSSubRubro.Params.ParamByName('rubro').Value := CDSRubroCODIGO_RUBRO.Value;
      CDSSubRubro.Open;
      CDSSubRubro.First;
      CDSSubRubro.DisableControls;
      if tvSubRubros.Canvas.Font.Color=clBlack then
        tvSubRubros.Canvas.Font.Color:=clBlue
      else
        tvSubRubros.Canvas.Font.Color:=clBlack;

      WHILE NOT (CDSSubRubro.Eof) DO
        BEGIN
          Nodo1 := tvListado.Items.AddChild(tvListado.Items[N],
            CDSSubRubroCODIGO_SUBRUBRO.AsString + '-' + CDSSubRubroDETALLE_SUBRUBRO.Value);
          tvListado.Selected := Nodo1;
          Detalle:= CDSRubroDETALLE_RUBRO.AsString;
          while (Pos('-',Detalle))>0 do
            begin
              X:=Pos('-',Detalle);
              delete (Detalle,X,1);
              Insert(' ',Detalle,X);
            end;

          Nodo1_1 := tvSubRubros.Items.AddChild(nil,
          CDSRubroCODIGO_RUBRO.AsString +' ('+ Detalle +') '+  '-' +CDSSubRubroCODIGO_SUBRUBRO.AsString + '-' + CDSSubRubroDETALLE_SUBRUBRO.Value);
          tvSubRubros.Selected:=Nodo1_1;

          CDSSubRubro.Next;
        END;
      CDSSubRubro.EnableControls;
      CDSRubro.Next;
    END;
  CDSRubro.EnableControls;
  pdProgress.Hide;
end;

procedure TFormLista_Stock_Rub_SubRub.CorrigeSubRubExecute(Sender: TObject);
begin
  inherited;
  spToolsArreglaSubRub.Close;
  spToolsArreglaSubRub.ParamByName('SUBRUBRO').AsString:=Trim(edSubRubro.Text);
  spToolsArreglaSubRub.ExecProc;
  spToolsArreglaSubRub.Close;
end;

procedure TFormLista_Stock_Rub_SubRub.dbgControlDblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormStock_2)) then
    FormStock_2:=TFormStock_2.Create(Self);
  FormStock_2.DatoNew:= CDSControlRubSubStockCODIGO_STK.Value;
  FormStock_2.Recuperar.Execute;
  FormStock_2.Show;  
end;

procedure TFormLista_Stock_Rub_SubRub.dbgControlTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var Campo:String;
begin
 try
    Campo := Field.FieldName;
    with dbgControl.DataSource.DataSet as TClientDataSet do
      if IndexFieldNames <> Campo then
        IndexFieldNames := Campo // Ascendente
      else
      begin
        AddIndex(Campo, Campo, [],Campo); // Descendente
        IndexName := Campo;
      end;
  except // Para que no salte una excepción si la columna es un campo calculado.
  end;
end;

procedure TFormLista_Stock_Rub_SubRub.dbgStockDblClick(Sender: TObject);
begin
  inherited;
  if FormStock_2=nil then
    FormStock_2:=TFormStock_2.Create(Self);
  FormStock_2.DatoNew := dbgStock.DataSource.DataSet.FieldByName('CODIGO_STK').Value;
  FormStock_2.Recuperar.Execute;
  FormStock_2.Show;
end;

procedure TFormLista_Stock_Rub_SubRub.dbgStockDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  bitmap : TBitmap;
  fixRect : TRect;
  bmpWidth : integer;
  imgIndex : integer;
begin
  fixRect := Rect;
 //Personalizar imagen en DBGrid..... Poner Imagen en un DBGrid
  if Column.Field = CDSStockCON_MOV then
  begin
    //adding some logic to grab the required image
    if CDSStockCON_MOV.Value = 0 then
      imgIndex := 0
    else
      imgIndex := 1;


    bitmap := TBitmap.Create;
    try
      //grab the image from the ImageList
      //(using the "Salary" field's value)
      ImageList2.GetBitmap(imgIndex,bitmap);
      //Fix the bitmap dimensions
      bmpWidth := (Rect.Bottom - Rect.Top);
      fixRect.Right := Rect.Left + bmpWidth;
      //draw the bitmap
      dbgStock.Canvas.StretchDraw(fixRect,bitmap);
    finally
      bitmap.Free;
    end;

    // reset the output rectangle,
    // add space for the graphics
    fixRect := Rect;
    fixRect.Left := fixRect.Left + bmpWidth;
  end;
end;

procedure TFormLista_Stock_Rub_SubRub.dbgStockKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if ((Key=VK_DELETE) and (Not(CDSStock.IsEmpty))) then
    BorrarArticuloDos.Execute;
end;

procedure TFormLista_Stock_Rub_SubRub.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormLista_Stock_Rub_SubRub.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  Consultar.Execute;
  QSubRub.Open;
  pcDatos.ActivePageIndex:=0;
  JvDBFindEdit1.FindMode :=fmAnyPos;
  JvDBFindEdit1.FindStyle:=fsFilter;
  JvDBFindEdit2.FindMode :=fmAnyPos;
  JvDBFindEdit2.FindStyle:=fsFilter;
  CorrigeSubRub.Enabled:=DMMain_FD.UsuarioActivo='master';
end;

procedure TFormLista_Stock_Rub_SubRub.FormDestroy(Sender: TObject);
begin
  inherited;
  FormLista_Stock_Rub_SubRub:=nil;
end;

procedure TFormLista_Stock_Rub_SubRub.InactivarArticuloExecute(Sender: TObject);
var Nodo:TTreeNode;
codigo:String;
I:integer;
begin
  inherited;
  Nodo   := tvArticulos.Selected;
  codigo := Copy(Nodo.Text,1,pos('-',Nodo.Text)-1);
  QVerificaStockConMov.Close;
  QVerificaStockConMov.ParamByName('codigo').Value:= codigo;
  QVerificaStockConMov.Open;
  if (QVerificaStockConMovESTADO.Value='S') Then
    begin
      try
        QInactivarStk.Close;
        QInactivarStk.ParamByName('codigo').Value:=codigo;
        QInactivarStk.ExecSQL;
        QInactivarStk.Close;
        tvArticulos.Selected.Delete;
      Except
        ShowMessage('No se realizo la Acción...');
      end;
    end
  else
    ShowMessage('Articulo con Movimientos , no se puede borrar...');
end;


procedure TFormLista_Stock_Rub_SubRub.tvArticulosDblClick(Sender: TObject);
var Nodo:TTreeNode;
Codigo:String;
begin
  inherited;
  Nodo   := tvArticulos.Selected;
  codigo := Trim(Copy(Nodo.Text,1,pos('-',Nodo.Text)-1));
  if Not(Assigned(FormStock_2)) then
    FormStock_2:=TFormStock_2.Create(Self);
  FormStock_2.DatoNew:=Codigo;
  FormStock_2.Recuperar.Execute;
  FormStock_2.Show;
end;

procedure TFormLista_Stock_Rub_SubRub.tvListadoClick(Sender: TObject);
var Nodo1:TTreeNode;
   N, M, O: Integer;
begin
  inherited;
  Nodo1:=tvListado.Selected;
  if (Nodo1.Count<=0) and (Nodo1.Level=1) then
    begin
      N := tvListado.Selected.AbsoluteIndex;
      tvListado.Selected := Nodo1;

      CDSStock.Close;
      CDSStock.Params.ParamByName('sub').Value := Copy(Nodo1.Text,1,pos('-',Nodo1.Text)-1);
      CDSStock.Open;
      CDSStock.DisableControls;

      WHILE NOT (CDSStock.Eof) DO
        BEGIN
          Nodo1 := tvListado.Items.AddChild(tvListado.Items[N],
          CDSStockCODIGO_STK.AsString + '-' + CDSStockDETALLE_STK.Value);
          tvListado.Selected := Nodo1;
          CDSStock.Next;
        END;
      CDSStock.EnableControls;

    end;

   SeleccionaItem.Execute;
end;



procedure TFormLista_Stock_Rub_SubRub.tvListadoCustomDrawItem(
  Sender: TCustomTreeView; Node: TTreeNode; State: TCustomDrawState;
  var DefaultDraw: Boolean);
begin
  inherited;
 if Node.Level=0 then
    begin
      Sender.Canvas.Font.Color:=clBlue;
      Sender.Canvas.Font.Style:=[fsBold];
    end
 else
   if Node.Level=1 then
      begin
        Sender.Canvas.Font.Color:=clGreen;
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

procedure TFormLista_Stock_Rub_SubRub.tvListadoDragDrop(Sender, Source: TObject;
  X, Y: Integer);
var
  TargetNode, SourceNode : TTreeNode;
begin
  with tvListado do
  begin
    TargetNode := GetNodeAt(X,Y); // Get target node
    SourceNode := Selected;
   if (SourceNode.Level=2) and (TargetNode.Level=1) then
     begin
       if (TargetNode = nil) then
         begin
           EndDrag(False);
           Exit;
         end;
       MoveNodo(TargetNode,SourceNode);
       SourceNode.Free;
     end;
  end;
end;

procedure TFormLista_Stock_Rub_SubRub.tvListadoDragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
VAR Nodo:TTreeNode;
begin
  inherited;
  if (Sender = tvListado) then
    Accept:=True;
  Nodo:=tvListado.Selected;
  if Nodo.Level<>2 then
    Accept:=False;
  if (y < 14) then {On the upper edge - should scroll up }
    SendMessage(tvListado.Handle, WM_VSCROLL, SB_LINEUP, 0)
  else
    if (tvListado.Height - y < 14) then { On the lower edge - should scroll down }
      SendMessage(tvListado.Handle, WM_VSCROLL, SB_LINEDOWN, 0);

end;


procedure TFormLista_Stock_Rub_SubRub.tvSubRubrosDragDrop(Sender,
  Source: TObject; X, Y: Integer);
var
  TargetNode, SourceNode : TTreeNode;
  nodeTmp : TTreeNode;
  i,Sel : Integer;
  codigo,rubro,subrubro:String;
  ListaNodos:TStringList;
begin
  ListaNodos   := TStringList.Create;
  Screen.Cursor:= crHourGlass;

  for Sel := tvArticulos.Items.Count - 1 downto 0 do
  //for Sel := tvArticulos.SelectionCount - 1  downto 0 do

    begin
      if (tvArticulos.Items[sel].Selected)then
        begin
       //   tvArticulos.Selections[sel];
          with tvSubRubros do
          begin
            TargetNode := GetNodeAt(X,Y); // Get target node
//            SourceNode := tvArticulos.Selected;
            SourceNode := tvArticulos.Items[sel];

            if (TargetNode = nil) then
              begin
                EndDrag(False);
                Screen.Cursor:=crDefault;
                Exit;
              end
            else
              begin
             //   nodeTmp := Items.AddChild(TargetNode,SourceNode.Text);
                codigo  := Trim(Copy(SourceNode.Text,1,pos('-',SourceNode.Text)-1));
                subrubro:= Trim(Copy(TargetNode.Text,pos('-',TargetNode.Text)+1,5));
                rubro   := Trim(Copy(SubRubro,1,3));

                spCambiaCodigo.Close;
                spCambiaCodigo.Params.ParamByName('Rubro').AsString   :=rubro;
                spCambiaCodigo.Params.ParamByName('Codigo').AsString  :=codigo;
                spCambiaCodigo.Params.ParamByName('SubRubro').AsString:=subrubro;
                spCambiaCodigo.ExecProc;
                spCambiaCodigo.Close;
            //    SourceNode.Free;
                ListaNodos.Add(IntToStr(Sel));
              end;
          end;
        end;
    end;
  for Sel := 0 to ListaNodos.Count-1 do
       tvArticulos.Items[StrToInt(ListaNodos[sel])].Delete;


  FreeAndNil(ListaNodos);
  Screen.Cursor:=crDefault;
end;

procedure TFormLista_Stock_Rub_SubRub.tvSubRubrosDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  if (Sender = tvArticulos) then
    Accept:=True;
  if (y < 14) then {On the upper edge - should scroll up }
    SendMessage(tvSubRubros.Handle, WM_VSCROLL, SB_LINEUP, 0)
  else
    if (tvSubRubros.Height - y < 14) then { On the lower edge - should scroll down }
      SendMessage(tvSubRubros.Handle, WM_VSCROLL, SB_LINEDOWN, 0);
end;



end.
