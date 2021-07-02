CREATE TABLE [dbo].[Elementos_Listas_Valores] (
    [idListaValores]   INT          IDENTITY (1, 1) NOT NULL,
    [idElemento]       INT          NULL,
    [NombreListaValor] VARCHAR (55) NULL,
    CONSTRAINT [PK_Elementos_Listas_Valores] PRIMARY KEY CLUSTERED ([idListaValores] ASC),
    CONSTRAINT [FK_Elementos_Listas_Valores_Elementos] FOREIGN KEY ([idElemento]) REFERENCES [dbo].[Elementos] ([idElemento])
);

