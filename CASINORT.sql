USE [master]
GO
/****** Object:  Database [CASINORT]    Script Date: 20/11/2022 18:01:44 ******/
CREATE DATABASE [CASINORT]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CASINORT', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\CASINORT.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CASINORT_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\CASINORT_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [CASINORT] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CASINORT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CASINORT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CASINORT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CASINORT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CASINORT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CASINORT] SET ARITHABORT OFF 
GO
ALTER DATABASE [CASINORT] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CASINORT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CASINORT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CASINORT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CASINORT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CASINORT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CASINORT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CASINORT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CASINORT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CASINORT] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CASINORT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CASINORT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CASINORT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CASINORT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CASINORT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CASINORT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CASINORT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CASINORT] SET RECOVERY FULL 
GO
ALTER DATABASE [CASINORT] SET  MULTI_USER 
GO
ALTER DATABASE [CASINORT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CASINORT] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CASINORT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CASINORT] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CASINORT] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CASINORT] SET QUERY_STORE = OFF
GO
USE [CASINORT]
GO
/****** Object:  Table [dbo].[Jugador]    Script Date: 20/11/2022 18:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jugador](
	[IdJugador] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[PuntajeActual] [int] NOT NULL,
	[FotoJugador] [varchar](5000) NOT NULL,
	[FkPais] [int] NOT NULL,
 CONSTRAINT [PK_Jugador] PRIMARY KEY CLUSTERED 
(
	[IdJugador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 20/11/2022 18:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[IdPais] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[IdPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Jugador] ON 

INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (1, N'uri', CAST(N'2022-11-02' AS Date), 0, N'dadadad', 0)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (2, N'uri', CAST(N'2022-11-10' AS Date), 0, N'dadadad', 0)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (3, N'uri', CAST(N'2022-11-03' AS Date), 0, N'dadadad', 0)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (4, N'uri', CAST(N'2022-11-08' AS Date), 0, N'dadadad', 0)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (5, N'uri', CAST(N'2022-11-02' AS Date), 0, N'SAXA', 0)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (6, N'uri', CAST(N'2022-11-16' AS Date), 0, N'dadadad', 0)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (7, N'uri', CAST(N'2022-11-16' AS Date), 0, N'dadadad', 0)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (8, N'uri', CAST(N'2022-11-02' AS Date), 100, N'dadadad', 0)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (9, N'uri', CAST(N'2022-11-16' AS Date), 100, N'dadadad', 0)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (10, N'uri', CAST(N'2022-10-31' AS Date), 100, N'dadadad', 0)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (11, N'uri', CAST(N'2022-11-02' AS Date), 100, N'dadadad', 0)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (12, N'gon', CAST(N'2022-11-17' AS Date), 100, N'dadadad', 0)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (13, N'uri', CAST(N'2022-11-10' AS Date), 100, N'dadadad', 0)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (14, N'uri', CAST(N'2022-11-17' AS Date), 100, N'SAXA', 0)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (15, N'uri', CAST(N'2022-11-09' AS Date), 100, N'dadadad', 0)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (16, N'gon', CAST(N'2022-11-10' AS Date), 100, N'dadadad', 0)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (17, N'uri', CAST(N'2022-11-01' AS Date), 100, N'dadadad', 0)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (18, N'gon', CAST(N'2022-11-10' AS Date), 100, N'dadadad', 0)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (19, N'uri', CAST(N'2022-11-02' AS Date), 100, N'dadadad', 0)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (20, N'uri', CAST(N'2022-11-10' AS Date), 100, N'dadadad', 0)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (21, N'uri', CAST(N'2022-11-15' AS Date), 100, N'dadadad', 0)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (22, N'uri', CAST(N'2022-11-09' AS Date), 100, N'dadadad', 0)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (23, N'gon', CAST(N'2022-11-02' AS Date), 100, N'SAXA', 0)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (24, N'gon', CAST(N'2022-11-01' AS Date), 100, N'SAXA', 0)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (25, N'fede', CAST(N'2022-11-10' AS Date), 40, N'xsax', 0)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (26, N'fede', CAST(N'2022-11-10' AS Date), 40, N'xsax', 0)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (27, N'fede', CAST(N'2022-11-10' AS Date), 40, N'xsax', 0)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (28, N'fede', CAST(N'2022-11-17' AS Date), 40, N'xsax', 0)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (29, N'fede', CAST(N'2022-11-11' AS Date), 40, N'xsax', 0)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (30, N'fede', CAST(N'2022-11-02' AS Date), 40, N'xsax', 0)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (31, N'fede', CAST(N'2022-11-17' AS Date), 40, N'xsax', 0)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (32, N'fede', CAST(N'2022-11-02' AS Date), 40, N'xsax', 0)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (33, N'fede', CAST(N'2022-11-11' AS Date), 40, N'xsax', 0)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (34, N'fede', CAST(N'2022-11-02' AS Date), 40, N'xsax', 0)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (35, N'fede', CAST(N'2022-11-10' AS Date), 40, N'xsax', 2)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (36, N'fede', CAST(N'2022-11-16' AS Date), 40, N'xsax', 2)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (37, N'rodri', CAST(N'2022-11-09' AS Date), 160, N'dsax', 12)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (38, N'hola', CAST(N'2022-11-24' AS Date), 100, N'dsax', 6)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (39, N'rodri', CAST(N'2012-05-08' AS Date), 160, N'dsax', 13)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (40, N'rodri', CAST(N'2022-11-03' AS Date), 160, N'dsax', 11)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (41, N'rodri', CAST(N'2022-11-02' AS Date), 160, N'dsax', 11)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (42, N'rodri', CAST(N'2022-11-10' AS Date), 160, N'xsa', 11)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (43, N'rodri', CAST(N'2022-11-30' AS Date), 160, N'dsax', 14)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (44, N'rodri', CAST(N'2022-12-01' AS Date), 160, N'dsax', 14)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (45, N'rodri', CAST(N'2022-11-09' AS Date), 160, N'zaza', 6)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (46, N'rodri', CAST(N'2022-11-02' AS Date), 160, N'xsa', 14)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (47, N'rodri', CAST(N'2022-11-23' AS Date), 160, N'xsa', 11)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (48, N'rodri', CAST(N'2022-11-09' AS Date), 160, N'dsax', 5)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (49, N'rodri', CAST(N'2022-11-22' AS Date), 160, N'dsax', 10)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (50, N'rodri', CAST(N'2022-11-23' AS Date), 160, N'dsax', 11)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (51, N'rodri', CAST(N'2022-11-10' AS Date), 160, N'dsax', 14)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (52, N'rodri', CAST(N'2022-11-15' AS Date), 160, N'xsa', 6)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (53, N'hola', CAST(N'2022-11-10' AS Date), 100, N'xsa', 10)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (54, N'rodri', CAST(N'2022-11-03' AS Date), 160, N'dsax', 11)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (55, N'rodri', CAST(N'2022-11-30' AS Date), 160, N'dsax', 9)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (56, N'hola', CAST(N'2003-02-02' AS Date), 100, N'xasxa', 10)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (57, N'rodri', CAST(N'2022-12-09' AS Date), 160, N'xasxa', 13)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (58, N'rodri', CAST(N'2022-11-24' AS Date), 160, N'xsa', 13)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (59, N'rodri', CAST(N'2022-11-02' AS Date), 160, N'xsa', 8)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (60, N'MANUEL', CAST(N'2022-11-03' AS Date), 100, N'xsaxas', 1)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (61, N'rodri', CAST(N'2022-12-01' AS Date), 160, N'xsa', 13)
INSERT [dbo].[Jugador] ([IdJugador], [Username], [FechaNacimiento], [PuntajeActual], [FotoJugador], [FkPais]) VALUES (62, N'manu', CAST(N'2022-11-11' AS Date), 40, N'xsa', 12)
SET IDENTITY_INSERT [dbo].[Jugador] OFF
GO
SET IDENTITY_INSERT [dbo].[Pais] ON 

INSERT [dbo].[Pais] ([IdPais], [Nombre]) VALUES (1, N'Argentina')
INSERT [dbo].[Pais] ([IdPais], [Nombre]) VALUES (2, N'Alemania')
INSERT [dbo].[Pais] ([IdPais], [Nombre]) VALUES (3, N'Brasil')
INSERT [dbo].[Pais] ([IdPais], [Nombre]) VALUES (4, N'Holanda')
INSERT [dbo].[Pais] ([IdPais], [Nombre]) VALUES (5, N'Uruguay')
INSERT [dbo].[Pais] ([IdPais], [Nombre]) VALUES (6, N'Chile')
INSERT [dbo].[Pais] ([IdPais], [Nombre]) VALUES (7, N'Paraguay')
INSERT [dbo].[Pais] ([IdPais], [Nombre]) VALUES (8, N'Bolivia')
INSERT [dbo].[Pais] ([IdPais], [Nombre]) VALUES (9, N'EEUU')
INSERT [dbo].[Pais] ([IdPais], [Nombre]) VALUES (10, N'Canada')
INSERT [dbo].[Pais] ([IdPais], [Nombre]) VALUES (11, N'Italia')
INSERT [dbo].[Pais] ([IdPais], [Nombre]) VALUES (12, N'Francia')
INSERT [dbo].[Pais] ([IdPais], [Nombre]) VALUES (13, N'Inglaterra')
INSERT [dbo].[Pais] ([IdPais], [Nombre]) VALUES (14, N'Panama')
SET IDENTITY_INSERT [dbo].[Pais] OFF
GO
USE [master]
GO
ALTER DATABASE [CASINORT] SET  READ_WRITE 
GO
