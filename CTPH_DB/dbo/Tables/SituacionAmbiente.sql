CREATE TABLE [dbo].[SituacionAmbiente] (
    [idSituacionAmbiente] BIGINT        IDENTITY (1, 1) NOT NULL,
    [Observaciones]       VARCHAR (255) NOT NULL,
    CONSTRAINT [PK_SituacionAmbiente] PRIMARY KEY CLUSTERED ([idSituacionAmbiente] ASC)
);

