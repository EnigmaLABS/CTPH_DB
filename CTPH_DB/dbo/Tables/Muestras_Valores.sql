CREATE TABLE [dbo].[Muestras_Valores] (
    [idMuestra]       BIGINT         NOT NULL,
    [idPuntoDeMedida] INT            NOT NULL,
    [Temperatura]     DECIMAL (4, 2) NULL,
    [Humedad]         TINYINT        NULL,
    CONSTRAINT [PK_Muestras_Valores] PRIMARY KEY CLUSTERED ([idMuestra] ASC, [idPuntoDeMedida] ASC),
    CONSTRAINT [FK_Muestras_Valores_Muestras] FOREIGN KEY ([idMuestra]) REFERENCES [dbo].[Muestras] ([idMuestra]),
    CONSTRAINT [FK_Muestras_Valores_PuntosDeMedida] FOREIGN KEY ([idPuntoDeMedida]) REFERENCES [dbo].[PuntosDeMedida] ([idPuntoDeMedida])
);

