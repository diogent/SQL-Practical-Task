USE [companyDB]
GO

/****** Object:  Table [dbo].[Address]    Script Date: 29.10.2018 23:20:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Address](
	[AddressID] [bigint] IDENTITY(1,1) NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[ZipCode] [int] NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO





USE [companyDB]
GO

/****** Object:  Table [dbo].[Department]    Script Date: 29.10.2018 23:20:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Department](
	[DepartmentID] [bigint] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [nvarchar](50) NOT NULL,
	[AddressID] [bigint] NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Address] ([AddressID])
GO

ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department_Address]
GO




USE [companyDB]
GO

/****** Object:  Table [dbo].[Employee]    Script Date: 29.10.2018 23:21:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Employee](
	[EmployeeID] [bigint] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](255) NOT NULL,
	[LastName] [nvarchar](255) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO






USE [companyDB]
GO

/****** Object:  Table [dbo].[Job]    Script Date: 29.10.2018 23:21:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Job](
	[PositionID] [bigint] IDENTITY(1,1) NOT NULL,
	[PositionName] [nvarchar](255) NOT NULL,
	[MinimalSalary] [decimal](8, 2) NOT NULL,
	[Currency] [nvarchar](60) NOT NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[PositionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [CK_Job_Minimal_Salary] CHECK  (([MinimalSalary]>=(0)))
GO

ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [CK_Job_Minimal_Salary]
GO





USE [companyDB]
GO

/****** Object:  Table [dbo].[Career]    Script Date: 29.10.2018 23:20:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Career](
	[CareerID] [bigint] IDENTITY(1,1) NOT NULL,
	[PositionID] [bigint] NOT NULL,
	[EmployeeID] [bigint] NOT NULL,
	[DepartmentID] [bigint] NOT NULL,
	[EmploymentDate] [date] NOT NULL,
	[DismissalDate] [date] NULL,
 CONSTRAINT [PK_Career] PRIMARY KEY CLUSTERED 
(
	[CareerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Career]  WITH CHECK ADD  CONSTRAINT [FK_Career_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO

ALTER TABLE [dbo].[Career] CHECK CONSTRAINT [FK_Career_Department]
GO

ALTER TABLE [dbo].[Career]  WITH CHECK ADD  CONSTRAINT [FK_Career_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO

ALTER TABLE [dbo].[Career] CHECK CONSTRAINT [FK_Career_Employee]
GO

ALTER TABLE [dbo].[Career]  WITH CHECK ADD  CONSTRAINT [FK_Career_Job] FOREIGN KEY([PositionID])
REFERENCES [dbo].[Job] ([PositionID])
GO

ALTER TABLE [dbo].[Career] CHECK CONSTRAINT [FK_Career_Job]
GO

ALTER TABLE [dbo].[Career]  WITH CHECK ADD  CONSTRAINT [CK_Career_EmploymentDate] CHECK  (([EmploymentDate]<[DismissalDate] OR [DismissalDate] IS NULL))
GO

ALTER TABLE [dbo].[Career] CHECK CONSTRAINT [CK_Career_EmploymentDate]
GO







USE [companyDB]
GO

/****** Object:  Table [dbo].[Salary]    Script Date: 29.10.2018 23:21:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Salary](
	[SalaryID] [bigint] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [bigint] NOT NULL,
	[SalaryMonth] [tinyint] NOT NULL,
	[SalaryYear] [smallint] NOT NULL,
	[AccruedCash] [numeric](8, 2) NOT NULL,
	[Currency] [nvarchar](60) NOT NULL,
 CONSTRAINT [PK_Salary] PRIMARY KEY CLUSTERED 
(
	[SalaryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Salary]  WITH CHECK ADD  CONSTRAINT [FK_Salary_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO

ALTER TABLE [dbo].[Salary] CHECK CONSTRAINT [FK_Salary_Employee]
GO

ALTER TABLE [dbo].[Salary]  WITH CHECK ADD  CONSTRAINT [CK_Salary_AccruedCash] CHECK  (([AccruedCash]>=(0)))
GO

ALTER TABLE [dbo].[Salary] CHECK CONSTRAINT [CK_Salary_AccruedCash]
GO

ALTER TABLE [dbo].[Salary]  WITH CHECK ADD  CONSTRAINT [CK_Salary_Month] CHECK  (([SalaryMonth]>(0) AND [SalaryMonth]<(13)))
GO

ALTER TABLE [dbo].[Salary] CHECK CONSTRAINT [CK_Salary_Month]
GO

ALTER TABLE [dbo].[Salary]  WITH CHECK ADD  CONSTRAINT [CK_Salary_Year] CHECK  (([SalaryYear]>(2002) AND [SalaryYear]<(2017)))
GO

ALTER TABLE [dbo].[Salary] CHECK CONSTRAINT [CK_Salary_Year]
GO




