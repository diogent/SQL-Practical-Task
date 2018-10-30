USE [master]
GO

/****** Object:  Database [companyDB]    Script Date: 10/30/2018 1:11:22 PM ******/
CREATE DATABASE [companyDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'companyDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\companyDB.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'companyDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\companyDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [companyDB] SET COMPATIBILITY_LEVEL = 110
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [companyDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [companyDB] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [companyDB] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [companyDB] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [companyDB] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [companyDB] SET ARITHABORT OFF 
GO

ALTER DATABASE [companyDB] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [companyDB] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [companyDB] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [companyDB] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [companyDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [companyDB] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [companyDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [companyDB] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [companyDB] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [companyDB] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [companyDB] SET  DISABLE_BROKER 
GO

ALTER DATABASE [companyDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [companyDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [companyDB] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [companyDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [companyDB] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [companyDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [companyDB] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [companyDB] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [companyDB] SET  MULTI_USER 
GO

ALTER DATABASE [companyDB] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [companyDB] SET DB_CHAINING OFF 
GO

ALTER DATABASE [companyDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [companyDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [companyDB] SET  READ_WRITE 
GO


