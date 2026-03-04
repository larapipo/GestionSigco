{$D+}
unit ULecturaRelojPersonal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  AdvUtil, Vcl.Grids, AdvObj, BaseGrid, AdvGrid,DateUtils, JvDialogs, Vcl.Menus,
  AdvGridWorkbook, AdvSprd, AdvOfficeButtons, AdvGlowButton, AdvDateTimePicker,
  Vcl.DBGrids, Datasnap.DBClient, AdvBadge;

type
  TFormLectorRelojPersonal = class(TFormABMBase)
    pnPie: TPanel;
    pnCabecera: TPanel;
    CargarExcel: TAction;
    OpenDialog: TOpenDialog;
    pcLectura: TPageControl;
    pagMovimientos: TTabSheet;
    sgLectura: TAdvStringGrid;
    pagResumen: TTabSheet;
    sgResumen: TAdvStringGrid;
    GenerarResumen: TAction;
    ToolButton1: TToolButton;
    BitBtn1: TBitBtn;
    SaveDialog1: TSaveDialog;
    PopupMenu1: TPopupMenu;
    GenerarResumen1: TMenuItem;
    pagPersonal: TTabSheet;
    gwPersonal: TAdvGridWorkbook;
    chbFiltros: TAdvOfficeCheckBox;
    edDesde: TAdvDateTimePicker;
    edHasta: TAdvDateTimePicker;
    PopupMenu2: TPopupMenu;
    ExportaraExcel1: TMenuItem;
    ReloCecarri: TTabSheet;
    DBGrid1: TDBGrid;
    btLecturaArchivo: TButton;
    ClientDataSet: TClientDataSet;
    DataSource: TDataSource;
    ClientDataSetNOMBRE: TStringField;
    ClientDataSetFECHA: TDateField;
    ClientDataSetCODIGO: TStringField;
    ClientDataSetHORA_1: TTimeField;
    ClientDataSetHORA_2: TTimeField;
    ClientDataSetHORA_3: TTimeField;
    ClientDataSetHORA_4: TTimeField;
    ClientDataSetTOTAL_HORAS: TStringField;
    AdvBadgeGlowButton1: TAdvBadgeGlowButton;
    AdvBadgeGlowButton2: TAdvBadgeGlowButton;
    ExportarExcel: TAction;
    procedure btLecturaArchivoClick(Sender: TObject);
    procedure ClientDataSetCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure pcLecturaChange(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure CargarExcelExecute(Sender: TObject);
    procedure GenerarResumenExecute(Sender: TObject);
    procedure ExportarExcelExecute(Sender: TObject);
  private

    procedure chbFiltrosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure gwPersonalGridGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure gwPersonalGridGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure sgLecturaGetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: string);
    procedure sgLecturaGroupCalc(Sender: TObject; ACol, FromRow, ToRow: Integer;
      var Res: Double);
    procedure sgResumenGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    function LeerEmpledo(Codigo: string): string;
    { Private declarations }
  public
    { Public declarations }
    Fecha1,Fecha2:Double;
    procedure CargarAgrupadoEnGrid(const AFileName: string;
      AClientDataSet: TClientDataSet);
    procedure ArmarGrillas;
   
  end;

var
  FormLectorRelojPersonal: TFormLectorRelojPersonal;

implementation

{$R *.dfm}

uses UDMain_FD;

function TFormLectorRelojPersonal.LeerEmpledo(Codigo:string):string;
var Q:TFDQuery;
begin
  Q            := TFdQuery.Create(nil);
  Q.Connection := DMMain_FD.fdcGestion;
  Q.SQL.Text   := 'select p.nombre from personal p where p.codigo_reloj=:codigo';
  Q.ParamByName('codigo').Value:=Codigo;
  Q.Open;
  if (Not(Q.IsEmpty)) then
    Result:=Q.Fields[0].AsString
  else
    Result:='';
  q.Close;
  FreeAndNil(q);
end;

