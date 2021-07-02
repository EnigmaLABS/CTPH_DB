CREATE TABLE [dbo].[Tipos_PuntosDeMedida] (
    [idTipoPuntoDeMedida] TINYINT       NOT NULL,
    [Descripcion]         NVARCHAR (55) NULL,
    CONSTRAINT [PK_Tipos_PuntosDeMedida] PRIMARY KEY CLUSTERED ([idTipoPuntoDeMedida] ASC)
);

