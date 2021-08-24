CREATE TABLE [dbo].[Perfil_Elementos] (
    [idPerfil]   INT NOT NULL,
    [idElemento] INT NOT NULL,
    [Activo]     BIT CONSTRAINT [DF_Perfil_Elementos_Activo] DEFAULT ((1)) NULL,
    CONSTRAINT [PK_Perfil_Elementos] PRIMARY KEY CLUSTERED ([idPerfil] ASC, [idElemento] ASC),
    CONSTRAINT [FK_Perfil_Elementos_Elementos] FOREIGN KEY ([idElemento]) REFERENCES [dbo].[Elementos] ([idElemento]),
    CONSTRAINT [FK_Perfil_Elementos_Perfiles] FOREIGN KEY ([idPerfil]) REFERENCES [dbo].[Perfiles] ([idPerfil])
);

