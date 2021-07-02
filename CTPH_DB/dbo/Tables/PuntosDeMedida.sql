CREATE TABLE [dbo].[PuntosDeMedida] (
    [idPuntoDeMedida]     INT           IDENTITY (1, 1) NOT NULL,
    [Descripcion]         VARCHAR (55)  NULL,
    [Observaciones]       VARCHAR (555) NULL,
    [idTipoPuntoDeMedida] TINYINT       NULL,
    CONSTRAINT [PK_PuntosDeMedida] PRIMARY KEY CLUSTERED ([idPuntoDeMedida] ASC),
    CONSTRAINT [FK_PuntosDeMedida_Tipos_PuntosDeMedida] FOREIGN KEY ([idTipoPuntoDeMedida]) REFERENCES [dbo].[Tipos_PuntosDeMedida] ([idTipoPuntoDeMedida])
);

