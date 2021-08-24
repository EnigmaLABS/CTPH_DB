CREATE TABLE [dbo].[Perfiles] (
    [idPerfil] INT          IDENTITY (1, 1) NOT NULL,
    [Perfil]   VARCHAR (55) NULL,
    CONSTRAINT [PK_Perfiles] PRIMARY KEY CLUSTERED ([idPerfil] ASC)
);

