# POCDatabase
POC for database CI/CD with CLI (msbuild &amp; sqlpackage)

-> Adicionar MSBUILD no PATH
-> Baixar e adicionar o package no PATH
	-> https://docs.microsoft.com/en-us/sql/tools/sqlpackage-download?view=sql-server-ver15


COMANDO:

sqlpackage /action:Publish /SourceFile:”.\POCDatabase\bin\Debug\POCDatabase.dacpac” /TargetDatabaseName:SQLShackSnapshot/TargetServerName:”localhost”

-> Sempre usar o refactor pra trocar qualquer nome de tabela/procedure/views que já existe
-> Importante adicionar comando de geração de transaction 