procedure TFormLectorRelojPersonal.btLecturaArchivoClick(Sender: TObject);
begin
  inherited;
  CargarAgrupadoEnGrid('C:\Users\Usuario\Desktop\Personal Cecarri\archivo.txt', ClientDataSet);
end;

procedure TFormLectorRelojPersonal.CargarAgrupadoEnGrid(const AFileName: string; AClientDataSet: TClientDataSet);
var
  SL    : TStringList;
  Line  : string;
  Parts : TArray<string>;
  Codigo: String;
  Fecha : TDate;
  Hora  : TTime;
begin
  AClientDataSet.Open;
  SL := TStringList.Create;
  try
    SL.LoadFromFile(AFileName);
    for Line in SL do
    begin
      // Separar por tabulador
      Parts := Line.Split([#9]);
      if Length(Parts) >= 2 then
      begin
        Codigo := Parts[0];// StrToIntDef(Parts[0], 0);
        Fecha  := StrToDateTime(Copy(Parts[1], 1, 10));
        Hora   := StrToDateTime(Copy(Parts[1], 12, 5));

        // Buscar si ya existe fila para ese código+fecha
        if not AClientDataSet.Locate('CODIGO;FECHA', VarArrayOf([Codigo, Fecha]), []) then
        begin
          AClientDataSet.Append;
          AClientDataSet.FieldByName('CODIGO').AsString    := Codigo;
          AClientDataSet.FieldByName('FECHA').AsDateTime   := Fecha;
          AClientDataSet.FieldByName('HORA_1').AsDateTime  := Hora;
          AClientDataSet.FieldByName('NOMBRE').AsString    := LeerEmpledo(Codigo);

          AClientDataSet.Post;
        end
        else
        begin
          AClientDataSet.Edit;
          if AClientDataSet.FieldByName('HORA_2').IsNull then
            AClientDataSet.FieldByName('HORA_2').AsDateTime := Hora
          else if AClientDataSet.FieldByName('HORA_3').IsNull then
            AClientDataSet.FieldByName('HORA_3').AsDateTime := Hora
          else if AClientDataSet.FieldByName('HORA_4').IsNull then
            AClientDataSet.FieldByName('HORA_4').AsDateTime := Hora;
          AClientDataSet.Post;
        end;
      end;
    end;
  finally
    SL.Free;
  end;
end;


procedure TFormLectorRelojPersonal.CargarExcelExecute(Sender: TObject);
var
  I: Integer;
  Aux,Flag:String;
  Cont:Byte;DifTiempo:Double;
  F1,F2:TDateTime;
begin
  inherited;
  sgLectura.ClearAll;
  sgResumen.ClearAll;
  gwPersonal.CleanupInstance;
  Screen.Cursor:=crHourGlass;
  if OpenDialog.Execute then
    if OpenDialog.FileName<>'' then
      begin
        sgLectura.RowCount  := 2;
        sgLectura.FixedRows := 1;
        sgLectura.LoadFromXLS(OpenDialog.FileName);
        sgLectura.Options:=sgLectura.Options+[goColSizing];
      end;
  sgLectura.AddColumn;
  sgLectura.AddColumn;
  sgLectura.cells[sgLectura.ColCount-2,0]:= 'Hora';
  sgLectura.cells[sgLectura.ColCount-1,0]:= 'Fecha';

  sgLectura.AddColumn;
  sgLectura.cells[sgLectura.ColCount-1,0]:= 'Referencia';

  sgLectura.AddColumn;
  sgLectura.cells[sgLectura.ColCount-1,0]:= 'Orden';


  for I := 1 to sgLectura.RowCount-1 do
    begin
      sgLectura.cells[sgLectura.ColCount-4,I]  := FormatDateTime('hh:mm',sgLectura.DateTimes[2,i]);
      sgLectura.cells[sgLectura.ColCount-3,I]  := FormatDateTime('dd/mm/yyyy',sgLectura.DateTimes[2,i]);
      sgLectura.cells[sgLectura.ColCount-2,I]  := sgLectura.Cells[4,i] +
                                                  FormatDateTime('yyyymmdd',sgLectura.DateTimes[2,i]) +
                                                  sgLectura.Cells[0,i];
      sgLectura.Floats[sgLectura.ColCount-1,I] := sgLectura.Dates[6,i];

    end;
  Application.ProcessMessages;
  // aca saco los registro 2 que son las entredas y salidas del break
  i:=0;
  while i < sgLectura.rowcount-1  do
    begin
      if sgLectura.Cells[4,i]='2' then
        begin
          sgLectura.RemoveRows(i,1);
          i:=0;
        end;
      i:=i+1;
    end;
  //***************************************************************
  Application.ProcessMessages;
  // aca saco los registro repetidos entredas y salidas
  i:=1;
  while i < sgLectura.rowcount-2  do
    begin
      DifTiempo:=sgLectura.Times[5,i]-sgLectura.Times[5,i+1];
      if (sgLectura.Cells[0,i]=sgLectura.Cells[0,i+1]) and
         (sgLectura.Cells[4,i]=sgLectura.Cells[4,i+1]) and
         (DifTiempo<=0) and
         (sgLectura.Cells[6,i]=sgLectura.Cells[6,i+1])then
        begin
          sgLectura.RemoveRows(i,1);
          i:=1;
        end;
      i:=i+1;
    end;
  //***************************************************************
  Application.ProcessMessages;

  flag:=Trim(sgLectura.Cells[6,1]);
  Cont:=0;
  for I := 1 to sgLectura.RowCount -2 do
    begin
      if Trim(sgLectura.Cells[6,I])=flag then
        begin
          sgLectura.Cells[sgLectura.ColCount-2,I]:=IntToStr(Cont)+''+sgLectura.Cells[sgLectura.ColCount-2,I];
          Cont:=Cont+1;
        end
      else
        begin
          Cont:=0;
          flag:=Trim(sgLectura.Cells[6,I]);
          sgLectura.Cells[sgLectura.ColCount-2,I]:=IntToStr(Cont)+''+sgLectura.Cells[sgLectura.ColCount-2,I];
          Cont:=Cont+1;
        end;
    end;
  Application.ProcessMessages;

  sgLectura.AutoSizeColumns(true,10);
  if sgLectura.Cells[0,sgLectura.RowCount-1]='' then
    sgLectura.RowCount:=sgLectura.RowCount-1;

  //if MessageDlg('generar resumen de Movimientos',mtConfirmation,mbYesNo,0)=mrYes then

  if sgLectura.RowCount>3 then
    begin
      GenerarResumen.Execute;
      pcLectura.ActivePageIndex:=1;
    end;

  Screen.Cursor:=crDefault;

end;

procedure TFormLectorRelojPersonal.ArmarGrillas;
VAR c,r,r2,c2:Integer;
CantDias:Integer;
id      :string;
FirstDate:TDateTime;
begin
  inherited;

  sgResumen.ColCount  := 2;
  id                  := '';
  r2                  := 2;
  edDesde.Date        := FloatToDateTime(sgLectura.ColumnMin(8));// (FechaStr);// sgLectura.ColumnMin(2,1,10));
  edHasta.Date        := FloatToDateTime(sgLectura.ColumnMax(8)); // inc ( sgLectura.ColumnMax(2,1,10));

  Cursor  :=crHourGlass;
  gwPersonal.Sheets.Clear;
  // aca lleno los Empleados
  for r := 2 to sgLectura.RowCount-1 do
    begin
      if sgLectura.Cells[0,r]<>id then
        begin
          sgResumen.AddRow;
          sgResumen.Cells[0,r2]           := sgLectura.Cells[0,r];
          sgResumen.Cells[1,r2]           := sgLectura.Cells[1,r];
          sgResumen.Alignments[0,r2]      := taRightJustify;
          sgResumen.Alignments[1,r2]      := taLeftJustify;

          gwPersonal.Sheets.Add.Name      := sgLectura.Cells[1,r];
          gwPersonal.ActiveSheet          := gwPersonal.Sheets.Count-1;
          gwPersonal.Grid.RowCount        := 4;
          gwPersonal.Grid.Cells[0,0]      := sgLectura.Cells[1,r];
          gwPersonal.Grid.MergeCells(0,0,6,1);

          gwPersonal.Grid.Cells[1,1]      := '1er Turno';
          gwPersonal.Grid.Cells[3,1]      := '2do Turno';
          gwPersonal.Grid.MergeCells(1,1,2,1);
          gwPersonal.Grid.MergeCells(3,1,2,1);
          gwPersonal.Grid.Cells[0,2]      := 'Fecha';
          gwPersonal.Grid.Cells[1,2]      := 'Entrada';
          gwPersonal.Grid.Cells[2,2]      := 'Salida';
          gwPersonal.Grid.Cells[3,2]      := 'Entrada';
          gwPersonal.Grid.Cells[4,2]      := 'Salida';

          gwPersonal.Grid.Cells[5,2]      := 'Total';
          gwPersonal.Grid.Cells[6,2]      := 'Diferencia';

          gwPersonal.Grid.Alignments[1,1] := taCenter;
          gwPersonal.Grid.Alignments[3,1] := taCenter;

          gwPersonal.Grid.Alignments[0,2] := taCenter;
          gwPersonal.Grid.Alignments[1,2] := taCenter;
          gwPersonal.Grid.Alignments[2,2] := taCenter;
          gwPersonal.Grid.Alignments[3,2] := taCenter;
          gwPersonal.Grid.Alignments[4,2] := taCenter;
          gwPersonal.Grid.Alignments[5,2] := taCenter;
          gwPersonal.Grid.Alignments[6,2] := taCenter;
          gwPersonal.Grid.AutoSizeColumns(True,40);
          gwPersonal.Grid.FixedRows     := 3;
          id := sgLectura.Cells[0,r];
          r2 := r2+1;
        end;
    end;

  CantDias                   := DaysBetween(edDesde.Date,edHasta.Date)+1;
  sgResumen.ColCount         := (sgResumen.ColCount)+(CantDias*6);
  FirstDate                  := edDesde.Date;
  for c := 2 to (sgResumen.ColCount)-1 do
    begin
      if (c mod 6)=0 then
        begin
          sgResumen.Cells[c-4,0]     := FormatDateTime('dd/MM/yyyy', FirstDate);
          sgResumen.Alignments[c-4,0]:= taCenter;
          sgResumen.MergeCells(c-4,0,6,1);

          sgResumen.Cells[c-4,1]      := 'Entrada';
          sgResumen.Cells[c-3,1]      := 'Salida';
          sgResumen.Cells[c-2,1]      := 'Entrada';
          sgResumen.Cells[c-1,1]      := 'Salida';
          sgResumen.Cells[c  ,1]      := 'Total';
          sgResumen.Cells[c+1,1]      := 'Dife';

          sgResumen.Alignments[c-4,1] := taCenter;
          sgResumen.Alignments[c-3,1] := taCenter;
          sgResumen.Alignments[c-2,1] := taCenter;
          sgResumen.Alignments[c-1,1] := taCenter;
          sgResumen.Alignments[c  ,1] := taCenter;
          sgResumen.Alignments[c+1,1] := taCenter;

          FirstDate                   := IncDay(FirstDate,1);
        end;
      gwPersonal.ActiveSheet          := gwPersonal.ActiveSheet+1;
    end;


  sgResumen.AutoSizeColumns(true,20);
  sgResumen.FixedRows:=2;
end;


procedure TFormLectorRelojPersonal.chbFiltrosClick(Sender: TObject);
begin
  inherited;
  if pcLectura.ActivePageIndex=0 then
    begin
      if chbFiltros.Checked=False Then
        begin
          sgLectura.Filter.Clear;
          sgLectura.FilterActive:=False;
        end;
      sgLectura.FilterDropDownAuto:=chbFiltros.Checked;
    end;

  if pcLectura.ActivePageIndex=1 then
    begin
     if chbFiltros.Checked=False Then
        begin
          sgResumen.Filter.Clear;
          sgResumen.FilterActive:=False;
        end;
      sgResumen.FilterDropDownAuto:=chbFiltros.Checked;

    end;
end;

procedure CalcularHorasDia(DataSet: TDataSet; out Horas, Minutos: Integer);
var
  Ingreso1, Salida1, Ingreso2, Salida2: TDateTime;
  TotalHoras: Double;
begin
  Horas := 0;
  Minutos := 0;
  TotalHoras := 0;

  // Primer bloque
  if (not DataSet.FieldByName('Hora_1').IsNull) and (not DataSet.FieldByName('Hora_2').IsNull) then
    TotalHoras := TotalHoras + ((DataSet.FieldByName('Hora_2').AsDateTime -
                                 DataSet.FieldByName('Hora_1').AsDateTime) * 24);

  // Segundo bloque
  if (not DataSet.FieldByName('Hora_3').IsNull) and (not DataSet.FieldByName('Hora_4').IsNull) then
    TotalHoras := TotalHoras + ((DataSet.FieldByName('Hora_4').AsDateTime -
                                 DataSet.FieldByName('Hora_3').AsDateTime) * 24);

  // Convertir a horas + minutos
  Horas := Trunc(TotalHoras);
  Minutos := Round(Frac(TotalHoras) * 60);
end;


procedure TFormLectorRelojPersonal.ClientDataSetCalcFields(DataSet: TDataSet);
var
  Horas, Minutos: Integer;
begin
  CalcularHorasDia(DataSet, Horas, Minutos);
  if (Horas > 0) or (Minutos > 0) then
    DataSet.FieldByName('TOTAL_HORAS').AsString := Format('%d h %d min', [Horas, Minutos])
  else
    DataSet.FieldByName('TOTAL_HORAS').AsString := '';

end;

procedure TFormLectorRelojPersonal.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;



procedure TFormLectorRelojPersonal.ExportarExcelExecute(Sender: TObject);
begin
  inherited;
  if pcLectura.ActivePageIndex=1 then
    if SaveDialog1.Execute then
      sgResumen.SaveToXLS(SaveDialog1.FileName);
  if pcLectura.ActivePageIndex=2 then
    if SaveDialog1.Execute then
      gwPersonal.Grid.SaveToXLS(SaveDialog1.FileName);
end;

procedure TFormLectorRelojPersonal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;


procedure TFormLectorRelojPersonal.FormCreate(Sender: TObject);
begin
  inherited;
   AutoSize:=False;
end;

procedure TFormLectorRelojPersonal.FormDestroy(Sender: TObject);
begin
  inherited;
  FormLectorRelojPersonal:=nil;
end;

procedure TFormLectorRelojPersonal.FormShow(Sender: TObject);
begin
  inherited;
  if FormLectorRelojPersonal<>nil then
    pcLectura.ActivePageIndex:=0;
end;

procedure TFormLectorRelojPersonal.GenerarResumenExecute(Sender: TObject);
VAR c,r,r2,c2:Integer;
Loc     :TPoint;
id      :string;
Prefijo :String;
Cadena  :String;
FechaStr     :String;
Hora1,Hora2:TTime;
begin
  inherited;
  ArmarGrillas;

  for r := 2 to sgResumen.RowCount do
    begin
      Loc    := Point(7,-1);
      C:=2;
      while c < sgResumen.ColCount do
        begin
          Loc    := Point(6,-1);
          Cadena := Trim('00'+ FormatDateTime('yyyymmdd', sgResumen.DateTimes[C,0]) + sgResumen.Cells[0,r]);
          loc    := sgLectura.Find(loc,cadena,[fnMatchStart]);
          if (loc.X>-1) and (loc.Y>-1) and (Trim(sgLectura.cells[5,loc.y])<>'') then
            sgResumen.cells[C,r]:=(sgLectura.cells[5,loc.y]);

          Cadena := Trim('11'+ FormatDateTime('yyyymmdd', sgResumen.DateTimes[C,0]) + sgResumen.Cells[0,r]);
          loc    := sgLectura.Find(loc,cadena,[fnMatchStart]);
          if (loc.X>-1) and (loc.Y>-1) and (Trim(sgLectura.cells[5,loc.y])<>'') then
            sgResumen.cells[C+1,r]:=(sgLectura.cells[5,loc.y]);

          Cadena := Trim('20'+ FormatDateTime('yyyymmdd', sgResumen.DateTimes[C,0]) + sgResumen.Cells[0,r]);
          loc    := sgLectura.Find(loc,cadena,[fnMatchStart]);
          if (loc.X>-1) and (loc.Y>-1) and (Trim(sgLectura.cells[5,loc.y])<>'') then
            sgResumen.cells[C+2,r]:=(sgLectura.cells[5,loc.y]);

          Cadena := Trim('31'+ FormatDateTime('yyyymmdd', sgResumen.DateTimes[C,0]) + sgResumen.Cells[0,r]);
          loc    := sgLectura.Find(loc,cadena,[fnMatchStart]);
          if (loc.X>-1) and (loc.Y>-1) and (Trim(sgLectura.cells[5,loc.y])<>'') then
            sgResumen.cells[C+3,r]:=(sgLectura.cells[5,loc.y]);

          if (sgResumen.Cells[c,r]<>'') and (sgResumen.Cells[c+1,r]<>'') then
            Hora1 := (sgResumen.Times[C+1,r] - sgResumen.Times[C,r])
          else
            Hora1:=0;

          if (sgResumen.Cells[c+2,r]<>'') and (sgResumen.Cells[c+3,r]<>'') then
            Hora2 := (sgResumen.Times[C+3,r] - sgResumen.Times[C+2,r])
          else
            Hora2 :=0;

          if (Hora2>0) or (Hora1>0) then
            sgResumen.Cells[C+4,r]:= FormatDateTime('HH:MM', FloatToDateTime ( Hora1 + Hora2));

          sgResumen.Alignments[C,  r] := taCenter;
          sgResumen.Alignments[C+1,r] := taCenter;
          sgResumen.Alignments[C+2,r] := taCenter;
          sgResumen.Alignments[C+3,r] := taCenter;
          sgResumen.Alignments[C+4,r] := taCenter;
          c:=C+6;
        end;
    end;


  id                     := sgLectura.Cells[0,1];
  gwPersonal.ActiveSheet := 0;    // me posociono en la primera menos 1
  FechaStr               := sgLectura.Cells[6,1];//'';
  for r := 1 to sgLectura.RowCount-1 do
    begin
      if id <> sgLectura.Cells[0,r] then
        begin
          id       := sgLectura.Cells[0,r];
          FechaStr := sgLectura.Cells[6,r];// '';
          gwPersonal.ActiveSheet:= gwPersonal.ActiveSheet+1;
        end;

      if id = sgLectura.Cells[0,r] then
        begin
          if FechaStr<>sgLectura.Cells[6,r] then
            begin
              FechaStr :=sgLectura.Cells[6,r];
              gwPersonal.Grid.AddRow;
            end;

          if FechaStr=sgLectura.Cells[6,r] then
            begin
              gwPersonal.Grid.Cells[0,gwPersonal.Grid.RowCount-1]    := sgLectura.Cells[6,r];

              if copy(sgLectura.Cells[7,r],1,2)='00' then
                gwPersonal.Grid.Cells[1,gwPersonal.Grid.RowCount-1]  := sgLectura.Cells[5,r]
              else
                if copy(sgLectura.Cells[7,r],1,2)='11' then
                  gwPersonal.Grid.Cells[2,gwPersonal.Grid.RowCount-1] := sgLectura.Cells[5,r]
                else
                 if copy(sgLectura.Cells[7,r],1,2)='20' then
                    gwPersonal.Grid.Cells[3,gwPersonal.Grid.RowCount-1] := sgLectura.Cells[5,r]
              else
                if copy(sgLectura.Cells[7,r],1,2)='31' then
                  gwPersonal.Grid.Cells[4,gwPersonal.Grid.RowCount-1] := sgLectura.Cells[5,r];

              begin
                if (gwPersonal.Grid.cells[1,gwPersonal.Grid.RowCount-1]<>'') and (gwPersonal.Grid.cells[2,gwPersonal.Grid.RowCount-1]<>'') then
                  Hora1:= (gwPersonal.Grid.Times[2,gwPersonal.Grid.RowCount-1]) - (gwPersonal.Grid.Times[1,gwPersonal.Grid.RowCount-1])
                else
                  Hora1:=0;

                if (gwPersonal.Grid.cells[4,gwPersonal.Grid.RowCount-1]<>'') and (gwPersonal.Grid.cells[3,gwPersonal.Grid.RowCount-1]<>'') then
                  Hora2:= (gwPersonal.Grid.Times[4,gwPersonal.Grid.RowCount-1]) - (gwPersonal.Grid.Times[3,gwPersonal.Grid.RowCount-1])
                else
                  Hora2:=0;

                if Abs(Hora1+Hora2)>0 then
                  gwPersonal.Grid.Cells[5,gwPersonal.Grid.RowCount-1] := FormatDateTime('HH:MM',(Hora1+Hora2));

                if (Trim(gwPersonal.Grid.Cells[4,gwPersonal.Grid.RowCount-1])<>'')  then
                  gwPersonal.Grid.Cells[7,gwPersonal.Grid.RowCount-1] :=
                    FormatDateTime('HH:MM',( StrToTime('08:00') - gwPersonal.Grid.Times[4,gwPersonal.Grid.RowCount-1]));
              end;
            end;

        end;

      //FechaStr:=sgLectura.Cells[0,6];
    end;

  gwPersonal.ActiveSheet     :=0;
  Cursor  := crDefault;

end;

procedure TFormLectorRelojPersonal.gwPersonalGridGetAlignment(Sender: TObject;
  ARow, ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  inherited;
  if Acol>0 then
    HAlign:= taCenter;

end;

procedure TFormLectorRelojPersonal.gwPersonalGridGetCellColor(Sender: TObject;
  ARow, ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
  inherited;
  if (ACol=5) and (Arow>2) then
    if Trim(gwPersonal.Grid.Cells[ACol,ARow])<>'' Then
      begin
        if gwPersonal.Grid.Floats[ACol,ARow]>=8 then
          AFont.Color:=clBlue
        else
          if gwPersonal.Grid.Floats[ACol,ARow]<8 then
              AFont.Color:=clRed;
      end;
end;


procedure TFormLectorRelojPersonal.pcLecturaChange(Sender: TObject);
begin
  inherited;
  if FormLectorRelojPersonal<>nil then
    begin
      pnPie.Visible:=pcLectura.ActivePageIndex<>3;
    end;
end;

procedure TFormLectorRelojPersonal.SalirExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFormLectorRelojPersonal.sgLecturaGetFormat(Sender: TObject;
  ACol: Integer; var AStyle: TSortStyle; var aPrefix, aSuffix: string);
begin
  inherited;
  if ACol=2 then
    AStyle :=ssDateTime;
  if ACol=5 then
    AStyle :=ssTime;

end;

procedure TFormLectorRelojPersonal.sgLecturaGroupCalc(Sender: TObject; ACol,
  FromRow, ToRow: Integer; var Res: Double);
begin
  inherited;
  if ACol=2 then
    Res:=sgLectura.ColumnMin(ACol);
end;

procedure TFormLectorRelojPersonal.sgResumenGetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
  inherited;
  if ACol>0 then
    if (ACol mod 6)= 0 then
      if sgResumen.Floats[ACol,ARow]>=8 then
        AFont.Color:=clBlue
      else
        if sgResumen.Floats[ACol,ARow]<8 then
          AFont.Color:=clRed;

//        AFont.Color:=clBlack;
end;

end.
