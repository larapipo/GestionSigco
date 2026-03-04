object ServerContainer: TServerContainer
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 497
  Width = 700
  object DSServer: TDSServer
    AutoStart = False
    Left = 136
    Top = 19
  end
  object DSTCPServerTransport: TDSTCPServerTransport
    Server = DSServer
    Filters = <>
    Left = 288
    Top = 27
  end
  object DSServerClass: TDSServerClass
    OnGetClass = DSServerClassGetClass
    Server = DSServer
    Left = 48
    Top = 315
  end
  object DSServerClassGestion: TDSServerClass
    OnGetClass = DSServerClassGestionGetClass
    Server = DSServer
    Left = 136
    Top = 91
  end
  object DSServerConfiguraIni: TDSServerClass
    OnGetClass = DSServerConfiguraIniGetClass
    Server = DSServer
    Left = 296
    Top = 91
  end
  object GestionPtoVta: TSQLConnection
    ConnectionName = 'SQLConectionPV'
    DriverName = 'InterBase'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXInterBase'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver190.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=19.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXInterbaseMetaDataCommandFactory,DbxInt' +
        'erBaseDriver190.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXInterbaseMetaDataCommand' +
        'Factory,Borland.Data.DbxInterBaseDriver,Version=19.0.0.0,Culture' +
        '=neutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxint.dll'
      'LibraryNameOsx=libsqlib.dylib'
      'VendorLib=GDS32.DLL'
      'VendorLibWin64=ibclient64.dll'
      'VendorLibOsx=libgds.dylib'
      
        'Database=C:\Proyectos Delphi\GestionComercial\Tablas IB\gestionv' +
        '3.lar'
      'User_Name=sysdba'
      'Password=regulador'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'DisplayDriverName=InterBase Server'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet='
      'Trim Char=False'
      'SEP=')
    Left = 40
    Top = 19
  end
  object DSServerTransferecias: TDSServerClass
    OnGetClass = DSServerTransfereciasGetClass
    Server = DSServer
    Left = 136
    Top = 155
  end
  object DSServerBuscadorCliente: TDSServerClass
    OnGetClass = DSServerBuscadorClienteGetClass
    Server = DSServer
    Left = 296
    Top = 155
  end
  object DSServerAjusteStock: TDSServerClass
    OnGetClass = DSServerAjusteStockGetClass
    Server = DSServer
    Left = 56
    Top = 219
  end
  object DSServerBuscadores: TDSServerClass
    OnGetClass = DSServerBuscadoresGetClass
    Server = DSServer
    Left = 40
    Top = 107
  end
  object DSServerExistencias: TDSServerClass
    OnGetClass = DSServerExistenciasGetClass
    Server = DSServer
    Left = 176
    Top = 219
  end
  object DSServerListados: TDSServerClass
    OnGetClass = DSServerListadosGetClass
    Server = DSServer
    Left = 336
    Top = 312
  end
end
