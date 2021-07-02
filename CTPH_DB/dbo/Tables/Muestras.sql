CREATE TABLE [dbo].[Muestras] (
    [idMuestra]           BIGINT       IDENTITY (1, 1) NOT NULL,
    [fhMuestra]           DATETIME     CONSTRAINT [DF_Muestras_fhMuestra] DEFAULT (getdate()) NOT NULL,
    [Observaciones]       VARCHAR (55) NULL,
    [idSituacionAmbiente] BIGINT       NULL,
    CONSTRAINT [PK_Muestras] PRIMARY KEY CLUSTERED ([idMuestra] ASC),
    CONSTRAINT [FK_Muestras_SituacionAmbiente] FOREIGN KEY ([idSituacionAmbiente]) REFERENCES [dbo].[SituacionAmbiente] ([idSituacionAmbiente])
);


GO
ALTER TABLE [dbo].[Muestras] NOCHECK CONSTRAINT [FK_Muestras_SituacionAmbiente];



