CREATE TABLE TB_Dados_Funcionarios(
ID Int Primary Key Not null IDENTITY(1,1),
NM_Nome Varchar(100) not null,
NM_Sobrenome Varchar (100) not null,
NM_CPF Varchar(14) not null unique,
DT_DataNascimento Date not null
);
GO

CREATE TABLE TB_Enderecos_Func(
ID INT Primary Key Not null IDENTITY(1,1),
ID_Dados_Funcionarios INT FOREIGN KEY REFERENCES TB_Dados_Funcionarios(ID),
NM_Logradouro Varchar(255) Not null,
CD_Numero INT Not null,
NM_Bairro Varchar(100) Not null,
NM_Cidade Varchar(100) Not null,
NM_UF Varchar(2) Not null,
NM_Complemento Varchar(200)
);
GO

CREATE TABLE TB_Contato(
ID INT Primary Key IDENTITY(1,1),
ID_Dados_Funcionarios INT FOREIGN KEY REFERENCES TB_Dados_Funcionarios(ID),
TB_Telefone Varchar(45) Not null unique,
NM_Email Varchar(100) Not null unique
);
GO

CREATE TABLE TB_Vendas(
ID INT Primary Key IDENTITY(1,1),
ID_Dados_Funcionarios INT FOREIGN KEY REFERENCES TB_Dados_Funcionarios(ID),
CD_Qtde_Vendida INT,
VL_Valor_Vendido DECIMAL(15,2)
);
GO

CREATE TABLE TB_Estoque(
ID INT Primary Key IDENTITY(1,1),
NM_Produto Varchar (50),
VL_Valor_Prod DECIMAL(10,2),
CD_Qtde_Disp INT
);
GO