USE [master]
GO
/****** Object:  Database [tecno]    Script Date: 7/1/2019 10:04:40 PM ******/
CREATE DATABASE [tecno]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'tecno', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.TRAINING\MSSQL\DATA\tecno.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'tecno_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.TRAINING\MSSQL\DATA\tecno_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [tecno] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [tecno].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [tecno] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [tecno] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [tecno] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [tecno] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [tecno] SET ARITHABORT OFF 
GO
ALTER DATABASE [tecno] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [tecno] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [tecno] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [tecno] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [tecno] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [tecno] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [tecno] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [tecno] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [tecno] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [tecno] SET  ENABLE_BROKER 
GO
ALTER DATABASE [tecno] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [tecno] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [tecno] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [tecno] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [tecno] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [tecno] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [tecno] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [tecno] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [tecno] SET  MULTI_USER 
GO
ALTER DATABASE [tecno] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [tecno] SET DB_CHAINING OFF 
GO
ALTER DATABASE [tecno] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [tecno] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [tecno] SET DELAYED_DURABILITY = DISABLED 
GO
USE [tecno]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 7/1/2019 10:04:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alumnos](
	[DNI] [int] NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DNI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Profesores]    Script Date: 7/1/2019 10:04:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Profesores](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Profesores] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Alumnos] ([DNI], [Apellido], [Nombre]) VALUES (123456, N'Fisch', N'Ary')
GO
INSERT [dbo].[Alumnos] ([DNI], [Apellido], [Nombre]) VALUES (555555, N'Galue', N'Andres')
GO
INSERT [dbo].[Alumnos] ([DNI], [Apellido], [Nombre]) VALUES (1234567, N'Ary', N'Fisch')
GO
INSERT [dbo].[Alumnos] ([DNI], [Apellido], [Nombre]) VALUES (6666666, N'Bogado', N'Candela')
GO
INSERT [dbo].[Alumnos] ([DNI], [Apellido], [Nombre]) VALUES (42103193, N'Rueda', N'Nazarena')
GO
INSERT [dbo].[Alumnos] ([DNI], [Apellido], [Nombre]) VALUES (95675394, N'Picon', N'Darelis')
GO
INSERT [dbo].[Alumnos] ([DNI], [Apellido], [Nombre]) VALUES (95675395, N'Picoen', N'Dare')
GO
SET IDENTITY_INSERT [dbo].[Profesores] ON 

GO
INSERT [dbo].[Profesores] ([ID], [Apellido], [Nombre], [Email]) VALUES (1, N'Miguek', N'Alejo', N'alejo@accenture.com')
GO
INSERT [dbo].[Profesores] ([ID], [Apellido], [Nombre], [Email]) VALUES (2, N'Miguel', N'Alejo', N'Alejo@accenture.com')
GO
SET IDENTITY_INSERT [dbo].[Profesores] OFF
GO
USE [master]
GO
ALTER DATABASE [tecno] SET  READ_WRITE 
GO
