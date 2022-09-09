CREATE TRIGGER trg_ajustaVenda
ON TB_Vendas
FOR INSERT 
AS
BEGIN
	DECLARE @CD_Qtde_Vendida INT

	SELECT @CD_Qtde_Vendida = CD_Qtde_Vendida FROM INSERTED

	UPDATE TB_Estoque 
		SET CD_Qtde_Disp = CD_Qtde_Disp - @CD_Qtde_Vendida
END
GO


