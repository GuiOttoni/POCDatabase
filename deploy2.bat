msbuild.exe /t:Clean,Build

sqlpackage.exe /action:Publish /sf:".\POCDatabase\bin\Debug\POCDatabase.dacpac" /tdn:POCDeployAutomatico /tsn:"172.17.222.81" /tu:"sa" /tp:"@Fiap_123" /drp:".\report\report.xml"