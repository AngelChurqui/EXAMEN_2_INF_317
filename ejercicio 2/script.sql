USE [Examen_inf_317]
GO
/****** Object:  Table [dbo].[profesores]    Script Date: 05/12/2022 8:02:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[profesores]') AND type in (N'U'))
DROP TABLE [dbo].[profesores]
GO
/****** Object:  Table [dbo].[alumnos]    Script Date: 05/12/2022 8:02:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[alumnos]') AND type in (N'U'))
DROP TABLE [dbo].[alumnos]
GO
/****** Object:  Table [dbo].[alumnos]    Script Date: 05/12/2022 8:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[alumnos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[alumnos](
	[id_alm] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellidos] [varchar](50) NULL,
	[fec_nac] [varchar](50) NULL,
	[gmail] [varchar](50) NULL,
	[ci] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_alm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[profesores]    Script Date: 05/12/2022 8:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[profesores]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[profesores](
	[id_prof] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[gmail] [varchar](50) NULL,
	[telefono] [int] NULL,
	[especialidad] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_prof] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[alumnos] ([id_alm], [nombre], [apellidos], [fec_nac], [gmail], [ci]) VALUES (1, N'Juan', N'Mendoza', N'10/12/2000', N'JuanM@gmail.com', N'7088281')
INSERT [dbo].[alumnos] ([id_alm], [nombre], [apellidos], [fec_nac], [gmail], [ci]) VALUES (2, N'Viviana', N'Garcia', N'11/11/1999', N'VivianaG@gmail.com', N'183291')
INSERT [dbo].[alumnos] ([id_alm], [nombre], [apellidos], [fec_nac], [gmail], [ci]) VALUES (3, N'Arturo', N'Iturri', N'19/09/1999', N'IturriA@gmail.com', N'7811923')
INSERT [dbo].[alumnos] ([id_alm], [nombre], [apellidos], [fec_nac], [gmail], [ci]) VALUES (4, N'Rosario', N'Mendoza', N'14/12/2000', N'RosarioM@gmail.com', N'6839123')
INSERT [dbo].[alumnos] ([id_alm], [nombre], [apellidos], [fec_nac], [gmail], [ci]) VALUES (5, N'Marianela', N'Lopez', N'15/06/1998', N'MarianelaL@gmail.com', N'1012466')
INSERT [dbo].[alumnos] ([id_alm], [nombre], [apellidos], [fec_nac], [gmail], [ci]) VALUES (6, N'Maycol', N'Gutierrez', N'30/03/1997', N'MaycolG@gmail.com', N'912075')
INSERT [dbo].[alumnos] ([id_alm], [nombre], [apellidos], [fec_nac], [gmail], [ci]) VALUES (7, N'Cazandra', N'Poma', N'11/03/1998', N'CazandraP@gmail.com', N'7037311')
INSERT [dbo].[alumnos] ([id_alm], [nombre], [apellidos], [fec_nac], [gmail], [ci]) VALUES (8, N'Pablo', N'Lorenze', N'01/12/1998', N'PabloL@gmail.com', N'8461286')
INSERT [dbo].[alumnos] ([id_alm], [nombre], [apellidos], [fec_nac], [gmail], [ci]) VALUES (9, N'Federico', N'Zolaman', N'13/09/1999', N'FedericoZ@gmail.com', N'9987401')
INSERT [dbo].[alumnos] ([id_alm], [nombre], [apellidos], [fec_nac], [gmail], [ci]) VALUES (10, N'Mercedes', N'Alvarez', N'20/05/1999', N'MercedesA@gmail.com', N'3015213')
INSERT [dbo].[alumnos] ([id_alm], [nombre], [apellidos], [fec_nac], [gmail], [ci]) VALUES (11, N'Juaquin', N'Barrios', N'18/02/2001', N'JuaquinB@gmail.com', N'9012657')
INSERT [dbo].[profesores] ([id_prof], [nombre], [apellido], [gmail], [telefono], [especialidad]) VALUES (1, N'Marcos', N'Manriquez', N'MarcosM@gmail.com', 78814611, N'Informatica')
INSERT [dbo].[profesores] ([id_prof], [nombre], [apellido], [gmail], [telefono], [especialidad]) VALUES (2, N'Rodolfo', N'Castillo', N'RodolfoC@gmail.com', 76543211, N'Matematicas')
INSERT [dbo].[profesores] ([id_prof], [nombre], [apellido], [gmail], [telefono], [especialidad]) VALUES (3, N'Carol', N'Mollericona', N'CarolM@gmail.com', 71977676, N'Biologia')
INSERT [dbo].[profesores] ([id_prof], [nombre], [apellido], [gmail], [telefono], [especialidad]) VALUES (4, N'Gleen', N'Munch', N'GleenM@gmail.com', 60588889, N'Historia')
INSERT [dbo].[profesores] ([id_prof], [nombre], [apellido], [gmail], [telefono], [especialidad]) VALUES (5, N'Juana', N'Manzana', N'JuanaM@gmail.com', 70346791, N'Artes')
INSERT [dbo].[profesores] ([id_prof], [nombre], [apellido], [gmail], [telefono], [especialidad]) VALUES (6, N'Brayan', N'Bravo', N'BrayanBr@gmail.com', 67612936, N'Matematicas')
INSERT [dbo].[profesores] ([id_prof], [nombre], [apellido], [gmail], [telefono], [especialidad]) VALUES (7, N'Oliver', N'Pastor', N'OliverP@gmail.com', 68910291, N'Idiomas')
INSERT [dbo].[profesores] ([id_prof], [nombre], [apellido], [gmail], [telefono], [especialidad]) VALUES (8, N'Dionisio', N'Luke', N'DionisioL@gmail.com', 77171709, N'Quimica')
INSERT [dbo].[profesores] ([id_prof], [nombre], [apellido], [gmail], [telefono], [especialidad]) VALUES (9, N'Jose', N'Guzman', N'JoseG@gmail.com', 75634098, N'Historia')
INSERT [dbo].[profesores] ([id_prof], [nombre], [apellido], [gmail], [telefono], [especialidad]) VALUES (10, N'Ricardo', N'Chavez', N'RicardoCh@gmail.com', 69012340, N'Biologia')
