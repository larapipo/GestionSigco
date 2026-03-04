object FormTCredito: TFormTCredito
  Left = 140
  Top = 156
  BorderStyle = bsSingle
  Caption = 'Tarjetas de Credito'
  ClientHeight = 188
  ClientWidth = 460
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 460
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Código'
    end
    object Label2: TLabel
      Left = 99
      Top = 9
      Width = 37
      Height = 13
      Caption = 'Nombre'
    end
    object dbeNombre: TDBEdit
      Left = 99
      Top = 25
      Width = 169
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Descripcion'
      DataSource = DatosTCredito.wwDSTCredito
      TabOrder = 0
    end
    object dbeCodigo: TDBEdit
      Left = 11
      Top = 25
      Width = 62
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Id_TC'
      DataSource = DatosTCredito.wwDSTCredito
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 106
    Width = 460
    Height = 25
    Align = alTop
    TabOrder = 1
    object DBStatusLabel1: TDBStatusLabel
      Left = 112
      Top = 5
      Width = 122
      Height = 13
      DatasetName = ' '
      DataSource = DatosTCredito.wwDSTCredito
      Captions.Strings = (
        'Archivos Cerrados'
        'En modo de Navegación o Browse'
        'En modo de Edicion'
        'Agregando nuevos registros')
      ShowOptions = doBoth
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxClock1: TRxClock
      Left = 1
      Top = 1
      Width = 104
      Height = 23
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 73
    Width = 460
    Height = 33
    ButtonHeight = 25
    Caption = 'ToolBar1'
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    EdgeOuter = esRaised
    TabOrder = 2
    object btNuevo: TBitBtn
      Left = 0
      Top = 2
      Width = 75
      Height = 25
      Action = Agregar
      Caption = '&Agregar'
      TabOrder = 0
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888888888888888888888800000000000888880FFFFFFFFF0888880FFFFFFFFF
        0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFFF
        0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFF0000888880FFFFFF0F0
        8888880FFFFFF008888888000000008888888888888888888888}
    end
    object btCancelar: TBitBtn
      Left = 75
      Top = 2
      Width = 75
      Height = 25
      Action = Cancelar
      Caption = '&Cancelar'
      TabOrder = 1
      Kind = bkCancel
    end
    object btConfirma: TBitBtn
      Left = 150
      Top = 2
      Width = 75
      Height = 25
      Action = Confirma
      Caption = 'C&onfirma'
      ModalResult = 1
      TabOrder = 2
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object btEditar: TBitBtn
      Left = 225
      Top = 2
      Width = 75
      Height = 25
      Action = Modificar
      Caption = '&Modificar'
      TabOrder = 3
      Glyph.Data = {
        06020000424D0602000000000000760000002800000028000000140000000100
        0400000000009001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3FFFFFFF333333333333000000733333333333337777777FFF33333333333333
        3700733333333333333337777FFF333333333333330770733333333333333377
        777FFF33333333333377F8707333333333333377F3777FF33333333333308FF8
        7033333333333337FF3377FF3333333333377FF807033333333333377F33777F
        F33333333333088047703333333333337FF77777FF3333333333770BB4770333
        33333333777337777FF33333333330FFBB47703333333333373F337777FF3333
        3333330FFBB47703333333333373F337777F333333333330FFBB477033333333
        33373F3377773333333333330FFBB47733333333333373F33777333333333333
        30FFBB47333333333333373F3377333333333333330FFBB43333333333333373
        F3373333333333333330FFBB33333333333333373F3333333333333333330FFB
        33333333333333337333}
      NumGlyphs = 2
    end
    object btBuscar: TBitBtn
      Left = 300
      Top = 2
      Width = 75
      Height = 25
      Action = Buscar
      Caption = 'Buscar'
      TabOrder = 4
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FF0000003F33337F66667F7272726666664C4C3B3B3B3B3B3B3B3B3BFF00
        FFFF00FFFF00FFFF00FFFF00FF000000664C4CFFCCCCFFCCCCFFCCCCFFE5E5E5
        CCCCCC9999CC99999972725044447777771D1D1DFF00FFFF00FF000000997272
        CC9999FFCCCCBF99997F66667F7272726666664C4CCC9999CC9999CC99995044
        447777771D1D1DFF00FF664C4CCC9999664C4C7F7F7FBFBFBFFFFFFFFFFFFFFF
        FFFFFFFFFF7F7F7F726666997272CC99993B3B3B595959FF00FF664C4C726666
        FFFFFF7F7F7F7F4C4C7F4C4C7F4C4C7F4C4C7F4C4C7F7F7FBFBFBFBFBFBF9972
        723B3B3B7777771D1D1D3F3F3FFFFFFF665959FF9999FF9999FF9999FF9999FF
        B2B2FFCCCCFF9999BF7272BFBFBFBFBFBF3B3B3B7777773B3B3B7F7F7F7F7F7F
        D89999CC7F7FE59999FF9999FF9999FF9999FF9999E5BFBFCC7F7F724C4CFFFF
        FF3B3B3B777777FF00FF7F7F7FBFBFBF997272D89999F2CCCCE59999CC7F7FCC
        7F7FCC7F7FD88C8CCE9A9A726666FFFFFF3B3B3B1D1D1DFF00FF000000BFBFBF
        BFBFBF664C4C997272CC9999CC9999CC9999CC9999997272726666FFFFFF3F3F
        3FFF00FFFF00FFFF00FFFF00FF0000007F7F7FFFFFFFBFBFBF7F7F7F7F7F7F7F
        7F7F7F7F7FBFBFBFBFBFBF6666665959591D1D1DFF00FFFF00FFFF00FFFF00FF
        FF00FF0000003F3F3F7F7F7F7F7F7F7F7F7F7F7F7F6F6F6FAFAFAFC0C0C05656
        565959591D1D1DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF0000006F6F6F6F6F6F0404040000005959591D1D1DFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000002E2E2E3333
        33040404000000595959FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF0000002E2E2E333333040404000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000
        002E2E2E333333040404FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000}
    end
    object btBorrar: TBitBtn
      Left = 375
      Top = 2
      Width = 75
      Height = 25
      Action = Borrar
      Caption = '&Borrar'
      TabOrder = 5
      Glyph.Data = {
        56070000424D5607000000000000360400002800000028000000140000000100
        0800000000002003000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A600000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030303030303
        0303030303030303030303030303030303030303030303030303030303030303
        0303030303030303030303030303030303030303030303030303030303030303
        0303030303030303030303030303030303030303030303030303030303030303
        030303030303030303030303030303030303FF030303FF030303030303030303
        0303030303030303030303030303030303030303030303030303FF0303FFFFFF
        0303FF0303030303030303030303030303030303030303030303030303030303
        0303FFFFFFFFFFFFFFFFFFFF03030303030303030303030303030303030303FF
        FFFFFF03030303030303FFFFFFFFFFFFFFFFF801010103030303030303030303
        030303030303F8F8F8F8FFFF030303030303FFFFFFFFFFFFFFF8F9FDFD050103
        03030303030303030303030303F8FF0303F8F8FFFF0303030303FFFFFFFFFFFF
        FFF9FDF9FDFD050103030303030303030303030303F8FF030303F8F8FFFF0303
        0303FFFFFFFFFFFF03FDF9FFF9FDFD0500030303030303030303030303F8FF03
        030303F8F8FFFF030303FFFF03FFFFFF03F9FDFFFDF9FD000600030303030303
        0303030303F803FF030303F8F8F8FFFF0303FF030303FF030303F9FDFFFD0002
        0406000303030303030303030303F803FF03F8F8F8F8F8FFFF03FF0303030303
        030303F9FD00FA02020406000303030303030303030303F803F803F8F8F8F8F8
        FFFF0303030303030303030300FAFBFA020200F8000303030303030303030303
        F803FF03F8F8F8F8F8FF030303030303030303030300FAFBFA0004F8F8000303
        030303030303030303F803FF03F8F8F8F8F803030303030303030303030300FA
        0007FB04F8F8030303030303030303030303F803F80303F8F8F8030303030303
        030303030303030007FFFBFB04F803030303030303030303030303F803FF0303
        F8F8030303030303030303030303030300FFFFFBFB0403030303030303030303
        03030303F803FF0303F803030303030303030303030303030300FFFFFBFB0303
        03030303030303030303030303F803FF03030303030303030303030303030303
        030300FFFFFB03030303030303030303030303030303F8030303}
      NumGlyphs = 2
    end
  end
  object ActionList1: TActionList
    Left = 424
    Top = 8
    object Buscar: TAction
      Caption = 'Buscar'
      OnExecute = BuscarExecute
    end
    object Agregar: TAction
      Caption = '&Agregar'
      OnExecute = AgregarExecute
    end
    object Cancelar: TAction
      Caption = '&Cancelar'
      OnExecute = CancelarExecute
    end
    object Confirma: TAction
      Caption = 'C&onfirma'
      OnExecute = ConfirmaExecute
    end
    object Modificar: TAction
      Caption = '&Modificar'
      OnExecute = ModificarExecute
    end
    object Borrar: TAction
      Caption = '&Borrar'
      OnExecute = BorrarExecute
    end
  end
  object MPSAutoSize1: TMPSAutoSize
    Active = True
    DesignTimeSize.Width = 800
    DesignTimeSize.Height = 600
    DesignTimeSize.ClientHeight = 359
    DesignTimeSize.PixelsPerInch = 96
    ClientAutoSize = True
    CheckPixelsPerInch = True
    CheckFontSize = True
    Left = 384
    Top = 16
  end
  object wwIntl1: TwwIntl
    Navigator.ConfirmDeleteMessage = '¿Borra el Registro?'
    Navigator.Hints.FirstHint = 'Ir al Primer Registro'
    Navigator.Hints.PriorHint = 'Ir al Registro Anterior'
    Navigator.Hints.NextHint = 'Ir al Siguiente Registro'
    Navigator.Hints.LastHint = 'Ir al Ultimo Registro'
    Navigator.Hints.InsertHint = 'Incorpora un Registro Nuevo'
    Navigator.Hints.DeleteHint = 'Borra el Registro que Ud. esta Viendo'
    Navigator.Hints.EditHint = 'Edita el Registro Actual'
    Navigator.Hints.PostHint = 'Confirma los cambios en el Registro Actual'
    Navigator.Hints.CancelHint = 'Cancel changes made to current record'
    Navigator.Hints.RefreshHint = 'Refresca el contenido del archivo'
    Navigator.Hints.PriorPageHint = 'Retrocede %d registros'
    Navigator.Hints.NextPageHint = 'Avanza %d registros'
    Navigator.Hints.SaveBookmarkHint = 'Marca el registro actual'
    Navigator.Hints.RestoreBookmarkHint = 'Regresa a la Marca antrior'
    Navigator.Hints.RecordViewDialogHint = 'Ver el registro Actual'
    Navigator.Hints.LocateDialogHint = 'Localiza un Registro Específico'
    Navigator.Hints.FilterDialogHint = 'Filtrar el Archivo'
    Navigator.Hints.SearchDialogHint = 'Buscar el Archivo'
    SearchDialog.SearchCharLabel = '&Caracteres de Búsqueda'
    SearchDialog.SearchCharShortLabel = '&Buscar Caracteres'
    SearchDialog.SearchByLabel = '&Buscar por'
    SearchDialog.StatusRecLabel = 'Registro Nº'
    SearchDialog.StatusOfLabel = 'de'
    SearchDialog.SearchCharHint = 'Ingrese caracteres parala búsqueda incremental'
    SearchDialog.SearchByHint = 'Busqueda Incremental y Ordenamiento'
    LocateDialog.FieldValueLabel = 'Encontrar &Valor'
    LocateDialog.SearchTypeLabel = 'T&ipo de Búsqueda'
    LocateDialog.CaseSensitiveLabel = 'Respetar &Mayúsculas/Minúsculas'
    LocateDialog.MatchExactLabel = '&Buscar Igual'
    LocateDialog.MatchStartLabel = 'Búsqueda &parcial desde el comienzo'
    LocateDialog.MatchAnyLabel = 'Búsqueda parcial &donde sea'
    LocateDialog.FieldsLabel = '&Campos'
    LocateDialog.BtnFirst = '&Primero'
    LocateDialog.BtnNext = '&Siguiente'
    LocateDialog.BtnCancel = 'Cancelar'
    LocateDialog.BtnClose = 'Close'
    LocateDialog.FieldValueHint = 'Ingrese los valores a buscar de los campos'
    LocateDialog.CaseSensitiveHint = 'Buscar respetando Mayúsculas/Minúsculas'
    LocateDialog.MatchExactHint = 'La búsqueda es válida solo si es execta'
    LocateDialog.MatchStartHint = 'La búsqueda es válida si se encuentra al comienzo del campo '
    LocateDialog.MatchAnyHint = 
      'La búsqueda es válida si se encuentra en cualquier parte del cam' +
      'po'
    LocateDialog.BtnFirstHint = 'Buscar el primero igual'
    LocateDialog.BtnNextHint = 'Encontrar el siguiente registro igual'
    LocateDialog.FieldNameHint = 'Seleccione el campo a buscar'
    MonthCalendar.PopupYearLabel = 'Editar el Año'
    MonthCalendar.EnterYearPrompt = 'Ingrese el Añor'
    FilterDialog.BtnViewSummary = 'Ver R&esultado'
    FilterDialog.BtnViewSummaryHint = 'Ver Resultdo de la búsqueda actual'
    FilterDialog.BtnNewSearch = '&Nueva Búsqueda'
    FilterDialog.BtnNewSearchHint = 'Nueva Búsqueda'
    FilterDialog.FieldOrderLabel = 'Orden de los Campos'
    FilterDialog.FieldOrderHint = 'Campos ordenados alfabeticamente o en su Orden lógico natural'
    FilterDialog.AlphabeticLabel = 'Alfa&bético'
    FilterDialog.LogicalLabel = '&Lógico'
    FilterDialog.AllFieldsLabel = '&Todos'
    FilterDialog.SearchedFieldsLabel = '&Buscado'
    FilterDialog.StartingRangeLabel = '&Desde Valor'
    FilterDialog.EndingRangeLabel = '&Hasta Valor'
    FilterDialog.StartingRangeHint = 'Desde Valor para el Campo'
    FilterDialog.EndingRangeHint = 'Ingrese el final del rango del campo'
    FilterDialog.BtnClearMin = '&Limpiar'
    FilterDialog.BtnClearMax = 'L&impiar'
    FilterDialog.BtnClearFilterValue = '&Limpiar'
    FilterDialog.BtnClearMinHint = 'Limpiar rango del campo inicial'
    FilterDialog.BtnClearMaxHint = 'Limpiar rango del campo final'
    FilterDialog.BtnClearFilterValueHint = 'Limpiar valores de campos de búsqueda'
    FilterDialog.ByValueLabel = 'por &Valor'
    FilterDialog.ByRangeLabel = 'por &Rango'
    FilterDialog.FieldValueLabel = 'Campos y  &Valores'
    FilterDialog.FieldValueHint = 'Ingrese los Valores de Búsqueda'
    FilterDialog.SearchTypeLabel = 'Tipo de Busqueda'
    FilterDialog.SearchTypeHint = 'Especifique como será comparado el valor del campo'
    FilterDialog.MatchExactLabel = 'Busqueda &Exacta'
    FilterDialog.MatchStartLabel = '&Parcial desde el Comienzo'
    FilterDialog.MatchAnyLabel = 'Parcial &donde sea'
    FilterDialog.CaseSensitiveLabel = 'Respe&tar Mayúculas/Minúsculas'
    FilterDialog.CaseSensitiveHint = 'Buscar respetando Mayúsculas/Minúsculas'
    FilterDialog.NonMatchingLabel = 'N&o se encontraron registros iguales'
    FilterDialog.NonMatchingHint = 'Sin registror para mostrar con el criterio de busqueda actual'
    FilterDialog.SummaryFieldLabel = 'Campo'
    FilterDialog.SummarySearchLabel = 'Tipo de Busqueda'
    FilterDialog.SummaryValueLabel = 'Valor'
    FilterDialog.FieldsLabel = '&Campos'
    FilterDialog.ValueRangeTabHint = 'Buscar campos por Valor o por Rango'
    FilterDialog.AllSearchedTabHint = 'Mostrar todos los campos o solo campos de búsqueda actual'
    FilterDialog.ViewSummaryNotText = 'NO'
    RichEdit.FontNameComboHint = 'Font | Changes the font of the selection'
    RichEdit.FontSizeComboHint = 'Font Size | Changes the font size of the selection'
    RichEdit.NewButtonHint = 'Nuevo | Crear un nuevo documento'
    RichEdit.LoadButtonHint = 'Load | Load from file'
    RichEdit.SaveAsButtonHint = 'Grabar | Grabar archivo'
    RichEdit.PrintButtonHint = 'Imprimir | Imprimir el documento activo'
    RichEdit.FindButtonHint = 'Find | Finds the specified text'
    RichEdit.CutButtonHint = 'Cut | Cuts the selection and puts it on the Clipboard'
    RichEdit.CopyButtonHint = 'Copy | Copies the selection and puts it on the Clipboard'
    RichEdit.UndoButtonHint = 'Deshacer | Revierte la última acción'
    RichEdit.RedoButtonHint = 'Redo | Reverses the last undo action'
    RichEdit.PasteButtonHint = 'Pega | Inserta el contenido del Portapapeles'
    RichEdit.BoldButtonHint = 'Bold | Makes the selection bold (toggle)'
    RichEdit.ColorButtonHint = 'Color | Formats the selection with a color'
    RichEdit.UnderlineButtonHint = 
      'Subrayado | Subrayado continuo para el texto seleccionado (invie' +
      'rte)'
    RichEdit.ItalicButtonHint = 'Italic | Makes the selection italic (toggle)'
    RichEdit.LeftButtonHint = 'Align Left | Left-justifies paragraph (toggle)'
    RichEdit.CenterButtonHint = 'Center | Center-justifies paragraph (toggle)'
    RichEdit.RightButtonHint = 
      'Alineación Derecha | Justificación Derecha del párrafo (Invierte' +
      ') Right-justifies paragraph (toggle)'
    RichEdit.JustifyButtonHint = 'Justify | Full Justification for paragraph (toggle)'
    RichEdit.BulletButtonHint = 'Bullets | Inserts a bullet on this line (toggle)'
    RichEdit.HighlightButtonHint = 'Highlight Text | Makes the selection highlighted'
    RichEdit.SaveExitHint = 'Grabar y Salir | Graba los cambios y sale del Editor'
    RichEdit.PageSetupHint = 'Configurar Pagina | Modificar configuración de página'
    RichEdit.ExitHint = 'Salir'
    RichEdit.ClearHint = 'Erases the Selection'
    RichEdit.SelectAllHint = 'Seleccionar todo el texto'
    RichEdit.FindNextHint = 'Repeats the last find'
    RichEdit.ReplaceHint = 'Reemplazar el texto buscado por otro'
    RichEdit.InsertObjectHint = 'Inserts new embedded object'
    RichEdit.SpellCheckHint = 'Check spelling'
    RichEdit.ToolbarHint = 'Ver u ocultar la barra de herramientasr'
    RichEdit.FormatBarHint = 'Shows or hides the format bar'
    RichEdit.ViewStatusBarHint = 'Ver u ocultar la barra de estado'
    RichEdit.OptionsHint = 'Sets options'
    RichEdit.FontHint = 'Selects font for current selection'
    RichEdit.ParagraphHint = 'Formato del Parrafo actual o los Seleccionados'
    RichEdit.TabsHint = 'Colocar tabuladores'
    RichEdit.CAPLockCaption = 'MAY'
    RichEdit.NUMLockCaption = 'NUM'
    RichEdit.MenuLabels.FileCaption = '&Archivo'
    RichEdit.MenuLabels.LoadCaption = '&Leer'
    RichEdit.MenuLabels.SaveAsCaption = 'Grabar &Como'
    RichEdit.MenuLabels.SaveExitCaption = '&Grabar y Salir'
    RichEdit.MenuLabels.PrintCaption = '&Imprimir'
    RichEdit.MenuLabels.PageSetupCaption = 'Configurar &Página'
    RichEdit.MenuLabels.ExitCaption = '&Salir'
    RichEdit.MenuLabels.EditCaption = '&Editar'
    RichEdit.MenuLabels.UndoCaption = '&Deshacer'
    RichEdit.MenuLabels.CutCaption = 'C&ortar'
    RichEdit.MenuLabels.CopyCaption = '&Copiar'
    RichEdit.MenuLabels.PasteCaption = '&Pegar'
    RichEdit.MenuLabels.ClearCaption = '&Limpiar'
    RichEdit.MenuLabels.SelectallCaption = 'Seleccionar t&odo'
    RichEdit.MenuLabels.FindCaption = '&Buscar'
    RichEdit.MenuLabels.FindNextCaption = 'Buscar &Siguiente'
    RichEdit.MenuLabels.ReplaceCaption = 'R&eemplazar'
    RichEdit.MenuLabels.InsertObjectCaption = '&Objeto'
    RichEdit.MenuLabels.ToolCaption = '&Tools'
    RichEdit.MenuLabels.SpellCheckCaption = 'Check &Spelling'
    RichEdit.MenuLabels.InsertCaption = '&Inserta'
    RichEdit.MenuLabels.RulerCaption = '&regla'
    RichEdit.MenuLabels.ViewCaption = '&Ver'
    RichEdit.MenuLabels.ToolbarCaption = 'Barra de &Tareas'
    RichEdit.MenuLabels.FormatBarCaption = '&Barrra de Formatos'
    RichEdit.MenuLabels.ViewStatusBarCaption = 'Barra de E&stado'
    RichEdit.MenuLabels.OptionsCaption = '&Opciones'
    RichEdit.MenuLabels.FormatCaption = 'F&ormato'
    RichEdit.MenuLabels.FontCaption = '&Fuentes'
    RichEdit.MenuLabels.BulletStyleCaption = '&Bullet Style'
    RichEdit.MenuLabels.ParagraphCaption = '&Párrafo'
    RichEdit.MenuLabels.TabsCaption = '&Tabuladores'
    RichEdit.MenuLabels.HelpCaption = '&Ayuda'
    RichEdit.PopupMenuLabels.EditCaption = '&Editar'
    RichEdit.PopupMenuLabels.ViewCaption = '&Ver'
    RichEdit.PopupMenuLabels.CutCaption = 'Cor&tar'
    RichEdit.PopupMenuLabels.CopyCaption = '&Copiar'
    RichEdit.PopupMenuLabels.PasteCaption = '&Pegar'
    RichEdit.PopupMenuLabels.FontCaption = '&Fuente'
    RichEdit.PopupMenuLabels.BulletStyleCaption = '&Bullet Style'
    RichEdit.PopupMenuLabels.BoldCaption = 'B&old'
    RichEdit.PopupMenuLabels.ItalicCaption = '&Itálica'
    RichEdit.PopupMenuLabels.UnderlineCaption = '&Subrayado'
    RichEdit.PopupMenuLabels.ParagraphCaption = 'P&árrafo'
    RichEdit.PopupMenuLabels.TabsCaption = '&Tabuladores'
    RichEdit.PopupMenuLabels.FindCaption = '&Buscar'
    RichEdit.PopupMenuLabels.ReplaceCaption = '&Reemplazar'
    RichEdit.PopupMenuLabels.InsertObjectCaption = 'Insertar &Objectos'
    RichEdit.PopupMenuLabels.ObjectPropertiesCaption = 'Object P&roperties'
    RichEdit.PopupMenuLabels.SpellCheckCaption = 'Check &Spelling'
    RichEdit.ParagraphDialog.ParagraphDlgCaption = 'Párrafo'
    RichEdit.ParagraphDialog.IndentationGroupBoxCaption = 'Indentation'
    RichEdit.ParagraphDialog.LeftEditHint = 'Identación Izquierda'
    RichEdit.ParagraphDialog.RightEditHint = 'Identación Derecha00'
    RichEdit.ParagraphDialog.FirstLineEditHint = 'Identación de la primera línea del Párrafo'
    RichEdit.ParagraphDialog.AlignmentHint = 'Cambiar Alineación del Párrafo'
    RichEdit.ParagraphDialog.LeftEditCaption = 'Izquierda:'
    RichEdit.ParagraphDialog.RightEditCaption = 'Derecha:'
    RichEdit.ParagraphDialog.FirstLineEditCaption = 'Primera Linea:'
    RichEdit.ParagraphDialog.SpacingGroupCaption = 'Interlineado'
    RichEdit.ParagraphDialog.BeforeParagraphCaption = '&Antes'
    RichEdit.ParagraphDialog.AfterParagraphCaption = 'Aft&er'
    RichEdit.ParagraphDialog.WithinParagraphCaption = 'Modificar titulo ----------------------------------------'
    RichEdit.ParagraphDialog.WithinParagraphAtCaption = '&At'
    RichEdit.ParagraphDialog.AlignmentCaption = 'Alineado'
    RichEdit.ParagraphDialog.AlignLeft = 'Izquierda'
    RichEdit.ParagraphDialog.AlignRight = 'Derecha'
    RichEdit.ParagraphDialog.AlignCenter = 'Centrar'
    RichEdit.ParagraphDialog.AlignJustify = 'Justify'
    RichEdit.TabDialog.TabDlgCaption = 'Tabuladores'
    RichEdit.TabDialog.TabGroupBoxCaption = 'Detener Posiciones de &Tabuladores'
    RichEdit.TabDialog.SetTabButtonCaption = 'Poner'
    RichEdit.TabDialog.ClearTabButtonCaption = 'Limpiar'
    RichEdit.TabDialog.ClearAllButtonCaption = 'Borrar Todo'
    RichEdit.TabDialog.TabPositionEditHint = 'Caja de edición de posiciones para tabuladores'
    RichEdit.TabDialog.ListBoxHint = 'Listar tabuladores y sus posiciones'
    RichEdit.TabDialog.SetButtonHint = 'Poner una nueva posición de Tabulación'
    RichEdit.TabDialog.ClearButtonHint = 'Limpiar la posición del tabulador seleccionado'
    RichEdit.TabDialog.ClearAllButtonHint = 'Borrar todos los Tabuladores'
    UserMessages.wwDBGridDiscardChanges = '¿Descarta los cambios en este registro?'
    UserMessages.PictureValidateError = 'Caracteres Inválidos. Campo : '
    UserMessages.LocateNoMatches = 'No se ha encontrado ningun resultado'
    UserMessages.LocateNoMoreMatches = 'No hay más Coincidencias'
    UserMessages.MemoChangesWarning = 'Los cambios se hicieron!  ¿Está seguro de cancelar?'
    UserMessages.RichEditExitWarning = 'Los cambios se hicieron!  ¿Quiere grabar los cambios?'
    UserMessages.RichEditClearWarning = '¿Borra todo el texto?'
    UserMessages.RichEditSpellCheckComplete = 'The spell check is complete.'
    UserMessages.RichEditMSWordNotFound = 'Unable to start Microsoft Word'#39's Spell Checker.'
    UserMessages.FilterDlgNoCriteria = 'No ha seleccionado ningun criterio de busqueda'
    UserMessages.RecordViewExitWarning = 'Los cambios se hicieron!  ¿Está seguro de grabar los cambios?'
    OKCancelBitmapped = True
    BtnOKCaption = '&OK'
    BtnCancelCaption = 'Cancelar'
    CheckBoxInGridStyle = cbStyleAuto
    VersionInfoPower = '3000.01.08'
    FilterMemoSize = 65536
    DialogFontStyle = [fsBold]
    DefaultEpochYear = 1960
    RegistrationNo = '2002'
    Connected = True
    Left = 348
    Top = 66
  end
  object FormStorage1: TFormStorage
    Options = []
    PreventResize = True
    StoredValues = <>
    Left = 312
    Top = 128
  end
  object rxAppEvents1: TrxAppEvents
    HintPause = 0
    HintShortPause = 0
    HintHidePause = 3000
    Left = 252
    Top = 128
  end
  object wwBuscadorTarjetas: TwwLookupDialog
    Selected.Strings = (
      'DESCRIPCION'#9'15'#9'Descripción'#9'F'
      'ID_TC'#9'5'#9'Id'#9'F')
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    LookupTable = DatosTCredito.QTCredito
    Caption = 'Tarjetas de Crédito'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    Left = 272
    Top = 24
  end
end
