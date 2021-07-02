CREATE TABLE [dbo].[Elementos] (
    [idElemento]  INT          NOT NULL,
    [Elemento]    VARCHAR (55) NOT NULL,
    [idTipoValor] TINYINT      NOT NULL,
    CONSTRAINT [PK_Elementos] PRIMARY KEY CLUSTERED ([idElemento] ASC),
    CONSTRAINT [FK_Elementos_Tipos_Valores] FOREIGN KEY ([idTipoValor]) REFERENCES [dbo].[Tipos_Valores] ([idTipoValor])
);

