program ServidorDSGestion2;

uses
  Vcl.Forms,
  UServidor in 'UServidor.pas' {Form1},
  uBasicLog in 'uBasicLog.pas',
  UServerContainer in 'UServerContainer.pas' {ServerContainer: TDataModule},
  UServerMethods in 'UServerMethods.pas' {ServerMethods: TDSServerModule},
  UServerMethodsAjustesStock in 'UServerMethodsAjustesStock.pas' {ServerMethodsAjustesStock: TDSServerModule},
  UServerMethodsBuscadorCliente in 'UServerMethodsBuscadorCliente.pas' {ServerModuleBuscadorCliente: TDSServerModule},
  UServerMethodsBuscadores in 'UServerMethodsBuscadores.pas' {ServerModuleBuscadores: TDSServerModule},
  UServerMethodsConfiguraIni in 'UServerMethodsConfiguraIni.pas' {ServerMethodsConfiguraIni: TDSServerModule},
  UServerMethodsExistencias in 'UServerMethodsExistencias.pas' {ServerMethodsExistencia: TDSServerModule},
  UServerMethodsGral in 'UServerMethodsGral.pas' {ServerModuleGeneral: TDSServerModule},
  UServerMethodsTransferencias in 'UServerMethodsTransferencias.pas' {ServerMethodstransferecias: TDSServerModule},
  uExceptions in 'common\uExceptions.pas',
  uResourceString in 'common\uResourceString.pas',
  uTDataSetHelper in 'common\uTDataSetHelper.pas',
  UServerMethodsListado in 'UServerMethodsListado.pas' {ServerModuleListado: TDSServerModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TServerContainer, ServerContainer);
  Application.Run;
end.

