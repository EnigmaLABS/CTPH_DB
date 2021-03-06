SET NUMERIC_ROUNDABORT OFF
GO
SET XACT_ABORT, ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
/*Puntero usado para actualizaciones de texto o imágenes. Puede que no sea necesario, pero se declara aquí por si lo fuera*/
DECLARE @pv binary(16)
BEGIN TRANSACTION
ALTER TABLE [dbo].[Elementos_Listas_Valores] DROP CONSTRAINT [FK_Elementos_Listas_Valores_Elementos]
ALTER TABLE [dbo].[SituacionAmbiente_Elementos] DROP CONSTRAINT [FK_SituacionAmbiente_Elementos_Elementos_Listas_Valores]
ALTER TABLE [dbo].[SituacionAmbiente_Elementos] DROP CONSTRAINT [FK_SituacionAmbiente_Elementos_Elementos1]
ALTER TABLE [dbo].[SituacionAmbiente_Elementos] DROP CONSTRAINT [FK_SituacionAmbiente_Elementos_SituacionAmbiente1]
ALTER TABLE [dbo].[Elementos] DROP CONSTRAINT [FK_Elementos_Tipos_Valores]
ALTER TABLE [dbo].[Muestras] DROP CONSTRAINT [FK_Muestras_SituacionAmbiente]
ALTER TABLE [dbo].[Muestras_Valores] DROP CONSTRAINT [FK_Muestras_Valores_Muestras]
ALTER TABLE [dbo].[Muestras_Valores] DROP CONSTRAINT [FK_Muestras_Valores_PuntosDeMedida]
ALTER TABLE [dbo].[PuntosDeMedida] DROP CONSTRAINT [FK_PuntosDeMedida_Tipos_PuntosDeMedida]
GO
SET IDENTITY_INSERT [dbo].[PuntosDeMedida] ON
INSERT INTO [dbo].[PuntosDeMedida] ([idPuntoDeMedida], [Descripcion], [Observaciones], [idTipoPuntoDeMedida]) VALUES (1, N'Exterior P1', N'En la mesa de la terraza', 1)
INSERT INTO [dbo].[PuntosDeMedida] ([idPuntoDeMedida], [Descripcion], [Observaciones], [idTipoPuntoDeMedida]) VALUES (2, N'Iterior P1', N'Al lado del ampli', 2)
INSERT INTO [dbo].[PuntosDeMedida] ([idPuntoDeMedida], [Descripcion], [Observaciones], [idTipoPuntoDeMedida]) VALUES (3, N'Interior P2', N'En la mesa grande', 2)
SET IDENTITY_INSERT [dbo].[PuntosDeMedida] OFF
GO
INSERT INTO [dbo].[Tipos_Valores] ([idTipoValor], [TipoValor]) VALUES (1, N'Numérico')
INSERT INTO [dbo].[Tipos_Valores] ([idTipoValor], [TipoValor]) VALUES (2, N'Texto')
INSERT INTO [dbo].[Tipos_Valores] ([idTipoValor], [TipoValor]) VALUES (3, N'Lista de valores')
INSERT INTO [dbo].[Tipos_Valores] ([idTipoValor], [TipoValor]) VALUES (4, N'Sí/No')
GO
INSERT INTO [dbo].[Elementos] ([idElemento], [Elemento], [idTipoValor]) VALUES (1, N'Radiador', 1)
INSERT INTO [dbo].[Elementos] ([idElemento], [Elemento], [idTipoValor]) VALUES (2, N'AA', 1)
INSERT INTO [dbo].[Elementos] ([idElemento], [Elemento], [idTipoValor]) VALUES (3, N'Velas', 1)
INSERT INTO [dbo].[Elementos] ([idElemento], [Elemento], [idTipoValor]) VALUES (4, N'Posición radiador', 3)
INSERT INTO [dbo].[Elementos] ([idElemento], [Elemento], [idTipoValor]) VALUES (5, N'Sobremesa encendido', 4)
INSERT INTO [dbo].[Elementos] ([idElemento], [Elemento], [idTipoValor]) VALUES (6, N'Tele encendida', 4)
INSERT INTO [dbo].[Elementos] ([idElemento], [Elemento], [idTipoValor]) VALUES (7, N'Puerta terraza abierta', 4)
INSERT INTO [dbo].[Elementos] ([idElemento], [Elemento], [idTipoValor]) VALUES (8, N'Ventana dormitorio abierta', 4)
GO
SET IDENTITY_INSERT [dbo].[Elementos_Listas_Valores] ON
INSERT INTO [dbo].[Elementos_Listas_Valores] ([idListaValores], [idElemento], [NombreListaValor]) VALUES (1, 4, N'Centro salón')
INSERT INTO [dbo].[Elementos_Listas_Valores] ([idListaValores], [idElemento], [NombreListaValor]) VALUES (2, 4, N'Pegado a la mesa')
INSERT INTO [dbo].[Elementos_Listas_Valores] ([idListaValores], [idElemento], [NombreListaValor]) VALUES (3, 4, N'Umbral puerta')
INSERT INTO [dbo].[Elementos_Listas_Valores] ([idListaValores], [idElemento], [NombreListaValor]) VALUES (4, 4, N'Pasillo')
INSERT INTO [dbo].[Elementos_Listas_Valores] ([idListaValores], [idElemento], [NombreListaValor]) VALUES (5, 4, N'Dormitorio')
SET IDENTITY_INSERT [dbo].[Elementos_Listas_Valores] OFF
GO
INSERT INTO [dbo].[Tipos_PuntosDeMedida] ([idTipoPuntoDeMedida], [Descripcion]) VALUES (1, N'Thermo Pro Exterior')
INSERT INTO [dbo].[Tipos_PuntosDeMedida] ([idTipoPuntoDeMedida], [Descripcion]) VALUES (2, N'Thermo Pro Interior')
ALTER TABLE [dbo].[Elementos_Listas_Valores]
    ADD CONSTRAINT [FK_Elementos_Listas_Valores_Elementos] FOREIGN KEY ([idElemento]) REFERENCES [dbo].[Elementos] ([idElemento])
