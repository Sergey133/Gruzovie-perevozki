USE [master]
GO
/****** Object:  Database [Грузовые перевозки]    Script Date: 03.04.2020 12:26:40 ******/
CREATE DATABASE [Грузовые перевозки]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Грузовые перевозки', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Грузовые перевозки.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Грузовые перевозки_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Грузовые перевозки_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Грузовые перевозки] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Грузовые перевозки].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Грузовые перевозки] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Грузовые перевозки] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Грузовые перевозки] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Грузовые перевозки] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Грузовые перевозки] SET ARITHABORT OFF 
GO
ALTER DATABASE [Грузовые перевозки] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Грузовые перевозки] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Грузовые перевозки] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Грузовые перевозки] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Грузовые перевозки] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Грузовые перевозки] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Грузовые перевозки] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Грузовые перевозки] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Грузовые перевозки] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Грузовые перевозки] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Грузовые перевозки] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Грузовые перевозки] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Грузовые перевозки] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Грузовые перевозки] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Грузовые перевозки] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Грузовые перевозки] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Грузовые перевозки] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Грузовые перевозки] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Грузовые перевозки] SET  MULTI_USER 
GO
ALTER DATABASE [Грузовые перевозки] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Грузовые перевозки] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Грузовые перевозки] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Грузовые перевозки] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Грузовые перевозки] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Грузовые перевозки] SET QUERY_STORE = OFF
GO
USE [Грузовые перевозки]
GO
/****** Object:  User [Редактор1]    Script Date: 03.04.2020 12:26:40 ******/
CREATE USER [Редактор1] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Пользователь_]    Script Date: 03.04.2020 12:26:40 ******/
CREATE USER [Пользователь_] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Администратро]    Script Date: 03.04.2020 12:26:40 ******/
CREATE USER [Администратро] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [Редактор]    Script Date: 03.04.2020 12:26:40 ******/
CREATE ROLE [Редактор]
GO
/****** Object:  DatabaseRole [Пользователя]    Script Date: 03.04.2020 12:26:40 ******/
CREATE ROLE [Пользователя]
GO
/****** Object:  DatabaseRole [Администратор]    Script Date: 03.04.2020 12:26:40 ******/
CREATE ROLE [Администратор]
GO
ALTER ROLE [Редактор] ADD MEMBER [Редактор1]
GO
ALTER ROLE [Пользователя] ADD MEMBER [Пользователь_]
GO
ALTER ROLE [Администратор] ADD MEMBER [Администратро]
GO
/****** Object:  Table [dbo].[Водителя]    Script Date: 03.04.2020 12:26:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Водителя](
	[Код водители] [nchar](100) NOT NULL,
	[Фамилия] [nchar](100) NULL,
	[Имя] [nchar](100) NULL,
	[Отчество] [nchar](100) NULL,
	[Стаж] [nchar](100) NULL,
 CONSTRAINT [PK_Водителя] PRIMARY KEY CLUSTERED 
(
	[Код водители] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Маршруты]    Script Date: 03.04.2020 12:26:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Маршруты](
	[Код маршрута] [nchar](100) NOT NULL,
	[Название] [nchar](100) NULL,
	[Дальность] [nchar](100) NULL,
	[Количество дней в пути] [nchar](100) NULL,
	[Оплата] [nchar](100) NULL,
 CONSTRAINT [PK_Маршруты] PRIMARY KEY CLUSTERED 
(
	[Код маршрута] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Проделанная работа]    Script Date: 03.04.2020 12:26:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Проделанная работа](
	[Код маршрута] [nchar](100) NULL,
	[Код водителей или водителя] [nchar](100) NULL,
	[Дата отправки] [datetime] NULL,
	[Дата возвращения] [datetime] NULL,
	[Кол-во водителей] [nchar](10) NULL,
	[Номер 1 водителя] [nchar](10) NULL,
	[Номер 2 водителя] [nchar](10) NULL,
	[Номер 3 водителя] [nchar](10) NULL,
	[Премия] [nchar](100) NOT NULL,
 CONSTRAINT [PK_Проделанная работа] PRIMARY KEY CLUSTERED 
(
	[Премия] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Проделанная работа]  WITH CHECK ADD  CONSTRAINT [FK_Проделанная работа_Водителя] FOREIGN KEY([Код водителей или водителя])
REFERENCES [dbo].[Водителя] ([Код водители])
GO
ALTER TABLE [dbo].[Проделанная работа] CHECK CONSTRAINT [FK_Проделанная работа_Водителя]
GO
ALTER TABLE [dbo].[Проделанная работа]  WITH CHECK ADD  CONSTRAINT [FK_Проделанная работа_Маршруты] FOREIGN KEY([Код маршрута])
REFERENCES [dbo].[Маршруты] ([Код маршрута])
GO
ALTER TABLE [dbo].[Проделанная работа] CHECK CONSTRAINT [FK_Проделанная работа_Маршруты]
GO
USE [master]
GO
ALTER DATABASE [Грузовые перевозки] SET  READ_WRITE 
GO
