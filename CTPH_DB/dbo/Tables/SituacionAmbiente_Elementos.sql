CREATE TABLE [dbo].[SituacionAmbiente_Elementos] (
    [idSituacionAmbienteElementos] BIGINT         IDENTITY (1, 1) NOT NULL,
    [Valor]                        NVARCHAR (255) NULL,
    [idListaValor]                 INT            NULL,
    [idSituacionAmbiente]          BIGINT         NOT NULL,
    [idElemento]                   INT            NOT NULL,
    CONSTRAINT [PK_SituacionAmbiente_Elementos] PRIMARY KEY CLUSTERED ([idSituacionAmbienteElementos] ASC),
    CONSTRAINT [FK_SituacionAmbiente_Elementos_Elementos_Listas_Valores] FOREIGN KEY ([idListaValor]) REFERENCES [dbo].[Elementos_Listas_Valores] ([idListaValores]),
    CONSTRAINT [FK_SituacionAmbiente_Elementos_Elementos1] FOREIGN KEY ([idElemento]) REFERENCES [dbo].[Elementos] ([idElemento]),
    CONSTRAINT [FK_SituacionAmbiente_Elementos_SituacionAmbiente1] FOREIGN KEY ([idSituacionAmbiente]) REFERENCES [dbo].[SituacionAmbiente] ([idSituacionAmbiente])
);


GO
ALTER TABLE [dbo].[SituacionAmbiente_Elementos] NOCHECK CONSTRAINT [FK_SituacionAmbiente_Elementos_Elementos_Listas_Valores];

