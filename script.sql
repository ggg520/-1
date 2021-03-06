USE [master]
GO
/****** Object:  Database [myProject]    Script Date: 2020/11/10 22:30:35 ******/
CREATE DATABASE [myProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'myProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\myProject.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'myProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\myProject_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [myProject] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [myProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [myProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [myProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [myProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [myProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [myProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [myProject] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [myProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [myProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [myProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [myProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [myProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [myProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [myProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [myProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [myProject] SET  DISABLE_BROKER 
GO
ALTER DATABASE [myProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [myProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [myProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [myProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [myProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [myProject] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [myProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [myProject] SET RECOVERY FULL 
GO
ALTER DATABASE [myProject] SET  MULTI_USER 
GO
ALTER DATABASE [myProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [myProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [myProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [myProject] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [myProject] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'myProject', N'ON'
GO
ALTER DATABASE [myProject] SET QUERY_STORE = OFF
GO
USE [myProject]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [myProject]
GO
/****** Object:  Table [dbo].[mp_admin]    Script Date: 2020/11/10 22:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mp_admin](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[AdminID] [varchar](50) NOT NULL,
	[AdminPassword] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mp_course]    Script Date: 2020/11/10 22:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mp_course](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Course] [varchar](50) NOT NULL,
	[CourseID] [varchar](50) NOT NULL,
	[Section] [varchar](50) NOT NULL,
	[CheckInTime] [time](7) NOT NULL,
	[CheckOutTime] [time](7) NOT NULL,
	[ClassroomInformation] [varchar](50) NOT NULL,
	[TeacherInformation] [varchar](50) NOT NULL,
	[CourseInformation] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mp_sign]    Script Date: 2020/11/10 22:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mp_sign](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[StuID] [varchar](50) NOT NULL,
	[CourseSection] [varchar](50) NOT NULL,
	[CourseID] [varchar](50) NOT NULL,
	[SignInTime] [time](7) NULL,
	[SignOutTime] [time](7) NULL,
	[Attendance] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mp_stu]    Script Date: 2020/11/10 22:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mp_stu](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[StuID] [varchar](50) NOT NULL,
	[StuName] [varchar](50) NOT NULL,
	[Sex] [varchar](3) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[FingerPrint] [bigint] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[mp_admin] ON 

INSERT [dbo].[mp_admin] ([ID], [AdminID], [AdminPassword]) VALUES (1, N'00', N'admin')
INSERT [dbo].[mp_admin] ([ID], [AdminID], [AdminPassword]) VALUES (9, N't1', N'1111')
INSERT [dbo].[mp_admin] ([ID], [AdminID], [AdminPassword]) VALUES (3, N't2', N'2222')
INSERT [dbo].[mp_admin] ([ID], [AdminID], [AdminPassword]) VALUES (7, N't7', N'7777')
INSERT [dbo].[mp_admin] ([ID], [AdminID], [AdminPassword]) VALUES (8, N't4', N'4444')
SET IDENTITY_INSERT [dbo].[mp_admin] OFF
SET IDENTITY_INSERT [dbo].[mp_course] ON 

INSERT [dbo].[mp_course] ([ID], [Course], [CourseID], [Section], [CheckInTime], [CheckOutTime], [ClassroomInformation], [TeacherInformation], [CourseInformation]) VALUES (2, N'模拟电子电路', N'23.5', N'12', CAST(N'10:20:00' AS Time), CAST(N'10:45:00' AS Time), N'3223', N'刘洪利', N'')
INSERT [dbo].[mp_course] ([ID], [Course], [CourseID], [Section], [CheckInTime], [CheckOutTime], [ClassroomInformation], [TeacherInformation], [CourseInformation]) VALUES (5, N'数字电子电路', N'21.5', N'16', CAST(N'09:30:00' AS Time), CAST(N'09:45:00' AS Time), N'2226', N'邵洁', N'')
INSERT [dbo].[mp_course] ([ID], [Course], [CourseID], [Section], [CheckInTime], [CheckOutTime], [ClassroomInformation], [TeacherInformation], [CourseInformation]) VALUES (6, N'单片机原理与接口', N'26.9', N'8', CAST(N'08:50:00' AS Time), CAST(N'08:20:00' AS Time), N'2102', N'刘丹丹', N'')
INSERT [dbo].[mp_course] ([ID], [Course], [CourseID], [Section], [CheckInTime], [CheckOutTime], [ClassroomInformation], [TeacherInformation], [CourseInformation]) VALUES (7, N'数字图像处理', N'12.9', N'8', CAST(N'09:45:00' AS Time), CAST(N'08:30:00' AS Time), N'3205', N'赵琰', N'')
INSERT [dbo].[mp_course] ([ID], [Course], [CourseID], [Section], [CheckInTime], [CheckOutTime], [ClassroomInformation], [TeacherInformation], [CourseInformation]) VALUES (8, N'物联网', N'10.4', N'15', CAST(N'15:30:00' AS Time), CAST(N'08:30:00' AS Time), N'1107', N'邵洁', N'')
SET IDENTITY_INSERT [dbo].[mp_course] OFF
SET IDENTITY_INSERT [dbo].[mp_sign] ON 

INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (78, N'20171598', N'1', N'23.5', CAST(N'10:20:00' AS Time), CAST(N'10:45:00' AS Time), 1)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (79, N'20171598', N'2', N'23.5', CAST(N'10:20:00' AS Time), CAST(N'10:45:00' AS Time), 1)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (80, N'20171598', N'3', N'23.5', NULL, NULL, 4)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (81, N'20171598', N'4', N'23.5', NULL, NULL, 4)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (82, N'20171598', N'5', N'23.5', NULL, NULL, 4)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (83, N'20171598', N'6', N'23.5', NULL, NULL, 4)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (84, N'20171598', N'7', N'23.5', NULL, NULL, 4)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (85, N'20171598', N'8', N'23.5', NULL, NULL, 4)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (86, N'20171598', N'9', N'23.5', CAST(N'10:20:00' AS Time), CAST(N'10:45:00' AS Time), 4)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (87, N'20171598', N'10', N'23.5', CAST(N'10:20:00' AS Time), CAST(N'10:45:00' AS Time), 1)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (88, N'20171598', N'11', N'23.5', NULL, NULL, 4)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (89, N'20171598', N'12', N'23.5', NULL, NULL, 4)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (90, N'20171591', N'1', N'23.5', CAST(N'10:26:00' AS Time), CAST(N'10:46:00' AS Time), 2)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (91, N'20171591', N'2', N'23.5', NULL, CAST(N'10:45:00' AS Time), 2)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (92, N'20171591', N'3', N'23.5', NULL, NULL, 0)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (93, N'20171591', N'4', N'23.5', NULL, NULL, 0)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (94, N'20171591', N'5', N'23.5', NULL, NULL, 0)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (95, N'20171591', N'6', N'23.5', NULL, NULL, 0)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (96, N'20171591', N'7', N'23.5', NULL, NULL, 0)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (97, N'20171591', N'8', N'23.5', NULL, NULL, 0)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (98, N'20171591', N'9', N'23.5', NULL, NULL, 0)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (99, N'20171591', N'10', N'23.5', NULL, NULL, 4)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (100, N'20171591', N'11', N'23.5', NULL, NULL, 0)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (101, N'20171591', N'12', N'23.5', NULL, NULL, 0)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (102, N'20171581', N'1', N'23.5', CAST(N'10:18:00' AS Time), CAST(N'10:30:00' AS Time), 3)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (103, N'20171581', N'2', N'23.5', NULL, NULL, 4)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (104, N'20171581', N'3', N'23.5', NULL, NULL, 0)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (105, N'20171581', N'4', N'23.5', NULL, NULL, 0)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (106, N'20171581', N'5', N'23.5', NULL, NULL, 0)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (107, N'20171581', N'6', N'23.5', NULL, NULL, 0)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (108, N'20171581', N'7', N'23.5', NULL, NULL, 0)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (109, N'20171581', N'8', N'23.5', NULL, NULL, 0)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (110, N'20171581', N'9', N'23.5', NULL, NULL, 0)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (111, N'20171581', N'10', N'23.5', NULL, NULL, 4)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (112, N'20171581', N'11', N'23.5', NULL, NULL, 0)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (113, N'20171581', N'12', N'23.5', NULL, NULL, 0)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (114, N'20171598', N'1', N'10.4', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (115, N'20171598', N'2', N'10.4', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (116, N'20171598', N'3', N'10.4', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (117, N'20171598', N'4', N'10.4', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (118, N'20171598', N'5', N'10.4', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (119, N'20171598', N'6', N'10.4', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (120, N'20171598', N'7', N'10.4', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (121, N'20171598', N'8', N'10.4', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (122, N'20171598', N'9', N'10.4', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (123, N'20171598', N'10', N'10.4', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (124, N'20171598', N'11', N'10.4', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (125, N'20171598', N'12', N'10.4', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (126, N'20171598', N'13', N'10.4', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (127, N'20171598', N'14', N'10.4', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[mp_sign] ([ID], [StuID], [CourseSection], [CourseID], [SignInTime], [SignOutTime], [Attendance]) VALUES (128, N'20171598', N'15', N'10.4', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 0)
SET IDENTITY_INSERT [dbo].[mp_sign] OFF
SET IDENTITY_INSERT [dbo].[mp_stu] ON 

INSERT [dbo].[mp_stu] ([ID], [StuID], [StuName], [Sex], [Password], [FingerPrint]) VALUES (4, N'20171598', N'James', N'男', N'19990529', 4)
INSERT [dbo].[mp_stu] ([ID], [StuID], [StuName], [Sex], [Password], [FingerPrint]) VALUES (6, N'20171591', N'June', N'女', N'20171591', 1)
INSERT [dbo].[mp_stu] ([ID], [StuID], [StuName], [Sex], [Password], [FingerPrint]) VALUES (3, N'20171581', N'Jim', N'男', N'123456', 8)
INSERT [dbo].[mp_stu] ([ID], [StuID], [StuName], [Sex], [Password], [FingerPrint]) VALUES (8, N'20171600', N'Peter', N'男', N'20171600', 5)
INSERT [dbo].[mp_stu] ([ID], [StuID], [StuName], [Sex], [Password], [FingerPrint]) VALUES (10, N'20171556', N'Helen', N'女', N'191916', 6)
INSERT [dbo].[mp_stu] ([ID], [StuID], [StuName], [Sex], [Password], [FingerPrint]) VALUES (11, N'20161121', N'Helen', N'女', N'111111', 12)
SET IDENTITY_INSERT [dbo].[mp_stu] OFF
USE [master]
GO
ALTER DATABASE [myProject] SET  READ_WRITE 
GO
