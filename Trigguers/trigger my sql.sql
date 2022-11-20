CREATE TRIGGER tg_backup
AFTER DELETE
ON TB_CLIENTE
FOR EACH ROW
	INSERT INTO TB_BACKUP(ID,NOME,SENHA) VALUES(old.id,old.nome,old.senha);
    
CREATE TRIGGER TG_DATA
BEFORE INSERT
ON TB_BACKUP
FOR EACH ROW
SET
	NEW.DATE_EXLUSAO = NOW();

