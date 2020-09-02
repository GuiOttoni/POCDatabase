msbuild.exe /t:Clean,Build

sqlpackage.exe /a:Extract /ssn:"172.17.222.81" /su:"sa" /sp:"@Fiap_123" /sdn:"POCDeployAutomatico" /tf:".\db_baseline.dacpac"

sqlpackage.exe /a:Script /sf:".\POCDatabase\bin\Debug\POCDatabase.dacpac" /tf:".\db_baseline.dacpac" /tdn:"POCDeployAutomatico" /op:".\AspDbUpdate.sql"

sqlcmd.exe -S 172.17.222.81 -U sa -P "@Fiap_123" -i ".\AspDbUpdate.sql"