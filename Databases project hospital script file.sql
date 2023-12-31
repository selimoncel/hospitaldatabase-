USE [master]
GO
/****** Object:  Database [Hospital_Database]    Script Date: 19/05/2023 18:49:29 ******/
CREATE DATABASE [Hospital_Database]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Hospital_Database', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Hospital_Database.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Hospital_Database_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Hospital_Database_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Hospital_Database] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Hospital_Database].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Hospital_Database] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Hospital_Database] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Hospital_Database] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Hospital_Database] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Hospital_Database] SET ARITHABORT OFF 
GO
ALTER DATABASE [Hospital_Database] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Hospital_Database] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Hospital_Database] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Hospital_Database] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Hospital_Database] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Hospital_Database] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Hospital_Database] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Hospital_Database] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Hospital_Database] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Hospital_Database] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Hospital_Database] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Hospital_Database] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Hospital_Database] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Hospital_Database] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Hospital_Database] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Hospital_Database] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Hospital_Database] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Hospital_Database] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Hospital_Database] SET  MULTI_USER 
GO
ALTER DATABASE [Hospital_Database] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Hospital_Database] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Hospital_Database] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Hospital_Database] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Hospital_Database] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Hospital_Database]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 19/05/2023 18:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Department](
	[department_id] [int] NOT NULL,
	[name] [varchar](100) NULL,
	[location] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[department_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 19/05/2023 18:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Doctor](
	[doctor_id] [int] NOT NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[address] [varchar](100) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[zip_code] [varchar](10) NULL,
	[phone_number] [varchar](20) NULL,
	[email] [varchar](100) NULL,
	[specialty] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[doctor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 19/05/2023 18:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee](
	[employee_id] [int] NOT NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[address] [varchar](100) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[zip_code] [varchar](10) NULL,
	[phone_number] [varchar](20) NULL,
	[email] [varchar](100) NULL,
	[job_title] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Medication]    Script Date: 19/05/2023 18:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Medication](
	[medication_id] [int] NOT NULL,
	[visit_id] [int] NULL,
	[name_of_medication] [varchar](500) NULL,
	[dosage] [varchar](50) NULL,
	[frequency] [varchar](50) NULL,
	[instructions] [varchar](500) NULL,
	[notes] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[medication_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 19/05/2023 18:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Patient](
	[patient_id] [int] NOT NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[address] [varchar](100) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[zip_code] [varchar](10) NULL,
	[date_of_birth] [date] NULL,
	[phone_number] [varchar](20) NULL,
	[email] [varchar](100) NULL,
	[insurance_provider] [varchar](100) NULL,
	[insurance_policy_number] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[patient_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Treatment]    Script Date: 19/05/2023 18:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Treatment](
	[treatment_id] [int] NOT NULL,
	[visit_id] [int] NULL,
	[doctor_id] [int] NULL,
	[name_of_treatment] [varchar](500) NULL,
	[date_of_treatment] [date] NULL,
	[dosage] [varchar](50) NULL,
	[frequency] [varchar](50) NULL,
	[notes] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[treatment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Visit]    Script Date: 19/05/2023 18:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Visit](
	[visit_id] [int] NOT NULL,
	[patient_id] [int] NULL,
	[doctor_id] [int] NULL,
	[date_of_visit] [date] NULL,
	[reason_for_visit] [varchar](500) NULL,
	[diagnosis] [varchar](500) NULL,
	[procedur] [varchar](500) NULL,
	[tests] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[visit_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Work_Assignment]    Script Date: 19/05/2023 18:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Work_Assignment](
	[work_assignment_id] [int] NOT NULL,
	[employee_id] [int] NULL,
	[department_id] [int] NULL,
	[startdate] [date] NULL,
	[end_date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[work_assignment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Department] ([department_id], [name], [location]) VALUES (1, N'Cardiology', N'Building A, 2nd Floor')
INSERT [dbo].[Doctor] ([doctor_id], [first_name], [last_name], [address], [city], [state], [zip_code], [phone_number], [email], [specialty]) VALUES (1, N'John', N'Smith', N'123 Main St', N'New York', N'NY', N'12345', N'555-1234', N'john.smith@example.com', N'General Medicine')
INSERT [dbo].[Employee] ([employee_id], [first_name], [last_name], [address], [city], [state], [zip_code], [phone_number], [email], [job_title]) VALUES (1, N'Hans', N'Müller', N'123 Hauptstraße', N'Berlin', N'Berlin', N'12345', N'555-555-1212', N'hans.mueller@example.com', N'Manager')
INSERT [dbo].[Medication] ([medication_id], [visit_id], [name_of_medication], [dosage], [frequency], [instructions], [notes]) VALUES (1, 1, N'Ibuprofen', N'200mg', N'Every 6 hours', N'Take with food', N'Avoid if allergic to NSAIDs')
INSERT [dbo].[Patient] ([patient_id], [first_name], [last_name], [address], [city], [state], [zip_code], [date_of_birth], [phone_number], [email], [insurance_provider], [insurance_policy_number]) VALUES (1, N'John', N'Doe', N'123 Main St', N'New York', N'NY', N'12345', CAST(N'1990-01-01' AS Date), N'555-1234', N'john@example.com', N'XYZ Insurance', N'P123456')
INSERT [dbo].[Treatment] ([treatment_id], [visit_id], [doctor_id], [name_of_treatment], [date_of_treatment], [dosage], [frequency], [notes]) VALUES (1, 1, 1, N'Physical Therapy', CAST(N'2023-11-15' AS Date), N'2 sessions per week', N'Every Monday and Wednesday', N'Focus on lower back exercises')
INSERT [dbo].[Visit] ([visit_id], [patient_id], [doctor_id], [date_of_visit], [reason_for_visit], [diagnosis], [procedur], [tests]) VALUES (1, 1, 1, CAST(N'2023-01-15' AS Date), N'Routine checkup', N'No issues found', N'General checkup', N'Blood test, X-ray')
INSERT [dbo].[Work_Assignment] ([work_assignment_id], [employee_id], [department_id], [startdate], [end_date]) VALUES (1, 1, 1, CAST(N'2023-01-01' AS Date), CAST(N'2023-12-31' AS Date))
ALTER TABLE [dbo].[Medication]  WITH CHECK ADD FOREIGN KEY([visit_id])
REFERENCES [dbo].[Visit] ([visit_id])
GO
ALTER TABLE [dbo].[Treatment]  WITH CHECK ADD FOREIGN KEY([doctor_id])
REFERENCES [dbo].[Doctor] ([doctor_id])
GO
ALTER TABLE [dbo].[Treatment]  WITH CHECK ADD FOREIGN KEY([visit_id])
REFERENCES [dbo].[Visit] ([visit_id])
GO
ALTER TABLE [dbo].[Visit]  WITH CHECK ADD FOREIGN KEY([doctor_id])
REFERENCES [dbo].[Doctor] ([doctor_id])
GO
ALTER TABLE [dbo].[Visit]  WITH CHECK ADD FOREIGN KEY([patient_id])
REFERENCES [dbo].[Patient] ([patient_id])
GO
ALTER TABLE [dbo].[Work_Assignment]  WITH CHECK ADD FOREIGN KEY([department_id])
REFERENCES [dbo].[Department] ([department_id])
GO
ALTER TABLE [dbo].[Work_Assignment]  WITH CHECK ADD FOREIGN KEY([employee_id])
REFERENCES [dbo].[Employee] ([employee_id])
GO
USE [master]
GO
ALTER DATABASE [Hospital_Database] SET  READ_WRITE 
GO