ALTER TABLE [dbo].[SituacionAmbiente_Elementos]
    WITH NOCHECK ADD CONSTRAINT [FK_SituacionAmbiente_Elementos_Elementos_Listas_Valores] FOREIGN KEY ([idListaValor]) REFERENCES [dbo].[Elementos_Listas_Valores] ([idListaValores]);


GO
ALTER TABLE [dbo].[SituacionAmbiente_Elementos] NOCHECK CONSTRAINT [FK_SituacionAmbiente_Elementos_Elementos_Listas_Valores]
ALTER TABLE [dbo].[SituacionAmbiente_Elementos]
    ADD CONSTRAINT [FK_SituacionAmbiente_Elementos_Elementos1] FOREIGN KEY ([idElemento]) REFERENCES [dbo].[Elementos] ([idElemento])
ALTER TABLE [dbo].[SituacionAmbiente_Elementos]
    ADD CONSTRAINT [FK_SituacionAmbiente_Elementos_SituacionAmbiente1] FOREIGN KEY ([idSituacionAmbiente]) REFERENCES [dbo].[SituacionAmbiente] ([idSituacionAmbiente])
ALTER TABLE [dbo].[Elementos]
    ADD CONSTRAINT [FK_Elementos_Tipos_Valores] FOREIGN KEY ([idTipoValor]) REFERENCES [dbo].[Tipos_Valores] ([idTipoValor])
ALTER TABLE [dbo].[Muestras]
    WITH NOCHECK ADD CONSTRAINT [FK_Muestras_SituacionAmbiente] FOREIGN KEY ([idSituacionAmbiente]) REFERENCES [dbo].[SituacionAmbiente] ([idSituacionAmbiente]);


GO
ALTER TABLE [dbo].[Muestras] NOCHECK CONSTRAINT [FK_Muestras_SituacionAmbiente]
ALTER TABLE [dbo].[Muestras_Valores]
    ADD CONSTRAINT [FK_Muestras_Valores_Muestras] FOREIGN KEY ([idMuestra]) REFERENCES [dbo].[Muestras] ([idMuestra])
ALTER TABLE [dbo].[Muestras_Valores]
    ADD CONSTRAINT [FK_Muestras_Valores_PuntosDeMedida] FOREIGN KEY ([idPuntoDeMedida]) REFERENCES [dbo].[PuntosDeMedida] ([idPuntoDeMedida])
ALTER TABLE [dbo].[PuntosDeMedida]
    ADD CONSTRAINT [FK_PuntosDeMedida_Tipos_PuntosDeMedida] FOREIGN KEY ([idTipoPuntoDeMedida]) REFERENCES [dbo].[Tipos_PuntosDeMedida] ([idTipoPuntoDeMedida])
COMMIT TRANSACTION
