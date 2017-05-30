/*
* CONECTAR A UM SERVIDOR SQL LOCAL NO LINUX:
sqlcmd -S localhost -U SA -P UbuntuSql2017
* EXECUTAR UM ARQUIVO DE SCRIPTS:
sqlcmd -S localhost -U SA -P UbuntuSql2017 -i ScriptIndicadores.sql
*/

CREATE DATABASE BaseIndicadores;
GO

USE BaseIndicadores;
GO


CREATE TABLE dbo.Indicadores(
	Sigla varchar(10) NOT NULL,
	NomeIndicador varchar(60) NOT NULL,
	UltimaAtualizacao datetime NOT NULL,
	Valor numeric (18,4) NOT NULL,
	CONSTRAINT PK_Indicadores PRIMARY KEY (Sigla)
)
GO


INSERT INTO dbo.Indicadores
           (Sigla
           ,NomeIndicador
           ,UltimaAtualizacao
           ,Valor)
     VALUES
           ('SALARIO'
           ,'Salario minimo'
           ,'2017-01-01'
           ,937.00)


INSERT INTO dbo.Indicadores
           (Sigla
           ,NomeIndicador
           ,UltimaAtualizacao
           ,Valor)
     VALUES
           ('IPCA'
           ,'Indice Nacional de Precos ao Consumidor Amplo'
           ,'2017-04-30'
           ,0.0014)


INSERT INTO dbo.Indicadores
           (Sigla
           ,NomeIndicador
           ,UltimaAtualizacao
           ,Valor)
     VALUES
           ('SELIC'
           ,'Taxa Referencial - Sistema de Liquidacao e Custodia'
           ,'2017-04-12'
           ,0.1125)

GO