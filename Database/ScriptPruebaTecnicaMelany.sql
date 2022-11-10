USE [master]
CREATE DATABASE [PruebaTecnica]
USE [PruebaTecnica]
GO
/****** Object:  Table [dbo].[actividades]    Script Date: 10/11/2022 15:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[actividades](
	[Id_actividad] [int] IDENTITY(1,1) NOT NULL,
	[Create_date] [datetime] NOT NULL,
	[Id_usuario] [int] NOT NULL,
	[Actividad] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_actividad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 10/11/2022 15:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[Id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[CorreoElectronico] [varchar](50) NOT NULL,
	[FechadeNacimiento] [date] NOT NULL,
	[Telefono] [int] NOT NULL,
	[PaisdeResidencia] [varchar](3) NOT NULL,
	[Pregunta] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[actividades]  WITH CHECK ADD  CONSTRAINT [FK_usuarios_actividades] FOREIGN KEY([Id_usuario])
REFERENCES [dbo].[usuarios] ([Id_usuario])
GO
ALTER TABLE [dbo].[actividades] CHECK CONSTRAINT [FK_usuarios_actividades]
GO
