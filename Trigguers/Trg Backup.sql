CREATE TABLE TB_Backup_Func(
ID INT,
NM_Nome Varchar(100) not null,
NM_Sobrenome Varchar (100) not null,
NM_CPF Varchar(14) not null unique,
DT_EXCLUSAO Date not null
);
GO

CREATE TRIGGER TRG_Backup
ON TB_Dados_Funcionarios
FOR DELETE
AS
	INSERT INTO TB_Backup_Func(ID,NM_Nome,NM_Sobrenome,NM_CPF,DT_EXCLUSAO)
	SELECT ID,NM_Nome,NM_Sobrenome,NM_CPF,GETDATE() FROM DELETED;
GO

