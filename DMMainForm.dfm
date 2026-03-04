object DMMain: TDMMain
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Left = 187
  Top = 232
  Height = 240
  Width = 523
  object DatabaseContable: TDatabase
    DatabaseName = 'DBMain'
    LoginPrompt = False
    Params.Strings = (
      'USER NAME=sysdba'
      'PASSWORD=regulador')
    SessionName = 'Default'
    Left = 370
    Top = 41
  end
  object Database: TDatabase
    AliasName = 'GestionV3'
    DatabaseName = 'DBMain'
    LoginPrompt = False
    Params.Strings = (
      'USER NAME=SYSDBA'
      'PASSWORD=regulador')
    SessionName = 'Default'
    Left = 108
    Top = 42
  end
end
