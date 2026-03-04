@echo off
cd C:\Proyectos Delphi\GestionComercial
set /p A="Archivo(s):"
echo %A%
echo /p "Iniciando reemplazo en %A%..."
@echo on
reFind %A%.pas /i /w /p:"TSQLQuery" /r:"TFDQuery" 
reFind %A%.dfm /i /w /p:"TSQLQuery" /r:"TFDQuery" 
reFind %A%.pas /i /p:"DMMain_2.DBXt:=DMMain_2.SQLConectionMain.BeginTransaction(TDBXIsolations.ReadCommitted)" /r:"DMMain_FD.fdcGestion.StartTransaction"
reFind %A%.pas /i /p:"DMMain_2.SQLConectionMain.CommitFreeAndNil(DMMain_2.DBXt);" /r:"DMMain_FD.fdcGestion.Commit;"
reFind %A%.pas /i /p:"DMMain_2.SQLConectionMain.RollbackFreeAndNil(DMMain_2.DBXt);" /r:"DMMain_FD.fdcGestion.Rollback;"
reFind %A%.dfm /i /w /p:"SQLConnection = DMMain_2.SQLConectionMain" /r:"Connection = DMMain_FD.fdcGestion" 
reFind %A%.dfm /i /w /p:"SQLConnection = SQLConectionMain" /r:"Connection = DMMain_FD.fdcGestion" 
reFind %A%.dfm /i /w /p:"MaxBlobSize = -1 " /r:"" 
reFind %A%.dfm /i /w /p:"MaxBlobSize=-1 " /r:""
reFind %A%.pas /i /w /p:"CalculaPrecioVta" /r:"CalculaPrecioVta_FD"
reFind %A%.pas /i /w /p:"TSQLStoredProc" /r:"TFDStoredProc"
reFind %A%.dfm /i /w /p:"TSQLStoredProc" /r:"TFDStoredProc"
reFind %A%.pas /i /w /p:"TFMTBCDField" /r:"TFloatField"
reFind %A%.dfm /i /w /p:"TFMTBCDField" /r:"TFloatField"
reFind %A%.dfm /i /w /p:"PacketRecords = 0" /r:"PacketRecords = -1" 
reFind %A%.dfm /i /w /p:"DataType = ftTimeStamp" /r:"DataType = ftDateTime" 
reFind %A%.dfm /i /w /p:"DatabaseIBX = DMMain_2.SQLConectionMain" /r:"DatabaseFD = DMMain_FD.fdcGestion"
reFind %A%.pas /i /w /p:"IncrementIBX" /r:"IncrementFD"
reFind %A%.pas /i /w /p:"DMMain_2" /r:"DMMain_FD" 
reFind %A%.dfm /i /w /p:"DMMain_2" /r:"DMMain_FD" 
reFind %A%.pas /i /w /p:"DMMain_FD.DBXt:=DMMain_FD.SQLConectionMain.BeginTransaction(TDBXIsolations.ReadCommitted)" /r:"DMMain_FD.fdcGestion.StartTransaction"
reFind %A%.pas /i /w /p:"DMMain_FD.SQLConectionMain.CommitFreeAndNil(DMMain_FD.DBXt);" /r:"DMMain_FD.fdcGestion.Commit;"
reFind %A%.pas /i /w /p:"DMMain_FD.SQLConectionMain.RollbackFreeAndNil(DMMain_FD.DBXt);" /r:"DMMain_FD.fdcGestion.Rollback;"
reFind %A%.pas /i /w /p:"SinBDE"*":=1;" /r:"SinBDE := 2;" 
reFind %A%.pas /X:"DBEtoFireDACRule.txt"


@echo off
echo /p "Reemplazo finalizado..."
pause