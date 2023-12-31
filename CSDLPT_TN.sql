USE [master]
GO
/****** Object:  Database [TN_CSDLPT]    Script Date: 6/17/2023 7:50:52 AM ******/
CREATE DATABASE [TN_CSDLPT]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TN_CSDLPT', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\TN_CSDLPT.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TN_CSDLPT_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\TN_CSDLPT_log.ldf' , SIZE = 401408KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TN_CSDLPT] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TN_CSDLPT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TN_CSDLPT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TN_CSDLPT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TN_CSDLPT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TN_CSDLPT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TN_CSDLPT] SET ARITHABORT OFF 
GO
ALTER DATABASE [TN_CSDLPT] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TN_CSDLPT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TN_CSDLPT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TN_CSDLPT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TN_CSDLPT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TN_CSDLPT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TN_CSDLPT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TN_CSDLPT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TN_CSDLPT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TN_CSDLPT] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TN_CSDLPT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TN_CSDLPT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TN_CSDLPT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TN_CSDLPT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TN_CSDLPT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TN_CSDLPT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TN_CSDLPT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TN_CSDLPT] SET RECOVERY FULL 
GO
ALTER DATABASE [TN_CSDLPT] SET  MULTI_USER 
GO
ALTER DATABASE [TN_CSDLPT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TN_CSDLPT] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TN_CSDLPT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TN_CSDLPT] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TN_CSDLPT] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TN_CSDLPT', N'ON'
GO
ALTER DATABASE [TN_CSDLPT] SET QUERY_STORE = OFF
GO
USE [TN_CSDLPT]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [TN_CSDLPT]
GO
/****** Object:  User [TH234]    Script Date: 6/17/2023 7:50:52 AM ******/
CREATE USER [TH234] FOR LOGIN [DVT] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [TH123]    Script Date: 6/17/2023 7:50:52 AM ******/
CREATE USER [TH123] FOR LOGIN [PVH] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [TH101]    Script Date: 6/17/2023 7:50:52 AM ******/
CREATE USER [TH101] FOR LOGIN [KDT] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [TH000]    Script Date: 6/17/2023 7:50:52 AM ******/
CREATE USER [TH000] FOR LOGIN [MMM] WITH DEFAULT_SCHEMA=[TH000]
GO
/****** Object:  User [SV]    Script Date: 6/17/2023 7:50:52 AM ******/
CREATE USER [SV] FOR LOGIN [SV] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [HTKN]    Script Date: 6/17/2023 7:50:52 AM ******/
CREATE USER [HTKN] FOR LOGIN [HTKN] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [TRUONG]    Script Date: 6/17/2023 7:50:52 AM ******/
CREATE ROLE [TRUONG]
GO
/****** Object:  DatabaseRole [SINHVIEN]    Script Date: 6/17/2023 7:50:52 AM ******/
CREATE ROLE [SINHVIEN]
GO
/****** Object:  DatabaseRole [MSmerge_PAL_role]    Script Date: 6/17/2023 7:50:52 AM ******/
CREATE ROLE [MSmerge_PAL_role]
GO
/****** Object:  DatabaseRole [MSmerge_CD30B30F128D4C369D824C7897EA2D25]    Script Date: 6/17/2023 7:50:52 AM ******/
CREATE ROLE [MSmerge_CD30B30F128D4C369D824C7897EA2D25]
GO
/****** Object:  DatabaseRole [MSmerge_6CBDD26B62674A9FAD9DEEE5A7B9840C]    Script Date: 6/17/2023 7:50:52 AM ******/
CREATE ROLE [MSmerge_6CBDD26B62674A9FAD9DEEE5A7B9840C]
GO
/****** Object:  DatabaseRole [MSmerge_648D09A74AF747F1878E78BBEB49F351]    Script Date: 6/17/2023 7:50:52 AM ******/
CREATE ROLE [MSmerge_648D09A74AF747F1878E78BBEB49F351]
GO
/****** Object:  DatabaseRole [GIANGVIEN]    Script Date: 6/17/2023 7:50:52 AM ******/
CREATE ROLE [GIANGVIEN]
GO
/****** Object:  DatabaseRole [COSO]    Script Date: 6/17/2023 7:50:52 AM ******/
CREATE ROLE [COSO]
GO
ALTER ROLE [COSO] ADD MEMBER [TH234]
GO
ALTER ROLE [db_owner] ADD MEMBER [TH234]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [TH234]
GO
ALTER ROLE [TRUONG] ADD MEMBER [TH123]
GO
ALTER ROLE [db_owner] ADD MEMBER [TH123]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [TH123]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [TH123]
GO
ALTER ROLE [db_datareader] ADD MEMBER [TH123]
GO
ALTER ROLE [GIANGVIEN] ADD MEMBER [TH101]
GO
ALTER ROLE [GIANGVIEN] ADD MEMBER [TH000]
GO
ALTER ROLE [SINHVIEN] ADD MEMBER [SV]
GO
ALTER ROLE [db_owner] ADD MEMBER [HTKN]
GO
ALTER ROLE [db_owner] ADD MEMBER [TRUONG]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [TRUONG]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [TRUONG]
GO
ALTER ROLE [db_datareader] ADD MEMBER [TRUONG]
GO
ALTER ROLE [MSmerge_PAL_role] ADD MEMBER [MSmerge_CD30B30F128D4C369D824C7897EA2D25]
GO
ALTER ROLE [MSmerge_PAL_role] ADD MEMBER [MSmerge_6CBDD26B62674A9FAD9DEEE5A7B9840C]
GO
ALTER ROLE [MSmerge_PAL_role] ADD MEMBER [MSmerge_648D09A74AF747F1878E78BBEB49F351]
GO
ALTER ROLE [db_owner] ADD MEMBER [COSO]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [COSO]
GO
/****** Object:  Schema [MSmerge_PAL_role]    Script Date: 6/17/2023 7:50:53 AM ******/
CREATE SCHEMA [MSmerge_PAL_role]
GO
/****** Object:  Schema [TH000]    Script Date: 6/17/2023 7:50:53 AM ******/
CREATE SCHEMA [TH000]
GO
/****** Object:  UserDefinedFunction [dbo].[FN_CheckDaThi]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[FN_CheckDaThi] (
@MAMH NCHAR(8), 
@MALOP nchar(15), 
@LAN int)
RETURNS NCHAR(1)
AS
BEGIN
	IF EXISTS(SELECT * FROM dbo.BANGDIEM
	WHERE  LAN = @LAN AND MAMH = @MAMH AND MASV IN(SELECT MASV FROM SINHVIEN WHERE MALOP = @MALOP)) RETURN 'X'
	RETURN 'O'
END
GO
/****** Object:  UserDefinedFunction [dbo].[FN_DiemChu]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION  [dbo].[FN_DiemChu]
	(@DIEM FLOAT)
	RETURNS NVARCHAR(20)
AS
BEGIN
	DECLARE @Pn nvarchar(10), @Pt nvarchar(10)
	SET @Pn = ''
	SET @Pt =''

	IF (@DIEM - FLOOR(@DIEM) = 0.5) 
	BEGIN
		SET @Pt = N' phẩy năm'
		SET @DIEM = @DIEM - 0.5 
	END
	
	IF (@DIEM = 0) SET @Pn = N'Không' 
	ELSE IF (@DIEM = 1) SET @Pn = N'Một' 
	ELSE IF (@DIEM = 2) SET @Pn = N'Hai' 
	ELSE IF (@DIEM = 3) SET @Pn = N'Ba' 
	ELSE IF (@DIEM = 4) SET @Pn = N'Bốn' 
	ELSE IF (@DIEM = 5) SET @Pn = N'Năm' 
	ELSE IF (@DIEM = 6) SET @Pn = N'Sáu' 
	ELSE IF (@DIEM = 7) SET @Pn = N'Bảy' 
	ELSE IF (@DIEM = 8) SET @Pn = N'Tám' 
	ELSE IF (@DIEM = 9) SET @Pn = N'Chín' 
	ELSE IF (@DIEM = 10) SET @Pn = N'Mười'

	RETURN @Pn + @Pt
END
GO
/****** Object:  View [dbo].[V_DS_PHANMANH]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_DS_PHANMANH]
AS
SELECT PUBS.description AS TENCS, SUBS.subscriber_server AS TENSERVER
FROM   dbo.sysmergepublications AS PUBS INNER JOIN
             dbo.sysmergesubscriptions AS SUBS ON PUBS.pubid = SUBS.pubid AND PUBS.publisher <> SUBS.subscriber_server
WHERE (PUBS.name <> 'TRACUU')
GO
/****** Object:  Table [dbo].[BAITHI]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAITHI](
	[ID_BANGDIEM] [int] NOT NULL,
	[CAUHOI] [int] NOT NULL,
	[THUTU] [int] NOT NULL,
	[VITRI_A] [int] NULL,
	[VITRI_B] [int] NULL,
	[VITRI_C] [int] NULL,
	[VITRI_D] [int] NULL,
	[DACHON] [nchar](1) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_BAITHI_1] PRIMARY KEY CLUSTERED 
(
	[ID_BANGDIEM] ASC,
	[CAUHOI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BANGDIEM]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BANGDIEM](
	[MAMH] [char](5) NOT NULL,
	[MASV] [char](8) NOT NULL,
	[LAN] [int] NOT NULL,
	[NGAYTHI] [datetime] NULL,
	[DIEM] [float] NULL,
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_BANGDIEM_1] PRIMARY KEY CLUSTERED 
(
	[MAMH] ASC,
	[MASV] ASC,
	[LAN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BODE]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BODE](
	[CAUHOI] [int] NOT NULL,
	[MAMH] [char](5) NULL,
	[TRINHDO] [char](1) NULL,
	[NOIDUNG] [ntext] NULL,
	[A] [ntext] NULL,
	[B] [ntext] NULL,
	[C] [ntext] NULL,
	[D] [ntext] NULL,
	[DAP_AN] [char](1) NULL,
	[MAGV] [char](8) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_BODE] PRIMARY KEY CLUSTERED 
(
	[CAUHOI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COSO]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COSO](
	[MACS] [nchar](3) NOT NULL,
	[TENCS] [nvarchar](50) NOT NULL,
	[DIACHI] [nvarchar](100) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_COSO] PRIMARY KEY CLUSTERED 
(
	[MACS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GIAOVIEN]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIAOVIEN](
	[MAGV] [char](8) NOT NULL,
	[HO] [nvarchar](50) NULL,
	[TEN] [nvarchar](10) NULL,
	[DIACHI] [nvarchar](50) NULL,
	[MAKH] [nchar](8) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_GIAOVIEN] PRIMARY KEY CLUSTERED 
(
	[MAGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GIAOVIEN_DANGKY]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIAOVIEN_DANGKY](
	[MAGV] [char](8) NULL,
	[MAMH] [char](5) NOT NULL,
	[MALOP] [nchar](15) NOT NULL,
	[TRINHDO] [char](1) NULL,
	[NGAYTHI] [datetime] NULL,
	[LAN] [int] NOT NULL,
	[SOCAUTHI] [int] NULL,
	[THOIGIAN] [int] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_GIAOVIEN_DANGKY] PRIMARY KEY CLUSTERED 
(
	[MAMH] ASC,
	[MALOP] ASC,
	[LAN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHOA]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHOA](
	[MAKH] [nchar](8) NOT NULL,
	[TENKH] [nvarchar](50) NOT NULL,
	[MACS] [nchar](3) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_KHOA] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOP]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOP](
	[MALOP] [nchar](15) NOT NULL,
	[TENLOP] [nvarchar](50) NOT NULL,
	[MAKH] [nchar](8) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_LOP] PRIMARY KEY CLUSTERED 
(
	[MALOP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MONHOC]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MONHOC](
	[MAMH] [char](5) NOT NULL,
	[TENMH] [nvarchar](50) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_TENMH] PRIMARY KEY CLUSTERED 
(
	[MAMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SINHVIEN]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SINHVIEN](
	[MASV] [char](8) NOT NULL,
	[HO] [nvarchar](50) NOT NULL,
	[TEN] [nvarchar](10) NOT NULL,
	[NGAYSINH] [date] NULL,
	[DIACHI] [nvarchar](100) NULL,
	[MATKHAU] [nchar](50) NULL,
	[MALOP] [nchar](15) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_SINHVIEN] PRIMARY KEY CLUSTERED 
(
	[MASV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEMP10]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEMP10](
	[CAUHOI] [int] NULL,
	[MAMH] [char](5) NOT NULL,
	[MASV] [nchar](10) NOT NULL,
	[LAN] [int] NOT NULL,
	[THUTU] [int] NOT NULL,
	[ARANDOM] [int] NULL,
	[BRANDOM] [int] NULL,
	[CRANDOM] [int] NULL,
	[DRANDOM] [int] NULL,
	[DACHON] [char](1) NULL,
	[THOIGIAN] [float] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_TEMP10] PRIMARY KEY CLUSTERED 
(
	[MAMH] ASC,
	[MASV] ASC,
	[LAN] ASC,
	[THUTU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (92116, 141, 7, 2, 0, 3, 1, N'X', N'afb0fbb3-3bf6-ed11-8b51-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (92116, 142, 1, 2, 1, 3, 0, N'D', N'a9b0fbb3-3bf6-ed11-8b51-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (92116, 143, 5, 0, 3, 1, 2, N'D', N'adb0fbb3-3bf6-ed11-8b51-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (92116, 144, 3, 3, 1, 2, 0, N'D', N'abb0fbb3-3bf6-ed11-8b51-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (92116, 145, 10, 2, 0, 3, 1, N'X', N'b2b0fbb3-3bf6-ed11-8b51-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (92116, 146, 9, 2, 0, 3, 1, N'X', N'b1b0fbb3-3bf6-ed11-8b51-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (92116, 147, 8, 2, 0, 3, 1, N'D', N'b0b0fbb3-3bf6-ed11-8b51-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (92116, 148, 4, 3, 1, 2, 0, N'A', N'acb0fbb3-3bf6-ed11-8b51-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (92116, 149, 2, 0, 3, 1, 2, N'D', N'aab0fbb3-3bf6-ed11-8b51-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (92116, 150, 6, 0, 3, 1, 2, N'B', N'aeb0fbb3-3bf6-ed11-8b51-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (92117, 3, 2, 3, 0, 2, 1, N'X', N'63a4878a-3ef6-ed11-8b51-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (92117, 4, 9, 1, 2, 3, 0, N'X', N'6aa4878a-3ef6-ed11-8b51-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (92117, 5, 5, 2, 1, 3, 0, N'B', N'66a4878a-3ef6-ed11-8b51-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (92117, 6, 10, 1, 2, 3, 0, N'X', N'6ba4878a-3ef6-ed11-8b51-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (92117, 7, 3, 3, 0, 2, 1, N'X', N'64a4878a-3ef6-ed11-8b51-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (92117, 8, 6, 0, 3, 1, 2, N'X', N'67a4878a-3ef6-ed11-8b51-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (92117, 9, 1, 2, 3, 0, 1, N'D', N'62a4878a-3ef6-ed11-8b51-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (92117, 10, 4, 2, 1, 3, 0, N'D', N'65a4878a-3ef6-ed11-8b51-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (92117, 11, 8, 0, 3, 1, 2, N'X', N'69a4878a-3ef6-ed11-8b51-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (92117, 12, 7, 0, 3, 1, 2, N'C', N'68a4878a-3ef6-ed11-8b51-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (94118, 141, 3, 1, 2, 3, 0, N'D', N'eef0f4b8-b7f8-ed11-8b53-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (94118, 142, 1, 1, 3, 0, 2, N'C', N'ecf0f4b8-b7f8-ed11-8b53-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (94118, 143, 9, 2, 1, 0, 3, N'X', N'f4f0f4b8-b7f8-ed11-8b53-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (94118, 144, 5, 3, 1, 0, 2, N'A', N'f0f0f4b8-b7f8-ed11-8b53-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (94118, 145, 8, 1, 2, 3, 0, N'X', N'f3f0f4b8-b7f8-ed11-8b53-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (94118, 146, 2, 0, 3, 2, 1, N'C', N'edf0f4b8-b7f8-ed11-8b53-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (94118, 147, 10, 3, 1, 0, 2, N'X', N'f5f0f4b8-b7f8-ed11-8b53-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (94118, 148, 6, 1, 3, 0, 2, N'D', N'f1f0f4b8-b7f8-ed11-8b53-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (94118, 149, 7, 2, 1, 0, 3, N'B', N'f2f0f4b8-b7f8-ed11-8b53-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (94118, 150, 4, 3, 1, 0, 2, N'A', N'eff0f4b8-b7f8-ed11-8b53-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (94119, 141, 5, 3, 0, 1, 2, N'B', N'6ce36f90-cdf8-ed11-8b53-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (94119, 142, 10, 2, 3, 0, 1, N'C', N'71e36f90-cdf8-ed11-8b53-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (94119, 143, 7, 0, 1, 3, 2, N'A', N'6ee36f90-cdf8-ed11-8b53-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (94119, 144, 6, 1, 2, 0, 3, N'C', N'6de36f90-cdf8-ed11-8b53-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (94119, 145, 2, 1, 0, 3, 2, N'B', N'69e36f90-cdf8-ed11-8b53-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (94119, 146, 1, 3, 2, 1, 0, N'D', N'68e36f90-cdf8-ed11-8b53-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (94119, 147, 4, 2, 1, 3, 0, N'D', N'6be36f90-cdf8-ed11-8b53-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (94119, 148, 3, 2, 3, 0, 1, N'C', N'6ae36f90-cdf8-ed11-8b53-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (94119, 149, 8, 1, 3, 0, 2, N'C', N'6fe36f90-cdf8-ed11-8b53-0245e2a83ad1')
INSERT [dbo].[BAITHI] ([ID_BANGDIEM], [CAUHOI], [THUTU], [VITRI_A], [VITRI_B], [VITRI_C], [VITRI_D], [DACHON], [rowguid]) VALUES (94119, 150, 9, 1, 0, 2, 3, N'B', N'70e36f90-cdf8-ed11-8b53-0245e2a83ad1')
GO
SET IDENTITY_INSERT [dbo].[BANGDIEM] ON 

INSERT [dbo].[BANGDIEM] ([MAMH], [MASV], [LAN], [NGAYTHI], [DIEM], [ID], [rowguid]) VALUES (N'MMTCB', N'001     ', 1, CAST(N'2023-05-19T18:53:01.147' AS DateTime), 6, 92116, N'a8b0fbb3-3bf6-ed11-8b51-0245e2a83ad1')
INSERT [dbo].[BANGDIEM] ([MAMH], [MASV], [LAN], [NGAYTHI], [DIEM], [ID], [rowguid]) VALUES (N'MMTCB', N'001     ', 2, CAST(N'2023-05-19T19:13:20.090' AS DateTime), 3, 92117, N'61a4878a-3ef6-ed11-8b51-0245e2a83ad1')
INSERT [dbo].[BANGDIEM] ([MAMH], [MASV], [LAN], [NGAYTHI], [DIEM], [ID], [rowguid]) VALUES (N'MMTCB', N'002     ', 1, CAST(N'2023-05-22T22:45:49.410' AS DateTime), 5, 94118, N'ebf0f4b8-b7f8-ed11-8b53-0245e2a83ad1')
INSERT [dbo].[BANGDIEM] ([MAMH], [MASV], [LAN], [NGAYTHI], [DIEM], [ID], [rowguid]) VALUES (N'MMTCB', N'003     ', 1, CAST(N'2023-05-23T01:22:10.357' AS DateTime), 2, 94119, N'67e36f90-cdf8-ed11-8b53-0245e2a83ad1')
SET IDENTITY_INSERT [dbo].[BANGDIEM] OFF
GO
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (1, N'MMTCB', N'A', N'mạng máy tính(compute netword) so với hệ thống tập trung multi-user', N'dễ phát triển hệ thống', N'tăng độ tin cậy', N'tiết kiệm chi phí', N'tất cả đều đúng', N'D', N'TH657   ', N'ddaf3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (3, N'MMTCB', N'A', N'để một máy tính truyền dữ liệu cho một số máy khác trong mạng, ta dùng loại địa chỉ', N'Broadcast', N'Broadband', N'multicast', N'multiple access', N'C', N'TH123   ', N'deaf3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (4, N'MMTCB', N'A', N'thứ tự phân loại mạng theo chiều dài đường truyền', N'internet, lan, man, wan', N'internet, wan, man, lan', N'lan, wan, man, internet', N'man, lan, wan, internet', N'B', N'TH123   ', N'dfaf3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (5, N'MMTCB', N'A', N'mạng man được sử dụng trong phạm vi:', N'quốc gia', N'lục địa', N'khu phố', N'thành phố', N'D', N'TH123   ', N'e0af3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (6, N'MMTCB', N'A', N'thuật ngữ man được viết tắt bởi:', N'middle area network', N'metropolitan area network', N'medium area network', N'multiple access network', N'D', N'TH123   ', N'e1af3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (7, N'MMTCB', N'A', N'mạng man không kết nối theo sơ đồ:', N'bus', N'ring', N'star', N'tree', N'D', N'TH123   ', N'e2af3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (8, N'MMTCB', N'A', N'kiến trúc mạng (network architechture) là:', N'tập các chức năng trong mạng', N'tập các cấp và các protocol trong mỗi cấp', N'tập các dịch vụ trong mạng', N'tập các protocol trong mạng', N'B', N'TH123   ', N'e3af3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (9, N'MMTCB', N'A', N'thuật ngữ nào không cùng nhóm:', N'simplex', N'multiplex', N'half duplex', N'full duplex', N'B', N'TH123   ', N'e4af3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (10, N'MMTCB', N'A', N'loại dịch vụ nào có thể nhận dữ liệu không đúng thứ tự khi truyền', N'point to point', N'có kết nối', N'không kết nối', N'broadcast', N'C', N'TH123   ', N'e5af3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (11, N'MMTCB', N'A', N'dịch vụ không xác nhận (unconfirmed) chỉ sử dụng 2 phép toán cơ bản:', N'response and confirm', N'confirm and request', N'request and indication', N'indication and response', N'C', N'TH123   ', N'e6af3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (12, N'MMTCB', N'A', N'Chọn câu sai trong các nguyên lý phân cấp của mô hình OSI', N'Mỗi cấp thực hiện 1 chức năng rõ ràng', N'Mỗi cấp được chọn sao cho thông tin trao đổi giữa các cấp tối thiểu', N'Mỗi cấp được tạo ra ứng với 1 mức trừu tượng hóa', N'Mỗi cấp phải cung cấp cùng 1 kiểu địa chỉ và dịch vụ', N'D', N'TH123   ', N'e7af3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (13, N'MMTCB', N'A', N'Chức năng của cấp vật lý(physical)', N'Qui định truyền 1 hay 2 chiều', N'Quản lý lỗi sai', N'Xác định thời gian truyền 1 bit dữ liệu', N'Quản lý địa chỉ vật lý', N'C', N'TH123   ', N'e8af3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (14, N'MMTCB', N'A', N'Chức năng câp liên kết dữ liệu (data link)', N'Quản lý lỗi sai', N'Mã hóa dữ liệu', N'Tìm đường đi cho dữ liệu', N'Chọn kênh truyền', N'A', N'TH123   ', N'e9af3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (15, N'MMTCB', N'A', N'Chức năng cấp mạng (network)', N'Quản lý lưu lượng đường truyền', N'Điều khiển hoạt động subnet', N'Nén dữ liệu', N'Chọn điện áp trên kênh truyền', N'B', N'TH123   ', N'eaaf3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (16, N'MMTCB', N'A', N'Chức năng cấp vận tải (transport) ', N'Quản lý địa chỉ mạng', N'Chuyển đổi các dạng frame khác nhau', N'Thiết lập và hủy bỏ dữ liệu', N'Mã hóa và giải mã dữ liệu', N'C', N'TH123   ', N'ebaf3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (17, N'MMTCB', N'A', N'Cáp xoắn đôi trong mạng LAN dùng đầu nối', N'AUI', N'BNC', N'RJ11', N'RJ45', N'D', N'TH123   ', N'ecaf3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (18, N'MMTCB', N'A', N'T-connector dùng trong loại cáp', N'10Base-2', N'10Base-5', N'10Base-T', N'10Base-F', N'A', N'TH123   ', N'edaf3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (19, N'MMTCB', N'A', N'chọn câu sai trong các nguyên lý phân cấp của mô hình osi', N'mỗi cấp thực hiện 1 chức năng rõ ràng', N'mỗi cấp được chọn sao cho thông tin trao đổi giữa các cấp tối thiểu', N'mỗi cấp được tạo ra ứng với 1 mức trừu tượng hóa', N'mỗi cấp phải cung cấp cùng một kiểu địa chỉ và dịch vụ', N'D', N'TH123   ', N'eeaf3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (20, N'AVCB ', N'A', N'The publishers suggested that the envelopes be sent to ...... by courier so that the film can be developed as soon as possible', N'they', N'their', N'theirrrr', N'them', N'A', N'TH234   ', N'efaf3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (21, N'AVCB ', N'A', N'Board members ..... carefully define their goals and objectives for the agency before the monthly meeting next week.', N'had', N'should', N'used ', N'have', N'B', N'TH234   ', N'f0af3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (22, N'AVCB ', N'A', N'For business relations to continue between our two firms, satisfactory agreement must be ...... reached and signer', N'yet', N'both', N'either ', N'as well as', N'C', N'TH234   ', N'f1af3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (23, N'AVCB ', N'A', N'The corporation, which underwent a major restructing seven years ago, has been growing steadily ......five years', N'for', N'on', N'from', N'since', N'A', N'TH234   ', N'f2af3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (24, N'AVCB ', N'A', N'Making advance arrangements for audiovisual equipment is....... recommended for all seminars.', N'sternly', N'strikingly', N'stringently', N'strongly', N'A', N'TH234   ', N'f3af3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (25, N'AVCB ', N'A', N'Two assistants will be required to ...... reporter''s names when they arrive at the press conference', N'remark', N'check', N'notify', N'ensure', N'B', N'TH234   ', N'f4af3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (26, N'AVCB ', N'A', N'The present government has an excellent ......to increase exports', N'popularity', N'regularity', N'celebrity', N'opportunity', N'D', N'TH234   ', N'f5af3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (27, N'AVCB ', N'A', N'While you are in the building, please wear your identification badge at all times so that you are ....... as a company employee.', N'recognize', N'recognizing', N'recognizable', N'recognizably', N'C', N'TH234   ', N'f6af3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (28, N'AVCB ', N'A', N'Our studies show that increases in worker productivity have not been adequately .......rewarded by significant increases in ......', N'compensation', N'commodity', N'compilation', N'complacency', N'B', N'TH234   ', N'f7af3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (29, N'AVCB ', N'A', N'Conservatives predict that government finaces will remain...... during the period of the investigation', N'authoritative', N'summarized', N'examined', N'stable', N'D', N'TH234   ', N'f8af3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (30, N'AVCB ', N'B', N'Battery-operated reading lamps......very well right now', N'sale', N'sold', N'are selling', N'were sold', N'C', N'TH234   ', N'f9af3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (31, N'AVCB ', N'B', N'In order to place a call outside the office, you have to .......nine first. ', N'tip', N'make', N'dial', N'number', N'D', N'TH234   ', N'faaf3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (32, N'AVCB ', N'B', N'We are pleased to inform...... that the missing order has been found.', N'you', N'your', N'yours', N'yourseld', N'A', N'TH234   ', N'fbaf3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (33, N'AVCB ', N'B', N'Unfortunately, neither Mr.Sachs....... Ms Flynn will be able to attend the awards banquet this evening', N'but', N'and', N' nor', N'either', N'C', N'TH234   ', N'fcaf3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (34, N'AVCB ', N'B', N'According to the manufacturer, the new generatir is capable of....... the amount of power consumed by our facility by nearly ten percent.', N'reduced', N'reducing', N'reduce', N'reduces', N'B', N'TH234   ', N'fdaf3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (35, N'AVCB ', N'B', N'After the main course, choose from our wide....... of homemade deserts', N'varied', N'various', N'vary', N'variety', N'D', N'TH234   ', N'feaf3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (36, N'AVCB ', N'B', N'One of the most frequent complaints among airline passengers is that there is not ...... legroom', N'enough', N'many', N'very', N'plenty', N'A', N'TH234   ', N'ffaf3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (37, N'AVCB ', N'B', N'Faculty members are planning to..... a party in honor of Dr.Walker, who will retire at the end of the semester', N'carry', N'do', N'hold', N'take', N'D', N'TH234   ', N'00b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (38, N'AVCB ', N'B', N'Many employees seem more ....... now about how to use the new telephone system than they did before they attended the workshop', N'confusion', N'confuse', N'confused', N'confusing', N'C', N'TH234   ', N'01b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (39, N'AVCB ', N'B', N'.........our production figures improve in the near future, we foresee having to hire more people between now and July', N'During', N'Only', N'Unless', N'Because', N'D', N'TH234   ', N'02b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (40, N'AVCB ', N'C', N'Though their performance was relatively unpolished, the actors held the audience''s ........for the duration of the play.', N'attentive', N'attentively', N'attention', N'attentiveness', N'C', N'TH234   ', N'03b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (41, N'AVCB ', N'C', N'Dr. Abernathy''s donation to Owstion College broke the record for the largest private gift...... give to the campus', N'always', N'rarely', N'once', N'ever', N'C', N'TH234   ', N'04b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (42, N'AVCB ', N'C', N'Savat Nation Park is ....... by train,bus, charter plane, and rental car.', N'accessible', N'accessing', N'accessibility', N'accesses', N'A', N'TH234   ', N'05b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (43, N'AVCB ', N'C', N'In Piazzo''s lastest architectural project, he hopes to......his flare for blending contemporary and traditional ideals.', N'demonstrate', N'appear', N'valve', N'position', N'A', N'TH234   ', N'06b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (44, N'AVCB ', N'C', N'Replacing the offic equipment that the company purchased only three years ago seems quite.....', N'waste', N'wasteful', N'wasting', N'wasted', N'C', N'TH234   ', N'07b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (45, N'AVCB ', N'C', N'On........, employees reach their peak performance level when they have been on the job for at least two years.', N'common', N'standard', N'average', N'general', N'D', N'TH234   ', N'08b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (46, N'AVCB ', N'C', N'We were........unaware of the problems with the air-conidtioning units in the hotel rooms until this week.', N'complete ', N'completely', N'completed', N'completing', N'D', N'TH234   ', N'09b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (47, N'AVCB ', N'C', N'If you send in an order ....... mail, we recommend that you phone our sales division directly to confirm the order.', N'near', N'by', N'for', N'on', N'A', N'TH234   ', N'0ab03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (48, N'AVCB ', N'C', N'A recent global survey suggests.......... demand for aluminum and tin will remain at its current level for the next five to ten years.', N'which', N'it ', N'that', N'both', N'C', N'TH234   ', N'0bb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (49, N'AVCB ', N'C', N'Rates for the use of recreational facilities do not include ta and are subject to change without.........', N'signal', N'cash', N'report', N'notice', N'A', N'TH234   ', N'0cb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (50, N'AVCB ', N'A', N'Aswering telephone calls is the..... of an operator', N'responsible', N'responsibly', N'responsive', N'responsibility', N'D', N'TH234   ', N'0db03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (51, N'AVCB ', N'A', N'A free watch will be provided with every purchase of $20.00 or more a ........ period of time', N'limit', N'limits', N'limited', N'limiting', N'C', N'TH234   ', N'0eb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (52, N'AVCB ', N'A', N'The president of the corporation has .......arrived in Copenhagen and will meet with the Minister of Trade on Monday morning', N'still', N'yet', N'already', N'soon', N'C', N'TH234   ', N'0fb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (53, N'AVCB ', N'A', N'Because we value your business, we have .......for card members like you to receive one thousand  dollars of complimentary life insurance', N'arrange', N'arranged', N'arranges', N'arranging', N'B', N'TH234   ', N'10b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (54, N'AVCB ', N'A', N'Employees are........that due to the new government regulations. there is to be no smoking in the factory', N'reminded', N'respected', N'remembered', N'reacted', N'A', N'TH234   ', N'11b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (55, N'AVCB ', N'A', N'MS. Galera gave a long...... in honor of the retiring vice-president', N'speak', N'speaker', N'speaking', N'speech', N'D', N'TH234   ', N'12b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (56, N'AVCB ', N'A', N'Any person who is........ in volunteering his or her time for the campaign should send this office a letter of intent', N'interest', N'interested', N'interesting', N'interestingly', N'B', N'TH234   ', N'13b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (57, N'AVCB ', N'A', N'Mr.Gonzales was very concerned.........the upcoming board of directors meeting', N'to', N'about', N'at ', N'upon', N'B', N'TH234   ', N'14b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (58, N'AVCB ', N'A', N'The customers were told that no ........could be made on weekend nights because the restaurant was too busy', N'delays', N'cuisines', N'reservation', N'violations', N'C', N'TH234   ', N'15b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (59, N'AVCB ', N'A', N'The sales representive''s presentation was difficult to understand ........ he spoke very quickly', N'because', N'althought', N'so that', N'than', N'A', N'TH234   ', N'16b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (60, N'AVCB ', N'B', N'It has been predicted that an.......weak dollar will stimulate tourism in the United States', N'increased', N'increasingly', N'increases', N'increase', N'B', N'TH234   ', N'17b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (61, N'AVCB ', N'B', N'The firm is not liable for damage resulting from circumstances.........its control.', N'beyond', N'above', N'inside', N'around', N'A', N'TH234   ', N'18b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (62, N'AVCB ', N'B', N'Because of.......weather conditions, California has an advantage in the production of fruits and vegetables', N'favorite', N'favor', N'favorable', N'favorably', N'C', N'TH234   ', N'19b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (63, N'AVCB ', N'B', N'On international shipments, all duties and taxes are paid by the..........', N'recipient', N'receiving', N'receipt', N'receptive', N'A', N'TH234   ', N'1ab03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (64, N'AVCB ', N'B', N'Although the textbook gives a definitive answer,wise managers will look for........ own creative solutions', N'them', N'their', N'theirs', N'they', N'B', N'TH234   ', N'1bb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (65, N'AVCB ', N'B', N'Initial ....... regarding the merger of the companies took place yesterday at the Plaza Conference Center.', N'negotiations', N'dedications', N'propositions', N'announcements', N'A', N'TH234   ', N'1cb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (66, N'AVCB ', N'B', N'Please......... photocopies of all relevant docunments to this office ten days prior to your performance review date', N'emerge', N'substantiate', N'adapt', N'submit', N'D', N'TH234   ', N'1db03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (67, N'AVCB ', N'B', N'The auditor''s results for the five year period under study were .........the accountant''s', N'same', N'same as', N'the same', N'the same as', N'D', N'TH234   ', N'1eb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (68, N'AVCB ', N'B', N'.........has the marketing environment been more complex and subject to change', N'Totally', N'Negatively', N'Decidedly', N'Rarely', N'D', N'TH234   ', N'1fb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (69, N'AVCB ', N'B', N'All full-time staff are eligible to participate in the revised health plan, which becomes effective the first ......... the month.', N'of', N'to', N'from', N'for', N'A', N'TH234   ', N'20b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (70, N'AVCB ', N'C', N'Contracts must be read........ before they are signed.', N'thoroughness', N'more thorough', N'thorough', N'thoroughly', N'D', N'TH234   ', N'21b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (71, N'AVCB ', N'C', N'Passengers should allow for...... travel time to the airport in rush hour traffic', N'addition', N'additive', N'additionally', N'additional', N'D', N'TH234   ', N'22b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (72, N'AVCB ', N'C', N'This fiscal year, the engineering team has worked well together on all phases ofproject.........', N'development', N'developed', N'develops', N'developer', N'A', N'TH234   ', N'23b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (73, N'AVCB ', N'C', N'Mr.Dupont had no ....... how long it would take to drive downtown', N'knowledge', N'thought', N'idea', N'willingness', N'C', N'TH234   ', N'24b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (74, N'AVCB ', N'C', N'Small company stocks usually benefit..........the so called January effect that cause the price of these stocks to rise between November and January', N'unless', N'from', N'to ', N'since', N'B', N'TH234   ', N'25b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (75, N'AVCB ', N'C', N'It has been suggested that employees ........to work in their current positions until the quarterly review is finished.', N'continuity', N'continue', N'continuing', N'continuous', N'B', N'TH234   ', N'26b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (76, N'AVCB ', N'C', N'It is admirable that Ms.Jin wishes to handle all transactions by........, but it might be better if several people shared the responsibility', N'she', N'herself', N'her', N'hers', N'B', N'TH234   ', N'27b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (77, N'AVCB ', N'C', N'This new highway construction project will help the company.........', N'diversity', N'clarify', N'intensify', N'modify', N'A', N'TH234   ', N'28b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (78, N'AVCB ', N'C', N'Ms.Patel has handed in an ........business plan to the director', N'anxious', N'evident', N'eager', N'outstanding', N'D', N'TH234   ', N'29b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (79, N'AVCB ', N'C', N'Recent changes in heating oil costs have affected..........production of turniture', N'local', N'locality', N'locally', N'location', N'A', N'TH234   ', N'2ab03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (80, N'MMTCB', N'A', N'Termiator là linh kiện dùng trong loại cáp mạng', N'Cáp quang', N'UTP và STP ', N'Xoắn đôi', N'Đồng trục', N'D', N'TH123   ', N'2bb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (81, N'MMTCB', N'A', N'Mạng không dây dùng loại sóng nào không bị ảnh hưởng bởi khoảng cách địa lý', N'Sóng radio', N'Sống hồng ngoại', N'Sóng viba', N'Song cực ngắn', N'A', N'TH123   ', N'2cb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (82, N'MMTCB', N'A', N'Đường truyền E1 gồm 32 kênh, trong đó sử dụng cho dữ liệu là:', N'32 kênh', N'31 kênh', N'30 kênh', N'24 kênh', N'C', N'TH123   ', N'2db03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (83, N'MMTCB', N'A', N'Mạng máy tính thường sử dụng loại chuyển mach', N'Gói (packet switch)', N'Kênh (Circuit switch)', N'Thông báo(message switch)', N'Tất cả đều đúng', N'A', N'TH123   ', N'2eb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (84, N'MMTCB', N'A', N'Cáp UTP hỗ trợ tôc độ truyền 100MBps là loại', N'Cat 3', N'Cat 4', N'Cat 5', N'Cat 6', N'C', N'TH123   ', N'2fb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (85, N'MMTCB', N'A', N'Thiết bị nào làm việc trong cấp vật lý (physical) ', N'Terminator', N'Hub', N'Repeater', N'Tất cả đều đúng', N'D', N'TH123   ', N'30b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (86, N'MMTCB', N'A', N'Phương pháp dồn kênh phân chia tần số gọi là', N'FDM', N'WDM', N'TDM', N'CSMA', N'A', N'TH123   ', N'31b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (87, N'MMTCB', N'A', N'Dịch vụ nào không sử dụng trong cấp data link', N'Xác nhận, có kết nối', N'Xác nhận, không kết nôi', N'Không xác nhận, có kết nối', N'Không xác nhận, không kết nối', N'C', N'TH123   ', N'32b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (88, N'MMTCB', N'A', N'Nguyên nhân gây sai sót khi gửi/nhận dữ liệu trên mạng', N'Mất đồng bộ trong khi truyền', N'Nhiễu từ môi trường', N'Lỗi phần cứng hoặc phần mềm', N'Tất cả đều đúng ', N'D', N'TH123   ', N'33b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (89, N'MMTCB', N'A', N'Để tránh sai sót khi truyền dữ liệu trong cấp data link', N'Đánh số thứ tự frame', N'Quản lý dữ liệu theo frame', N'Dùng vùng checksum', N'Tất cả đều đúng', N'D', N'TH123   ', N'34b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (90, N'MMTCB', N'A', N'Quản lý lưu lượng đường truyền là chức năng của cấp', N'Presentation', N'Network', N'Data link', N'Physical', N'C', N'TH123   ', N'35b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (91, N'MMTCB', N'A', N'Hoạt động của protocol Stop and Wait', N'Chờ một khoảng thời gian time-out rồi gửi tiếp frame kế', N'Chờ 1 khoảng thời gian time-out rồi gửi lại frame trước', N'Chờ nhận được ACK của frame trước mới gửi tiếp frame kế', N'Không chờ mà gửi liên tiếp các frame kế nhau', N'C', N'TH123   ', N'36b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (92, N'MMTCB', N'A', N'Protocol nào tạo frame bằng phương pháp chèn kí tự', N'ADCCP', N'HDLC', N'SDLC', N'PPP', N'D', N'TH123   ', N'37b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (93, N'MMTCB', N'A', N'Phương pháp nào được dủng trong việc phát hiện lỗi', N'Timer', N'Ack', N'Checksum', N'Tất cả đều đúng', N'C', N'TH123   ', N'38b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (94, N'MMTCB', N'A', N'Kiểm soát lưu lượng (flow control) có nghĩa là', N'Thay đổi thứ tự truyền frame', N'Điều tiết tốc độ truyền frame', N'Thay đổi thời gian chờ time-out', N'Điều chỉnh kích thước frame', N'B', N'TH123   ', N'39b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (95, N'MMTCB', N'A', N'Khả năng nhận biết tình trạng đường truyền ( carrier sence) là', N'Xác định đường truyền tốt hay xấu', N'Có kết nối được hay không', N'Nhận biết có xung đột hay không', N'Đường truyền đang rảnh hay bận', N'C', N'TH123   ', N'3ab03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (96, N'MMTCB', N'A', N'Mạng nào không có khả năng nhận biết tình trạng đường truyền (carrier sence)', N'ALOHA', N'CSMA', N'CSMA/CD', N'Tất cả đều đúng ', N'A', N'TH123   ', N'3bb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (97, N'MMTCB', N'A', N'Mạng nào có khả năng nhận biết xung đột (collision)', N'ALOHA', N'CSMA', N'CSMA/CD', N'Tất cả đều đúng', N'D', N'TH123   ', N'3cb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (98, N'MMTCB', N'A', N'Chuẩn mạng nào có khả năng pkhát hiện xung đột (collision) trong khi truyền', N'1-persistent CSMA', N'p-persistent CSMA', N'Non-persistent CSMA', N'CSMA/CD', N'D', N'TH123   ', N'3db03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (99, N'MMTCB', N'A', N'Loại mạng cục bộ nào dùng chuẩn CSMA/CD', N'Token-ring', N'Token-bus', N'Ethernet', N'ArcNet', N'C', N'TH123   ', N'3eb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (100, N'MMTCB', N'A', N'Mạng Ethernet được IEEE đưa vào chuẩn', N'IEEE 802.2', N'IEEE 802.3', N'IEEE 802.4', N'IEEE 802.5', N'B', N'TH123   ', N'3fb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (101, N'MMTCB', N'A', N'Chuẩn nào không dùng trong mạng cục bộ (LAN )', N'IEEE 802.3', N'IEEE 802.4', N'IEEE 802.5', N'IEEE 802.6', N'D', N'TH123   ', N'40b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
GO
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (102, N'MMTCB', N'A', N'Loại mạng nào dùng 1 máy tính làm Monitor để bảo trì mạng', N'Ethernet', N'Token-ring', N'Token-bus', N'Tất cả đều sai', N'B', N'TH123   ', N'41b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (103, N'MMTCB', N'A', N'Loại mạng nào không có độ ưu tiên', N'Ethernet', N'Token-ring', N'Token-bus', N'Tất cả đều sai', N'D', N'TH123   ', N'42b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (104, N'MMTCB', N'A', N'Loại mạng nào dùng 2 loại frame khác nhau trên đường truyền', N'Token-ring', N'Token-bus', N'Ethernet', N'Tất cả đều sai', N'A', N'TH123   ', N'43b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (105, N'MMTCB', N'A', N'Vùng dữ liệu trong mạng Ethernet chứa tối đa', N'185 bytes', N'1500 bytes', N'8182 bytes', N'Không giới hạn', N'B', N'TH123   ', N'44b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (106, N'MMTCB', N'A', N'Chọn câu sai:" Cầu nối (bridge) có thể kết nối các mạng có...."', N'Chiều dài frame khác nhau', N'Cấu trúc frame khác nhau', N'Tốc độ truyền khác nhau', N'Chuẩn khác nhau', N'A', N'TH123   ', N'45b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (107, N'MMTCB', N'A', N'Mạng nào có tốc độ truyền lớn hơn 100Mbps', N'Fast Ethernet', N'Gigabit Ethernet', N'Ethernet', N'Tất cả đều đúng', N'B', N'TH123   ', N'46b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (108, N'MMTCB', N'A', N'Mạng Ethernet sử dụng được loại cáp', N'Cáp quang', N'Xoắn đôi', N'Đồng trục', N'Tất cả đều đúgn', N'D', N'TH123   ', N'47b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (109, N'MMTCB', N'A', N'Khoảng cách đường truyền tối đa mạng FDDI có thể đạt', N'1Km', N'10Km', N'100Km', N'1000Km', N'C', N'TH123   ', N'48b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (110, N'MMTCB', N'A', N'Cấp network truyền nhận theo kiểu end-to-end vì nó quản lý dữ liệu', N'Giữa 2 đầu subnet', N'Giữa 2 máy tính trong mạng', N'Giữa 2 thiết bị trên đường truyền', N'Giữa 2 đầu đường truyền', N'A', N'TH123   ', N'49b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (111, N'MMTCB', N'A', N'Kiểu mạch ảo(virtual circuit) được dùng trong loại dịch vụ mạng', N'Có kết nối', N'Không kết nối', N'Truyền 1 chiều', N'Truyền 2 chiều', N'A', N'TH123   ', N'4ab03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (112, N'MMTCB', N'A', N'Kiểu datagram trong cấp network', N'Chỉ tìm đường 1 lần khi tạo kết nối', N'Phải tìm đường riêng cho từng packet', N'THông tin có sẵn trong packet, không cần tìm đường', N'Thông tin có sẵn trong router , không cần tìm đường', N'B', N'TH123   ', N'4bb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (113, N'MMTCB', N'A', N'Kiểm soát tắc nghẽn (congestion) là nhiệm vụ của cấp', N'Physical', N'Transport', N'Data link', N'Network', N'D', N'TH123   ', N'4cb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (114, N'MMTCB', N'A', N'Nguyên nhân dẫn đến tắt nghẻn (congestion) trên mạng', N'Tốc độ xử lý của router chậm', N'Buffers trong router nhỏ', N'Router có nhiều đường vào nhưng ít đường ra', N'Tất cả đều đúng', N'D', N'TH123   ', N'4db03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (115, N'MMTCB', N'A', N'Cấp appliation trong mô hình TCP/IP tương đương với cấp nào trong mô hình OSI', N'Session', N'Application', N'Presentation', N'Tất cả đều đúng', N'D', N'TH123   ', N'4eb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (116, N'MMTCB', N'A', N'Cấp nào trong mô hình mạng OSI tương đương với cấp Internet trong mô hình TCP/IP ', N'Network', N'Transport', N'Physical', N'Data link', N'A', N'TH123   ', N'4fb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (117, N'MMTCB', N'A', N'Chất lượng dịch vụ mạng không được đánh giá trên chỉ tiêu nào?', N'Thời gian thiết lập kết nối ngắn', N'Tỉ lệ sai sót rất nhỏ', N'Tốc độ đường truyền cao', N'Khả năng phục hồi khi có sự cố', N'A', N'TH123   ', N'50b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (118, N'MMTCB', N'A', N'Kỹ thuật Multiplexing được dùng khi', N'Có nhiều kênh truyền hơn đường truyền', N'Có nhiều đường truyền hơn kênh truyền', N'Truyền dữ liệu số trên mạng điện thoại', N'Truyền dữ liệu tương tự trên mạng điện thọai', N'A', N'TH123   ', N'51b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (119, N'MMTCB', N'A', N'Dịch vụ truyền Email sử dụng protocol nào?', N'HTTP', N'NNTP', N'SMTP', N'FTP', N'C', N'TH123   ', N'52b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (120, N'MMTCB', N'A', N'Địa chỉ IP lớp B nằm trong phạm vi nào', N'192.0.0.0 - 223.0.0.0', N'127.0.0.0 - 191.0.0.0', N'128.0.0.0 - 191.0.0.0 ', N'1.0.0.0 - 126.0.0.0', N'C', N'TH123   ', N'53b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (121, N'MMTCB', N'A', N'Subnet Mask nào sau đây chỉ cho tối đa 2 địa chỉ host', N'255.255.255.252', N'255.255.255.254', N'255.255.255.248', N'255.255.255.240', N'A', N'TH123   ', N'54b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (122, N'MMTCB', N'A', N'Thành phần nào không thuộc socket', N'Port', N'Địa chỉ IP', N'Địa chỉ cấp MAC', N'Protocol cấp Transport', N'C', N'TH123   ', N'55b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (123, N'MMTCB', N'A', N'Mục đích của Subnet Mask trong địa chỉ IP là', N'Xác định host của địa chỉ IP', N'Xác định vùng network của địa chỉ IP', N'Lấy các bit trong vùng subnet làm địa chỉ host', N'Lấy các bit trong vùng địa chỉ host làm subnet', N'A', N'TH123   ', N'56b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (124, N'MMTCB', N'A', N'Bước đầu tiên cần thực hiện để truyền dữ liệu theo ALOHA là', N'Chờ 1 thời gian ngẫu nhiên', N'Gửi tín hiệu tạo kết nối', N'Kiểm tra tình trạng đường truyền', N'Lập tức truyền dữ liệu', N'D', N'TH123   ', N'57b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (125, N'MMTCB', N'A', N'Cầu nối trong suốt hoạt động trong cấp nào', N'Data link', N'Physical', N'Network', N'Transport', N'A', N'TH123   ', N'58b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (126, N'MMTCB', N'A', N'Tốc độ của đường truyền T1 là:', N'2048 Mbps', N'1544 Mbps', N'155 Mbps', N'56 Kbps', N'B', N'TH123   ', N'59b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (127, N'MMTCB', N'A', N'Khi một dịch vụ trả lời ACK cho biết dữ liệu đã nhận được, đó là', N'Dịch vụ có xác nhận', N'Dịch vụ không xác nhận', N'Dịch vụ có kết nối', N'Dịch vụ không kết nối', N'A', N'TH123   ', N'5ab03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (128, N'MMTCB', N'A', N'Loại frame nào được sử dụng trong mạng Token-ring', N'Monitor', N'Token', N'Data', N'Token và Data', N'D', N'TH123   ', N'5bb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (129, N'MMTCB', N'A', N'Thuật ngữ OSI là viết tắt bởi', N'Organization for Standard Institude', N'Organization for Standard Internet', N'Open Standard Institude', N'Open System Interconnection', N'D', N'TH123   ', N'5cb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (130, N'MMTCB', N'A', N'Trong mạng Token-ting, khi 1 máy nhận được Token', N'Nó phải truyền cho máy kế trong vòng', N'Nó được quyền truyền dữ liệu', N'Nó được quyền giữ lại Token', N'Tất cả đều sai', N'B', N'TH123   ', N'5db03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (131, N'MMTCB', N'A', N'Trong mạng cục bộ, để xác định 1 máy trong mạng ta dùng địa chỉ', N'MAC', N'Socket', N'Domain', N'Port', N'A', N'TH123   ', N'5eb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (132, N'MMTCB', N'A', N'Thứ tự các cấp trong mô hình OSI', N'Application,Session,Transport,Physical', N'Application, Transport, Network, Physical', N'Application, Presentation,Session,Network,Transport,Data link,Physical', N'Application,Presentation,Session,Transport,Network,Data link,Physical', N'D', N'TH123   ', N'5fb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (133, N'MMTCB', N'A', N'Cấp vật lý (physical) không quản lý', N'Mức điện áp', N'Địa chỉ vật lý', N'Mạch giao tiếp vật lý', N'Truyền các bit dữ liêu', N'B', N'TH123   ', N'60b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (134, N'MMTCB', N'A', N'TCP sử dụng loại dịch vụ', N'Có kết nối, độ tin cậy cao', N'Có kết nối, độ tin cậy thấp', N'Không kết nối, độ tin cậy cao', N'Không kết nối, độ tin cậy thấp', N'A', N'TH123   ', N'61b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (135, N'MMTCB', N'A', N'Địa chỉ IP bao gồm', N'Địa chỉ Network và địa chỉ host', N'Địa chỉ physical và địa chỉ logical', N'Địa chỉ cấp MAC và và địa chỉ LLC', N'Địa chỉ hardware và địa chỉ software', N'A', N'TH123   ', N'62b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (136, N'MMTCB', N'A', N'Chức năng cấp mạng (network) là', N'Mã hóa và định dạng dữ liệu', N'Tìm đường và kiểm soát tắc nghẽn', N'Truy cập môi trường mạng', N'Kiểm soát lỗi và kiểm soát lưu lượng', N'B', N'TH123   ', N'63b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (137, N'MMTCB', N'A', N'Mạng CSMA/CD làm gì', N'Truyền Token trên mạng hình sao', N'Truyền Token trên mạng dạng Bus', N'Chia packet ra thành từng frame nhỏ và truỵền đi trên mạng', N'Truy cập đường truyền và truyền lại dữ liệu nếu xảy ra đụng độ', N'D', N'TH123   ', N'64b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (138, N'MMTCB', N'A', N'Tiền thân của mạng Internet là', N'Intranet', N'Ethernet', N'Arpanet', N'Token-bus', N'C', N'TH123   ', N'65b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (139, N'MMTCB', N'A', N'Khi 1 cầu nối ( bridge) nhận được 1 framechưa biết thông tin về địa chỉ máy nhận, nó sẽ', N'Xóa bỏ frame này', N'Gửi trả lại máy gốc', N'Gửi đến mọi ngõ ra còn lại', N'Giảm thời gian sống của frame đi 1 đơn vị và gửi đến mọi ngõ ra còn lại', N'C', N'TH123   ', N'66b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (140, N'MMTCB', N'A', N'Chức năng của cấp Network là', N'Tìm đường', N'Mã hóa dữ liệu', N'Tạo địa chỉ vật lý', N'Kiểm soát lưu lượng', N'A', N'TH123   ', N'67b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (141, N'MMTCB', N'B', N'Sự khác nhau giữa địa chỉ cấp Data link và Network là', N'Địa chỉ cấp Data link có kích thước nhỏ hơn địa chỉ cấp Network', N'Địa chỉ cấp Data link là đia chỉ Physic, địa chỉ cấp Network là địa chỉ Logic', N'Địa chỉ cấp Data Link là địa chỉ Logic, địa chỉ câp Network là địa chỉ Physic', N'Địa chỉ Data link cấu hình theo mạng, địa chỉ cấp Network xác định theo IEEE', N'B', N'TH123   ', N'68b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (142, N'MMTCB', N'B', N'Kỹ thuật nào không sử dụng được trong việc kiểm soát lưu lượng(flow control)', N'Ack', N'Buffer', N'Windowing', N'Multiplexing', N'D', N'TH123   ', N'69b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (143, N'MMTCB', N'B', N'Cấp cao nhất trong mô hình mạng OSI là', N'Transport', N'Physical', N'Network', N'Application', N'D', N'TH123   ', N'6ab03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (144, N'MMTCB', N'B', N'Tại sao mạng máy tình dùng mô hình phân cấp', N'Để mọi người sử dụng cùng 1 ứng dụng mạng', N'Để phân biệt giữa chuẩn mạng và ứng dụng mạng', N'Giảm độ phức tạp trong việc thiết kế và cài đặt', N'Các cấp khác không cần sửa đổi khi thay đổi 1 cấp mạng', N'D', N'TH123   ', N'6bb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (145, N'MMTCB', N'B', N'Router làm gì để giảm tăc nghẽn (congestion)', N'Nén dữ liệu', N'Lọc bớt dữ liệu theo địa chỉ vật lý', N'Lọc bớt dữ liệu theo địa chỉ logic', N'Cấm truyền dữ liệu broadcasr', N'D', N'TH123   ', N'6cb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (146, N'MMTCB', N'B', N'Byte đầu của 1 IP có giá trị 222, địa chỉ này thuộc lớp địa chỉ nào', N'Lớp A', N'Lớp B', N'Lớp C', N'Lớp D', N'C', N'TH123   ', N'6db03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (147, N'MMTCB', N'B', N'Chọn câu đúng đối với switch của mạng LAN', N'Là 1 cầu nối tốc độ cao', N'Nhận data từ 1 cổng và xuất ra mọi cổng còn lại', N'Nhận data từ 1 cổng và xuất ra  cổng đích tùy theo địa chỉ cấp IP', N'Nhận data từ 1 cổng và xuất ra 1 cổng đích tùy theo địa chỉ cấp MAC', N'D', N'TH123   ', N'6eb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (148, N'MMTCB', N'B', N'Thuật ngữ nào cho biết loại mạng chỉ truyền được  chiều tại 1 thời điểm', N'Half duplex', N'Full duplex', N'Simplex', N'Monoplex', N'A', N'TH123   ', N'6fb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (149, N'MMTCB', N'B', N'Protocol nghĩa là', N'Tập các chuẩn truyền dữ liệu', N'Tập các cấp mạng trong mô hình OSI', N'Tập các chức năng của từng cấp trong mạng', N'Tập các qui tắc và cấu trúc dữ liệu để truyền thông giữa các cấp mạng', N'D', N'TH123   ', N'70b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (150, N'MMTCB', N'B', N'Truyền dữ liệu theo kiểu có kết nối không cần thực hiện việc', N'Hủy kết nối', N'Tạo kết nối', N'Truyền dữ liệu', N'Tìm đường cho từng gói tin', N'D', N'TH123   ', N'71b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (151, N'MMTCB', N'B', N'Byte đầu của địa chỉ IP lớp E nằm trong phạm vi', N'128 - 191', N'192 - 232 ', N'224 - 239 ', N'240 - 247', N'D', N'TH123   ', N'72b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (152, N'MMTCB', N'B', N'Khi truyền đi chuỗi "VIET NAM" nhưng nhận được chuỗi"MAN TEIV ". Cần phải hiệu chỉnh các protocol trong cấp nào để truyền chính xác', N'Session', N'Transport', N'Application', N'Presentation', N'B', N'TH123   ', N'73b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (153, N'MMTCB', N'B', N'Tên cáp UTP dùng torng mạng Fast Ethernet là', N'100BaseF', N'100Base2', N'100BaseT', N'100Base5', N'C', N'TH123   ', N'74b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (154, N'MMTCB', N'B', N'Tốc độ truyền của mạng Ethernet là', N'1 Mbps', N'10 Mbps', N'100 Mbps', N'1000 Mbps', N'B', N'TH123   ', N'75b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (155, N'MMTCB', N'B', N'Dịch vụ mạng thường được phân chia thành', N'Dịch vụ không kết nối và có kết nối', N'Dich vụ có xác nhận và không xác nhận', N'Dịch vụ có độ tin cậy cao và có độ tin cậy thấp', N'Tất cả đều đúng', N'D', N'TH123   ', N'76b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (156, N'MMTCB', N'B', N'Đơn vị truyền dữ liệu trong cấp Network gọi là', N'Bit', N'Frame', N'Packet', N'Segment', N'C', N'TH123   ', N'77b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (157, N'MMTCB', N'B', N'Protocol nào trong mạng TCP/IP chuyển đổi địa chỉ vật lý thành địa chỉ IP', N'IP', N'ARP', N'ICMP', N'RARP', N'D', N'TH123   ', N'78b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (158, N'MMTCB', N'B', N'Đầu nới AUI dùng cho loại cáp nào?', N'Đồng trục', N'Xoắn đôi', N'Cáp quang', N'Tất cả đều đúng', N'A', N'TH123   ', N'79b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (159, N'MMTCB', N'B', N'Subnet mask chuẩn của địa chỉ IP lớp B là', N'255.0.0.0', N'255.255.0.0', N'255.255.255.0', N'255.255.255.255', N'B', N'TH123   ', N'7ab03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (160, N'MMTCB', N'B', N'Lý do nào khiến người ta chọn protocol TCP hơn là UDP', N'Không ACK', N'Dễ sử dụng', N'Độ tin cậy', N'Không kết nối', N'C', N'TH123   ', N'7bb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (161, N'MMTCB', N'B', N'Nhược điểm của dịch vụ có kết nối so với không kết nối', N'Độ tin cậy', N'Thứ tự nhận dữ liệu không đúng', N'Đường truyền không thay đổi', N'Đường truyền thay đổi liên tục', N'C', N'TH123   ', N'7cb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (162, N'MMTCB', N'B', N'Cấp Data link không thực hiện chức năng nào?', N'Kiểm soát lỗi', N'Địa chỉ vật lý', N'Kiểm soát lưu lượng', N'Thiết lập kết nối', N'D', N'TH123   ', N'7db03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (163, N'MMTCB', N'B', N'Cầu nối (bridge)dựa vào thông tin nào để truyền tiếp hoặc hủy bỏ 1 frame', N'Điạ chỉ nguồn', N'Địa chỉ đích', N'Địa chỉ mạng', N'Tất cả đều đúng', N'C', N'TH123   ', N'7eb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (164, N'MMTCB', N'B', N'Chuẩn nào sử dụng trong cấp presentation?', N'UTP và STP', N'SMTP và HTTP', N'ASCII và EBCDIC', N'TCP và UDP', N'C', N'TH123   ', N'7fb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (165, N'MMTCB', N'B', N'Đơn vị truyền dữ liệu giữa các cấp trong mạng theo thứ tự', N'bit,frame,packet,data', N'bit,packet,frame,data', N'data,frame,packet,bit', N'data,bit,packet,frame', N'A', N'TH123   ', N'80b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (166, N'MMTCB', N'B', N'Mạng Ethernet do cơ quan nào phát minh', N'ANSI', N'ISO', N'IEEE', N'XEROX', N'D', N'TH123   ', N'81b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (167, N'MMTCB', N'B', N'Chiều dài loại cáp nào tối đa 100 m? ', N'10Base2', N'10Base5', N'10BaseT', N'10BaseF', N'C', N'TH123   ', N'82b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (168, N'MMTCB', N'B', N'Địa chỉ IP 100.150.200.250 có nghĩa là', N'Địa chỉ network 100, địa chỉ host 150.200.250', N'Địa chỉ network 100.150, địa chỉ host 200.250', N'Địa chỉ network 100.150.200, địa chỉ host 250', N'Tất cả đều sai', N'D', N'TH123   ', N'83b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (169, N'MMTCB', N'B', N'Switching hun khác hub thông thường ở chỗ nó làm', N'Giảm collision trên mạng', N'Tăng collision trên mạng', N'Giảm congestion trên mạng', N'Tăng congestion trên mạng', N'A', N'TH123   ', N'84b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (170, N'MMTCB', N'B', N'Loại cáp nào chỉ truyền dữ liệu 1 chiều', N'Cáp quang', N'Xoắn đôi', N'Đồng trục', N'Tất cả đều đúng', N'A', N'TH123   ', N'85b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (171, N'MMTCB', N'B', N'Thiết bị Modem dùng để', N'Tách và ghép tín hiệu', N'Nén và gải nén tín hiệu', N'Mã hóa và giải mã tín hiệu', N'Điều chế và giải điều chế tín hiệu', N'D', N'TH123   ', N'86b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (172, N'MMTCB', N'B', N'Việc cấp phát kênh truyền áp dụng cho loại mạng', N'Peer to peer', N'Point to point', N'Broadcast', N'Multiple Access', N'C', N'TH123   ', N'87b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (173, N'MMTCB', N'B', N'Mạng nào dùng phương pháp mã hóa Manchester Encoding', N'Ethernet', N'Token-ring', N'Token-bus', N'Tất cả đều đúng ', N'D', N'TH123   ', N'88b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (174, N'MMTCB', N'B', N'Phương pháp tìm đường có tính đến thời gian trễ', N'Tìm đường theo chiều sâu', N'Tìm đường theo chiều rộng', N'Tìm đường theo vector khoảng cách', N'Tìm đường theo trạng thái đường truyền', N'D', N'TH123   ', N'89b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (175, N'MMTCB', N'B', N'Chuẩn mạng nào khi có dữ liệu không truyền ngay mà chờ 1 thời gian ngẫu nhiên?', N'1-presistent CSMA', N'p-presistent CSMA', N'Non-presistent CSMA', N'CSMA/CD', N'C', N'TH123   ', N'8ab03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (176, N'MMTCB', N'B', N'Phương pháp chèn bit (bit stuffing) được dùng để', N'Phân biệt đầu và cuối frame', N'Bổ sung cho đủ kích thước frame tối thiểu', N'Phân cách nhiều bit 0 bằng bit 1', N'Biến đổi dạng dữ liệu 8 bit ra 16 bit', N'A', N'TH123   ', N'8bb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (177, N'MMTCB', N'B', N'Để chống nhiễu trên đường truyền tốt nhất, nên dùng loại cáp:', N'Xoắn đôi', N'Đồng trục', N'Cáp quang', N'Mạng không dây', N'C', N'TH123   ', N'8cb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (178, N'MMTCB', N'B', N'Phần mềm gửi/nhận thư điện tử thuộc cấp nào trong mô hình OSI', N'Data link', N'Network', N'Application', N'Presentation', N'C', N'TH123   ', N'8db03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (179, N'MMTCB', N'B', N'Chức năng của thiết bị Hub trong mạng LAN', N'Mã hóa tín hiệu', N'Triệt tiêu tín hiệu', N'Phân chia tín hiệu', N'Điều chế tín hiếu', N'C', N'TH123   ', N'8eb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (180, N'MMTCB', N'B', N'Switch là thiết bị mạng làm việc tương tự như', N'Hub', N'Repeater', N'Router', N'Bridge', N'D', N'TH123   ', N'8fb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (181, N'MMTCB', N'C', N'Thiết bị nào làm việc trong cấp Network', N'Bridge', N'Repeater', N'Router', N'Gateway', N'C', N'TH123   ', N'90b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (182, N'MMTCB', N'C', N'Thiết bị nào cần có bộ nhớ làm buffer', N'Hub', N'Switch', N'Repeater', N'Router', N'D', N'TH123   ', N'91b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (183, N'MMTCB', N'C', N'Luật 5-4-3 cho phép tối đa', N'5 segment trong 1 mạng', N'5 repeater trong 1 mạng', N'5 máy tính trong 1 mạng', N'5 máy tính trong 1 segment', N'A', N'TH123   ', N'92b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (184, N'MMTCB', N'C', N'Thiết bị nào có thể thêm vào mạng LAN mà không sợ vi phạm luật 5-4-3', N'Router', N'Repeater', N'Máy tính', N'Tất cả đều đúng', N'A', N'TH123   ', N'93b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (185, N'MMTCB', N'C', N'Thêm thiết bị nào vào mạng có thể qui phạm luật 5-4-3', N'Router', N'Repeater', N'Bridge', N'Tất cả đều đúng', N'B', N'TH123   ', N'94b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (186, N'MMTCB', N'C', N'Mạng nào cóxảy ra xung đột (collision) trên đường truyền', N'Ethernet', N'Token-ring', N'Token-bus', N'Tất cả đều sai', N'A', N'TH123   ', N'95b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (187, N'MMTCB', N'C', N'Từ "Broad" trong tên cáp 10Broad36 viết tắt bởi', N'Broadcast', N'Broadbase', N'Broadband', N'Broadway', N'C', N'TH123   ', N'96b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (188, N'MMTCB', N'C', N'Protocol nào sử dụng trong cấp Network', N'IP', N'TCP', N'UDP', N'FTP', N'A', N'TH123   ', N'97b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (189, N'MMTCB', N'C', N'Protocol nào torng cấp Transport cung cấp dịch vụ không kết nối', N'IP', N'TCP', N'UDP', N'FTP', N'C', N'TH123   ', N'98b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (190, N'MMTCB', N'C', N'Protocol nào trong cấp Transport dùng kiểu dịch vụ có kết nối?', N'IP', N'TCP', N'UDP', N'FTP', N'B', N'TH123   ', N'99b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (191, N'MMTCB', N'C', N'Địa chỉ IP được chia làm mấy lớp', N'2', N'3', N'4', N'5', N'D', N'TH123   ', N'9ab03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (192, N'MMTCB', N'C', N'Chức năng nào không phải của cấp Network', N'Tìm đường', N'Địa chỉ logic', N'Kiểm soát tắc nghẽn', N'Chất lượng dịch vụ', N'B', N'TH123   ', N'9bb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (193, N'MMTCB', N'C', N'Phương pháp chèn kí tự dùng để', N'Phân cách các frame', N'Phân biệt dữ liệu và ký tự điều khiển', N'Nhận diện đầu cuối frame', N'Bổ sung cho đủ kich thước frame tối thiểu', N'B', N'TH123   ', N'9cb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (194, N'MMTCB', N'C', N'Kỹ thuật truyền nào mã hóa trực tiếp dữ liệu ra đường truyền không cần sóng mang', N'Broadcast', N'Digital', N'Baseband', N'Broadband', N'C', N'TH123   ', N'9db03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (195, N'MMTCB', N'C', N'Sóng viba sử dụng băng tần', N'SHF', N'LF và MF', N'UHF và VHF', N'Tất cả đều đúng', N'D', N'TH123   ', N'9eb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (196, N'MMTCB', N'C', N'Sóng viba bị ảnh hưởng bời', N'Trời mưa', N'Sấm chớp', N'Giông bão', N'Ánh sáng mặt trời', N'A', N'TH123   ', N'9fb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (197, N'MMTCB', N'C', N'Đường dây trung kế trong mạng điện thoại sử dụng', N'Tín hiệu số', N'Kỹ thuật dồn kênh', N'Cáp quang, cáp đồng và viba', N'Tất cả đêu đúng', N'D', N'TH123   ', N'a0b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (198, N'MMTCB', N'C', N'Cáp quang dùng công nghệ dồn kênh nào', N'TDM', N'FDM', N'WDM', N'CDMA', N'C', N'TH123   ', N'a1b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (199, N'MMTCB', N'C', N'Nhược điểm của phương pháp chèn ký tự', N'Giảm tốc độ đường truyền', N'Tăng phí tổn đường truyền', N'Mất đồng bộ frame', N'Không nhận diện được frame', N'B', N'TH123   ', N'a2b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (200, N'MMTCB', N'C', N'Mất đồng bộ frame xảy ra đối với phương pháp', N'Chèn bit', N'Đếm ký tự', N'Chèn ký tự', N'Tất cả đều đúng', N'B', N'TH123   ', N'a3b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (201, N'MMTCB', N'C', N'Mạng nào dùng công nghệ Token-bus', N'FDDI', N'CDDI', N'Fast Ethernet', N'100VG-AnyLAN', N'D', N'TH123   ', N'a4b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
GO
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (202, N'MMTCB', N'C', N'Thiết bị nào tự trao đổi thông tin lẫn nhau để quản lý mạng', N'Hub', N'Bridge', N'Router', N'Repeater', N'C', N'TH123   ', N'a5b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (203, N'MMTCB', N'C', N'Tần số sóng điện từ dùng trong mạng vô tuyến sắp theo thứ tự tăng dần', N'Radio,viba,hồng ngoại', N'Radio,hồng ngoại,viba', N'Hồng ngoại,viba,radio', N'Viba,radio,hồng ngoại', N'A', N'TH123   ', N'a6b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (204, N'MMTCB', N'C', N'Đường dây hạ kế (local loop) trong mạch điện thoại dùng tín hiệu', N'Digital', N'Analog', N'Manchester', N'T1 hoặc E1', N'B', N'TH123   ', N'a7b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (205, N'MMTCB', N'C', N'Để tránh nhận trùng dữ liệu người ta dùng phương pháp', N'Đánh số thứ tự các frame', N'Quy định kích thước frame cố định', N'Chờ nhận ACK mới gửi frame kế tiếp', N'So sánh và loại bỏ các frame giống nhau', N'A', N'TH123   ', N'a8b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (206, N'MMTCB', N'C', N'Cơ chế Timer dùng để', N'Đo thời gian chơ frame', N'Tránh tình trạng mất frame', N'Chọn thời điểm truyền frame', N'Kiểm soát thòi gian truyền frame', N'A', N'TH123   ', N'a9b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (207, N'MMTCB', N'C', N'Cấp nào trong mô hình OSI quan tâm tới topology mạng', N'Transport', N'Network', N'Data link', N'Physical', N'B', N'TH123   ', N'aab03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (208, N'MMTCB', N'C', N'Loại mạng nào sử dụng trên WAN', N'Ethernet và Token-bus', N'ISDN và Frame relay', N'Token-ring và FDDI', N'SDLC và HDLC', N'A', N'TH123   ', N'abb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (209, N'MMTCB', N'C', N'Repeater nhiều port là tên gọi của', N'Hub', N'Host', N'Bridge', N'Router', N'A', N'TH123   ', N'acb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (210, N'MMTCB', N'C', N'Đơn vị đo tốc độ đường truyền', N'bps(bit per second)', N'Bps(Byte per second)', N'mps(meter per second)', N'hertz (ccle per second)', N'A', N'TH123   ', N'adb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (211, N'MMTCB', N'C', N'Repeater dùng để', N'Lọc bớt dữ liệu trên mạng', N'Tăng tốc độ lưu thông trên mạng', N'Tăng thời gian trễ trên mạng', N'Mở rộng chiều dài đường truyền', N'D', N'TH123   ', N'aeb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (212, N'MMTCB', N'C', N'Cáp đồng trục (coaxial)', N'Có 4 đôi dây', N'Không cần repeater', N'Truyền tín hiệu ánh sáng', N'Chống nhiễu tốt hơn UTP', N'D', N'TH123   ', N'afb03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (213, N'MMTCB', N'C', N'Câp Data link ', N'Truyền dữ liệu cho các cấp khác trong mạng', N'Cung cấp dịch vụ cho chương trình ứng dụng', N'Nhận tín hiệu yếu,lọc,khuếch đại và phát lại trên mạng', N'Bảo đảm đường truyền dữ liệu tin cậy giữa 2 đầu đường truyền', N'D', N'TH123   ', N'b0b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (214, N'MMTCB', N'C', N'Địa chỉ IP còn gọi là', N'Địa chĩ vật lý', N'Địa chỉ luận lý', N'Địa chỉ thập phân', N'Địa chỉ thập lục phân', N'B', N'TH123   ', N'b1b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (215, N'MMTCB', N'C', N'Cấp Presentation', N'Thiết lập, quản lý và kết thúc các ứng dụng', N'Hướng dẫn cách mô tả hình ảnh, âm thanh, tiếng nói', N'Cung cấp dịch vụ truyền dữ liệu từ nguồn đến đích', N'Hỗ trợ việc truyền thông trong các ứng dụng như web, mail...', N'C', N'TH123   ', N'b2b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (216, N'MMTCB', N'C', N'Tập các luật để định dạng và truyền dữ liệu gọi là', N'Qui luật (rule)', N'Nghi thức (protocol)', N'Tiêu chuẩn (standard)', N'Mô hình (model)', N'B', N'TH123   ', N'b3b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (217, N'MMTCB', N'C', N'Tại sao cần có tiêu chuẩn về mang', N'Định hướng phát triển phần cứng và phần mềm mới', N'LAN,MAN và WAN sử dụng các thiết bị khác nhau', N'Kết nối mạng giữa các quôc gia khác nhau', N'Tương thích về công nghệ để truyền thông được lẫn nhau', N'D', N'TH123   ', N'b4b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (218, N'MMTCB', N'C', N'Dữ liệu truyền trên mạng bằng', N'Mã ASCII', N'Số nhị phân', N'Không và một', N'Xung điện áp', N'D', N'TH123   ', N'b5b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (219, N'MMTCB', N'C', N'Mạng CSMA/CD', N'Kiểm tra để bảo đảm dữ liệu truyền đến đích', N'Kiểm tra đường truyền nếu rảnh mới truyền dữ liệu', N'Chờ 1 thời gian ngẫu nhiên rồi truyền  dữ liệu kế tiếp', N'Tất cả đều đúng', N'B', N'TH123   ', N'b6b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (220, N'MMTCB', N'C', N'Địa chỉ MAC ', N'Gồm có 32 bit', N'Còn gọi là địa chỉ logic', N'Nằm trong cấp Network', N'Dùng để phân biệt các máy trong mạng', N'D', N'TH123   ', N'b7b03fe0-49cc-ed11-8b3d-0245e2a83ad1')
GO
INSERT [dbo].[COSO] ([MACS], [TENCS], [DIACHI], [rowguid]) VALUES (N'CS1', N'Cơ sở 1 ', N'11 Nguyễn Đình Chiểu, Phường Đakao, Quận 1, TP. HCM', N'c9af3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[COSO] ([MACS], [TENCS], [DIACHI], [rowguid]) VALUES (N'CS2', N'Cơ sở 2', N'Số 9 Man Thiện , quận 9, TP. HCM', N'caaf3fe0-49cc-ed11-8b3d-0245e2a83ad1')
GO
INSERT [dbo].[GIAOVIEN] ([MAGV], [HO], [TEN], [DIACHI], [MAKH], [rowguid]) VALUES (N'TH000   ', N'MY NGUYEN', N'HUYNH', NULL, N'CNTT    ', N'f14bf277-b7f0-ed11-8b4f-0245e2a83ad1')
INSERT [dbo].[GIAOVIEN] ([MAGV], [HO], [TEN], [DIACHI], [MAKH], [rowguid]) VALUES (N'TH101   ', N'KIEU DAC', N'THIEN', N'9,3A, Q.BINH TAN', N'CNTT    ', N'ceaf3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[GIAOVIEN] ([MAGV], [HO], [TEN], [DIACHI], [MAKH], [rowguid]) VALUES (N'TH123   ', N'PHAN VAN ', N'HAI', N'15/72 LE VAN THO F8 GO VAP', N'CNTT    ', N'cfaf3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[GIAOVIEN] ([MAGV], [HO], [TEN], [DIACHI], [MAKH], [rowguid]) VALUES (N'TH234   ', N'DAO VAN ', N'TUYET', N'14/7 BUI DINH TUY TAN BINH', N'CNTT    ', N'd0af3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[GIAOVIEN] ([MAGV], [HO], [TEN], [DIACHI], [MAKH], [rowguid]) VALUES (N'TH657   ', N'PHAN HONG', N'NGOC', N'', N'VTUpdate', N'd1af3fe0-49cc-ed11-8b3d-0245e2a83ad1')
GO
INSERT [dbo].[GIAOVIEN_DANGKY] ([MAGV], [MAMH], [MALOP], [TRINHDO], [NGAYTHI], [LAN], [SOCAUTHI], [THOIGIAN], [rowguid]) VALUES (N'TH101   ', N'MMTCB', N'TH04           ', N'B', CAST(N'2023-05-23T00:00:00.000' AS DateTime), 1, 10, 30, N'45734acf-fbdf-ed11-8b47-0245e2a83ad1')
INSERT [dbo].[GIAOVIEN_DANGKY] ([MAGV], [MAMH], [MALOP], [TRINHDO], [NGAYTHI], [LAN], [SOCAUTHI], [THOIGIAN], [rowguid]) VALUES (N'TH101   ', N'MMTCB', N'TH04           ', N'A', CAST(N'2023-05-23T00:00:00.000' AS DateTime), 2, 10, 30, N'8f5c6c23-2fe0-ed11-8b47-0245e2a83ad1')
GO
INSERT [dbo].[KHOA] ([MAKH], [TENKH], [MACS], [rowguid]) VALUES (N'CNTT    ', N'Công nghệ thông tin', N'CS1', N'cbaf3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[KHOA] ([MAKH], [TENKH], [MACS], [rowguid]) VALUES (N'CNTT1   ', N'Điện tử', N'CS2', N'ccaf3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[KHOA] ([MAKH], [TENKH], [MACS], [rowguid]) VALUES (N'KKT     ', N'khoa kinh tế', N'CS1', N'b40ee0b7-c5de-ed11-8b47-0245e2a83ad1')
INSERT [dbo].[KHOA] ([MAKH], [TENKH], [MACS], [rowguid]) VALUES (N'VTUpdate', N'Viễn thông', N'CS2', N'cdaf3fe0-49cc-ed11-8b3d-0245e2a83ad1')
GO
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKH], [rowguid]) VALUES (N'D18CQCN01      ', N'Ngành CNTT Khóa 2018 -1', N'CNTT    ', N'd2af3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKH], [rowguid]) VALUES (N'LKM            ', N'lop khoa mua 1', N'CNTT    ', N'9f795dad-bbde-ed11-8b47-0245e2a83ad1')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKH], [rowguid]) VALUES (N'LKT1           ', N'lớp kinh tế', N'KKT     ', N'896a265a-cdef-ed11-8b4f-0245e2a83ad1')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKH], [rowguid]) VALUES (N'TH04           ', N'TIN HOC 2004', N'CNTT    ', N'd3af3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKH], [rowguid]) VALUES (N'TH05           ', N'TIN HOC 2005', N'CNTT    ', N'd4af3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKH], [rowguid]) VALUES (N'TH06           ', N'TIN HOC 2006', N'CNTT    ', N'd5af3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKH], [rowguid]) VALUES (N'TH07           ', N'TIN HOC 2007', N'CNTT    ', N'd6af3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKH], [rowguid]) VALUES (N'TH08           ', N'TIN HOC 2008', N'CNTT    ', N'd7af3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKH], [rowguid]) VALUES (N'THCS           ', N'tin hoc co so 1', N'CNTT    ', N'8096c60a-c5de-ed11-8b47-0245e2a83ad1')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKH], [rowguid]) VALUES (N'VT04           ', N'VIỄN THÔNG 2004', N'VTUpdate', N'd8af3fe0-49cc-ed11-8b3d-0245e2a83ad1')
GO
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [rowguid]) VALUES (N'AVCB ', N'ANH VĂN CĂN BẢN', N'd9af3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [rowguid]) VALUES (N'CSDL ', N'CƠ SỞ DỮ LIỆU', N'daaf3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [rowguid]) VALUES (N'CTDL ', N'CẤU TRÚC DỮ LIỆU', N'dbaf3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [rowguid]) VALUES (N'MHM  ', N'môn học mới', N'93f53811-26e0-ed11-8b47-0245e2a83ad1')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [rowguid]) VALUES (N'MMM  ', N'môn mọc mới', N'f07a41ac-b6d9-ed11-8b45-0245e2a83ad1')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [rowguid]) VALUES (N'MMTCB', N'MẠNG MÁY TÍNH CĂN BẢN', N'dcaf3fe0-49cc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [rowguid]) VALUES (N'mt   ', N'môn test', N'7d13d6c0-61f5-ed11-8b51-0245e2a83ad1')
GO
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [NGAYSINH], [DIACHI], [MATKHAU], [MALOP], [rowguid]) VALUES (N'001     ', N'LÊ VĂN ', N'MY', CAST(N'1985-03-06' AS Date), N'23/5 PHUNG KHAC KHOAN F3 Q3', N'001                                               ', N'TH04           ', N'1f0dee17-4acc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [NGAYSINH], [DIACHI], [MATKHAU], [MALOP], [rowguid]) VALUES (N'002     ', N'DAO TRONG', N'KHAI', CAST(N'1979-08-19' AS Date), N'15/72 LE VAN THO F8 GOVAP', N'002                                               ', N'TH04           ', N'200dee17-4acc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [NGAYSINH], [DIACHI], [MATKHAU], [MALOP], [rowguid]) VALUES (N'003     ', N'CAO TUAN', N'KHA', CAST(N'1985-12-06' AS Date), N'12/5 LE QUANG DINH F5 GO VAP', N'003                                               ', N'TH04           ', N'210dee17-4acc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [NGAYSINH], [DIACHI], [MATKHAU], [MALOP], [rowguid]) VALUES (N'004     ', N'HA THANH ', N'BINH', CAST(N'1984-03-24' AS Date), N'23/4 HOANG HOA THAM', N'004                                               ', N'TH04           ', N'220dee17-4acc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [NGAYSINH], [DIACHI], [MATKHAU], [MALOP], [rowguid]) VALUES (N'005     ', N'NGUYEN THÚY ', N'VÂN', CAST(N'1987-11-06' AS Date), N'7 HUYNH THUC KHANG', N'005                                               ', N'TH05           ', N'230dee17-4acc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [NGAYSINH], [DIACHI], [MATKHAU], [MALOP], [rowguid]) VALUES (N'006     ', N'NGUYEN NGOC ', N'YEN', CAST(N'1980-11-23' AS Date), N'3/5 AN DUONG VUONG', N'006                                               ', N'TH05           ', N'240dee17-4acc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [NGAYSINH], [DIACHI], [MATKHAU], [MALOP], [rowguid]) VALUES (N'007     ', N'NGUYEN THUY ', N'DUNG', CAST(N'1988-05-23' AS Date), N'8 HUYNH VAN BANH f1 q binh thanh', N'007                                               ', N'TH05           ', N'250dee17-4acc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [NGAYSINH], [DIACHI], [MATKHAU], [MALOP], [rowguid]) VALUES (N'008     ', N'TRINH', N'PHONG', CAST(N'1985-12-10' AS Date), N'sss', N'008                                               ', N'TH06           ', N'260dee17-4acc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [NGAYSINH], [DIACHI], [MATKHAU], [MALOP], [rowguid]) VALUES (N'009     ', N'TRAN THANH', N'HUNG', CAST(N'1985-03-28' AS Date), N'', N'009                                               ', N'TH05           ', N'270dee17-4acc-ed11-8b3d-0245e2a83ad1')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [NGAYSINH], [DIACHI], [MATKHAU], [MALOP], [rowguid]) VALUES (N'011     ', N'PHAN HONG', N'NGOC', CAST(N'1986-01-17' AS Date), N'PHAN VAN HAN BINH THANH', N'011                                               ', N'TH05           ', N'280dee17-4acc-ed11-8b3d-0245e2a83ad1')
GO
INSERT [dbo].[TEMP10] ([CAUHOI], [MAMH], [MASV], [LAN], [THUTU], [ARANDOM], [BRANDOM], [CRANDOM], [DRANDOM], [DACHON], [THOIGIAN], [rowguid]) VALUES (1, N'a    ', N's         ', 2, 1, 1, 2, 3, 4, N'a', 3.9, N'eb690ad6-0e0c-ee11-8b5e-0045e2a83ad2')
GO
/****** Object:  Index [MSmerge_index_264388011]    Script Date: 6/17/2023 7:50:53 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_264388011] ON [dbo].[BAITHI]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_1463064348]    Script Date: 6/17/2023 7:50:53 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_1463064348] ON [dbo].[BANGDIEM]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_2088394509]    Script Date: 6/17/2023 7:50:53 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_2088394509] ON [dbo].[BANGDIEM]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_597577167]    Script Date: 6/17/2023 7:50:53 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_597577167] ON [dbo].[BODE]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_629577281]    Script Date: 6/17/2023 7:50:53 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_629577281] ON [dbo].[COSO]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_661577395]    Script Date: 6/17/2023 7:50:53 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_661577395] ON [dbo].[GIAOVIEN]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_693577509]    Script Date: 6/17/2023 7:50:53 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_693577509] ON [dbo].[GIAOVIEN_DANGKY]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_725577623]    Script Date: 6/17/2023 7:50:53 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_725577623] ON [dbo].[KHOA]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UN_TENLOP]    Script Date: 6/17/2023 7:50:53 AM ******/
ALTER TABLE [dbo].[LOP] ADD  CONSTRAINT [UN_TENLOP] UNIQUE NONCLUSTERED 
(
	[TENLOP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_757577737]    Script Date: 6/17/2023 7:50:53 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_757577737] ON [dbo].[LOP]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UN_TENMH]    Script Date: 6/17/2023 7:50:53 AM ******/
ALTER TABLE [dbo].[MONHOC] ADD  CONSTRAINT [UN_TENMH] UNIQUE NONCLUSTERED 
(
	[TENMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_MONHOC]    Script Date: 6/17/2023 7:50:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_MONHOC] ON [dbo].[MONHOC]
(
	[MAMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_789577851]    Script Date: 6/17/2023 7:50:53 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_789577851] ON [dbo].[MONHOC]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_821577965]    Script Date: 6/17/2023 7:50:53 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_821577965] ON [dbo].[SINHVIEN]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_1661925688]    Script Date: 6/17/2023 7:50:53 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_1661925688] ON [dbo].[TEMP10]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BAITHI] ADD  CONSTRAINT [MSmerge_df_rowguid_95472D9597664A4EB8AF253FFB585E23]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[BANGDIEM] ADD  CONSTRAINT [MSmerge_df_rowguid_6E2E4FDD185B4AE08C6983D8D6A2C1E5]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[BODE] ADD  CONSTRAINT [MSmerge_df_rowguid_05C203F9550C42D5BC99F963C0F1BA77]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[COSO] ADD  CONSTRAINT [MSmerge_df_rowguid_D8259E179C5145E08EDFE85E60DF5CA1]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[GIAOVIEN] ADD  CONSTRAINT [MSmerge_df_rowguid_28C0273BA256455A908595B13252A45B]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY] ADD  CONSTRAINT [MSmerge_df_rowguid_C50FE327D8CC402CA2BF18E27F2BD53A]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[KHOA] ADD  CONSTRAINT [MSmerge_df_rowguid_C5361F97BF124B54888C999931E326DA]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[LOP] ADD  CONSTRAINT [MSmerge_df_rowguid_F36EF343275245619406448F510A1C1C]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[MONHOC] ADD  CONSTRAINT [MSmerge_df_rowguid_669959C2DFA24406B905CBAF41DB37F5]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[SINHVIEN] ADD  CONSTRAINT [MSmerge_df_rowguid_D4AF0CAD11824566A8A5C46ACB5AA10D]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[TEMP10] ADD  CONSTRAINT [MSmerge_df_rowguid_5F21B133ED494AE5A823FA33E048DBC4]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[BAITHI]  WITH CHECK ADD  CONSTRAINT [FK_BAITHI_BANGDIEM] FOREIGN KEY([ID_BANGDIEM])
REFERENCES [dbo].[BANGDIEM] ([ID])
GO
ALTER TABLE [dbo].[BAITHI] CHECK CONSTRAINT [FK_BAITHI_BANGDIEM]
GO
ALTER TABLE [dbo].[BAITHI]  WITH CHECK ADD  CONSTRAINT [FK_BAITHI_BODE1] FOREIGN KEY([CAUHOI])
REFERENCES [dbo].[BODE] ([CAUHOI])
GO
ALTER TABLE [dbo].[BAITHI] CHECK CONSTRAINT [FK_BAITHI_BODE1]
GO
ALTER TABLE [dbo].[BANGDIEM]  WITH NOCHECK ADD  CONSTRAINT [FK_BANGDIEM_MONHOC] FOREIGN KEY([MAMH])
REFERENCES [dbo].[MONHOC] ([MAMH])
GO
ALTER TABLE [dbo].[BANGDIEM] CHECK CONSTRAINT [FK_BANGDIEM_MONHOC]
GO
ALTER TABLE [dbo].[BANGDIEM]  WITH NOCHECK ADD  CONSTRAINT [FK_BANGDIEM_SINHVIEN1] FOREIGN KEY([MASV])
REFERENCES [dbo].[SINHVIEN] ([MASV])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[BANGDIEM] CHECK CONSTRAINT [FK_BANGDIEM_SINHVIEN1]
GO
ALTER TABLE [dbo].[BODE]  WITH NOCHECK ADD  CONSTRAINT [FK_BODE_GIAOVIEN] FOREIGN KEY([MAGV])
REFERENCES [dbo].[GIAOVIEN] ([MAGV])
GO
ALTER TABLE [dbo].[BODE] CHECK CONSTRAINT [FK_BODE_GIAOVIEN]
GO
ALTER TABLE [dbo].[BODE]  WITH NOCHECK ADD  CONSTRAINT [FK_BODE_MONHOC] FOREIGN KEY([MAMH])
REFERENCES [dbo].[MONHOC] ([MAMH])
GO
ALTER TABLE [dbo].[BODE] CHECK CONSTRAINT [FK_BODE_MONHOC]
GO
ALTER TABLE [dbo].[GIAOVIEN]  WITH CHECK ADD  CONSTRAINT [FK_GIAOVIEN_KHOA] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHOA] ([MAKH])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[GIAOVIEN] CHECK CONSTRAINT [FK_GIAOVIEN_KHOA]
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY]  WITH CHECK ADD  CONSTRAINT [FK_GIAOVIEN_DANGKY_GIAOVIEN] FOREIGN KEY([MAGV])
REFERENCES [dbo].[GIAOVIEN] ([MAGV])
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY] CHECK CONSTRAINT [FK_GIAOVIEN_DANGKY_GIAOVIEN]
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY]  WITH CHECK ADD  CONSTRAINT [FK_GIAOVIEN_DANGKY_LOP] FOREIGN KEY([MALOP])
REFERENCES [dbo].[LOP] ([MALOP])
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY] CHECK CONSTRAINT [FK_GIAOVIEN_DANGKY_LOP]
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY]  WITH CHECK ADD  CONSTRAINT [FK_GIAOVIEN_DANGKY_MONHOC] FOREIGN KEY([MAMH])
REFERENCES [dbo].[MONHOC] ([MAMH])
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY] CHECK CONSTRAINT [FK_GIAOVIEN_DANGKY_MONHOC]
GO
ALTER TABLE [dbo].[KHOA]  WITH CHECK ADD  CONSTRAINT [FK_KHOA_COSO] FOREIGN KEY([MACS])
REFERENCES [dbo].[COSO] ([MACS])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[KHOA] CHECK CONSTRAINT [FK_KHOA_COSO]
GO
ALTER TABLE [dbo].[LOP]  WITH CHECK ADD  CONSTRAINT [FK_LOP_KHOA] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHOA] ([MAKH])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[LOP] CHECK CONSTRAINT [FK_LOP_KHOA]
GO
ALTER TABLE [dbo].[SINHVIEN]  WITH CHECK ADD  CONSTRAINT [FK_SINHVIEN_LOP] FOREIGN KEY([MALOP])
REFERENCES [dbo].[LOP] ([MALOP])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[SINHVIEN] CHECK CONSTRAINT [FK_SINHVIEN_LOP]
GO
ALTER TABLE [dbo].[BANGDIEM]  WITH NOCHECK ADD  CONSTRAINT [CK_DIEM] CHECK  (([DIEM]>=(0) AND [DIEM]<=(10)))
GO
ALTER TABLE [dbo].[BANGDIEM] CHECK CONSTRAINT [CK_DIEM]
GO
ALTER TABLE [dbo].[BANGDIEM]  WITH NOCHECK ADD  CONSTRAINT [CK_LANTHI] CHECK  (([LAN]>=(1) AND [LAN]<=(2)))
GO
ALTER TABLE [dbo].[BANGDIEM] CHECK CONSTRAINT [CK_LANTHI]
GO
ALTER TABLE [dbo].[BANGDIEM]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_61FBB515_011E_4EE4_A9F8_388953FFADBE] CHECK NOT FOR REPLICATION (([ID]>(94119) AND [ID]<=(95119) OR [ID]>(95119) AND [ID]<=(96119)))
GO
ALTER TABLE [dbo].[BANGDIEM] CHECK CONSTRAINT [repl_identity_range_61FBB515_011E_4EE4_A9F8_388953FFADBE]
GO
ALTER TABLE [dbo].[BODE]  WITH NOCHECK ADD  CONSTRAINT [CK_BODE] CHECK  (([TRINHDO]='A' OR [TRINHDO]='B' OR [TRINHDO]='C'))
GO
ALTER TABLE [dbo].[BODE] CHECK CONSTRAINT [CK_BODE]
GO
ALTER TABLE [dbo].[BODE]  WITH NOCHECK ADD  CONSTRAINT [CK_DAPAN] CHECK  (([DAP_AN]='D' OR ([DAP_AN]='C' OR ([DAP_AN]='B' OR [DAP_AN]='A'))))
GO
ALTER TABLE [dbo].[BODE] CHECK CONSTRAINT [CK_DAPAN]
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY]  WITH CHECK ADD  CONSTRAINT [CK_LAN] CHECK  (([LAN]>=(1) AND [LAN]<=(2)))
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY] CHECK CONSTRAINT [CK_LAN]
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY]  WITH CHECK ADD  CONSTRAINT [CK_SOCAUTHI] CHECK  (([SOCAUTHI]>=(10) AND [SOCAUTHI]<=(100)))
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY] CHECK CONSTRAINT [CK_SOCAUTHI]
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY]  WITH CHECK ADD  CONSTRAINT [CK_THOIGIAN] CHECK  (([THOIGIAN]>=(15) AND [THOIGIAN]<=(60)))
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY] CHECK CONSTRAINT [CK_THOIGIAN]
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY]  WITH CHECK ADD  CONSTRAINT [CK_TRINHDO] CHECK  (([TRINHDO]='C' OR ([TRINHDO]='B' OR [TRINHDO]='A')))
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY] CHECK CONSTRAINT [CK_TRINHDO]
GO
/****** Object:  StoredProcedure [dbo].[SP_checkMaGV]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_checkMaGV](@magv char(8))
as 
	if exists( select MAGV from GIAOVIEN where MAGV=@magv)
		raiserror ('Mã giáo viên đã tồn tại',16,1)
GO
/****** Object:  StoredProcedure [dbo].[SP_CheckMaSV]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CheckMaSV]
	@MASV CHAR(8)
AS
BEGIN
	IF EXISTS(SELECT MASV FROM  dbo.SINHVIEN WHERE MASV = @MASV)
   		BEGIN
			RAISERROR ('Mã sinh viên đã tồn tại!',16,1)
			RETURN 
		END 
	IF EXISTS(SELECT MASV FROM LINK0.TN_CSDLPT.dbo.SINHVIEN WHERE MASV = @MASV)
		BEGIN
			RAISERROR ('Mã sinh viên đã tồn tại!',16,1)
			RETURN 
		END
	RETURN 1
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CheckTenKhoa]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_CheckTenKhoa]
@TENKhoa nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	if exists(SELECT TENKH FROM LINK0.TN_CSDLPT.dbo.KHOA WHERE TENKH = @TENKhoa)
		raiserror ('TÊN KHOA ĐÃ TỒN TẠI!',16,1)
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CheckTenLop]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_CheckTenLop]
@TENLop nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;
   	IF EXISTS(SELECT TENLOP FROM  LINK2.TN_CSDLPT.dbo.LOP WHERE MALOP = @TENLop)
		raiserror ('TÊN LỚP HỌC ĐÃ TỒN TẠI!',16,1)
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CheckTenMH]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create proc [dbo].[SP_CheckTenMH](
@TENMH nvarchar(50))
as

begin
	if exists(SELECT TENMH FROM  dbo.MONHOC WHERE TENMH = @TENMH)
   		raiserror ('TÊN MÔN HỌC ĐÃ TỒN TẠI!',16,1)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_CheckThiTiep]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_CheckThiTiep]
@MAMH CHAR(5),
@MASV char(10),
@LAN INT
AS
BEGIN
	SELECT COUNT(*) FROM TEMP10 WHERE MASV = @MASV AND MAMH = @MAMH AND LAN = @LAN
END
GO
/****** Object:  StoredProcedure [dbo].[SP_DangKiThi]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_DangKiThi](
@MAMH NCHAR(5),
@MALOP NCHAR(8),
@TRINHDO NCHAR(1), 
@SOCAUTHI INT,
@LAN INT,
@NGAYTHI VARCHAR(10))
AS
BEGIN
	DECLARE @TRINHDOTHAP CHAR(1), @SOCAUHOI INT, @SOCAUHOI_TDT INT
	IF EXISTS(SELECT * FROM DBO.GIAOVIEN_DANGKY WHERE MAMH = @MAMH AND MALOP = @MALOP AND LAN = @LAN)
	BEGIN
		RAISERROR('THÔNG TIN ĐĂNG KÍ THI ĐÃ TỒN TẠI! KHÔNG THỂ THÊM MỚI', 16, 1)
		RETURN
	END
	IF(@LAN = 2)
	BEGIN
		IF NOT EXISTS(SELECT * FROM DBO.BANGDIEM 
		WHERE MAMH = @MAMH AND LAN = 1 AND MASV IN(SELECT MASV FROM SINHVIEN WHERE MALOP = @MALOP))
		BEGIN
			RAISERROR('LẦN 1 CHƯA THI, KHÔNG ĐƯỢC ĐĂNG KÝ LẦN 2!', 16, 1)
			RETURN
		END

		IF NOT EXISTS(SELECT * FROM DBO.GIAOVIEN_DANGKY WHERE MAMH = @MAMH AND MALOP = @MALOP AND LAN = 1 AND NGAYTHI < CONVERT(DATETIME, @NGAYTHI))
		BEGIN
			RAISERROR('NGÀY THI LẦN 2 PHẢI LỚN HƠN NGÀY THI CỦA LẦN 1!', 16, 1)
			RETURN
		END
	END
	
	
	IF @TRINHDO = 'A' SET @TRINHDOTHAP = 'B'
	IF @TRINHDO = 'B' SET @TRINHDOTHAP = 'C'
	
	SET @SOCAUHOI = (SELECT COUNT(*) FROM dbo.BODE 
		WHERE MAMH = @MAMH AND TRINHDO = @TRINHDO) 

	IF @TRINHDO = 'C'
		IF @SOCAUTHI <= @SOCAUHOI RETURN
		ELSE 
		BEGIN
			RAISERROR (N'THIẾU CÂU HỎI! KHÔNG THỂ LẬP LỊCH THI',16,1)
			RETURN
		END		

	SET @SOCAUHOI_TDT = (SELECT COUNT(*) FROM dbo.BODE 
		WHERE MAMH = @MAMH AND TRINHDO = @TRINHDOTHAP)

	IF @TRINHDO = 'A' OR @TRINHDO = 'B'
	BEGIN
		IF	@SOCAUTHI <= @SOCAUHOI + @SOCAUHOI_TDT AND @SOCAUTHI*0.7 <= @SOCAUHOI RETURN
		BEGIN
			RAISERROR (N'THIẾU CÂU HỎI! THIẾU CÂU HỎI KHÔNG THỂ LẬP LỊCH THI',16,1)
			RETURN
		END	
	END
END	
GO
/****** Object:  StoredProcedure [dbo].[SP_DANGNHAP_GV]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_DANGNHAP_GV]
@TENLOGIN NVARCHAR (50)
AS
SET NOCOUNT ON;
DECLARE @TENUSER NVARCHAR(50)
SELECT @TENUSER=NAME FROM sys.sysusers WHERE sid = SUSER_SID(@TENLOGIN)
BEGIN
IF NOT EXISTS(SELECT MAGV FROM DBO.GIAOVIEN WHERE MAGV=@TENUSER )
	BEGIN
			RAISERROR ('GIẢNG VIÊN KHÔNG TỒN TẠI !!',16,1)
			RETURN 
	END
 SELECT USERNAME = @TENUSER, 
  HOTEN = (SELECT HO+ ' '+ TEN FROM GIAOVIEN WHERE MAGV = @TENUSER ),
   TENNHOM= NAME
   FROM sys.sysusers 
   WHERE UID = (SELECT GROUPUID 
                 FROM SYS.SYSMEMBERS 
                   WHERE MEMBERUID= (SELECT UID FROM sys.sysusers 
                                      WHERE NAME=@TENUSER))
END
GO
/****** Object:  StoredProcedure [dbo].[SP_DANGNHAP_SV]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_DANGNHAP_SV]
@TENLOGIN NVARCHAR (50), @MATKHAU NVARCHAR (50)
AS
SET NOCOUNT ON;
DECLARE @TENUSER NVARCHAR(50)
SELECT @TENUSER=NAME FROM sys.sysusers WHERE sid = SUSER_SID(@TENLOGIN)
BEGIN
	if exists(select masv from sinhvien where masv=@TENLOGIN AND matkhau=@MATKHAU)
				select masv, hoten=ho+' '+ten, GROUPNAME='SinhVien', MALOP, 
				TENLOP = (SELECT TENLOP FROM LOP l WHERE l.MALOP = sv.MALOP)
				from sinhvien sv where masv=@TENLOGIN
			else
				RAISERROR (N'Mã sinh viên hoặc mật khẩu không chính xác', 16, 1)
END
GO
/****** Object:  StoredProcedure [dbo].[SP_DemCauHoi]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_DemCauHoi]
@MAMH NCHAR(5),
@TRINHDO NCHAR(1),
@COUNT int OUTPUT
AS
BEGIN
	SET @COUNT = (
	SELECT COUNT(*) FROM dbo.BODE 
	WHERE MAMH = @MAMH AND TRINHDO = @TRINHDO AND 
		  MAGV IN (SELECT MAGV FROM dbo.GIAOVIEN 
				   WHERE MAKH IN (SELECT MAKH FROM dbo.KHOA)))
END
GO
/****** Object:  StoredProcedure [dbo].[SP_DemSoCauHoiSiteKhac]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_DemSoCauHoiSiteKhac]
@MAMH NCHAR(5),
@TRINHDO NCHAR(1),
@COUNT int OUTPUT
AS
BEGIN
	SET @COUNT = (
	SELECT COUNT(*) FROM dbo.BODE 
	WHERE MAMH = @MAMH AND TRINHDO = @TRINHDO AND 
		  MAGV IN (SELECT MAGV FROM dbo.GIAOVIEN 
				   WHERE MAKH NOT IN (SELECT MAKH FROM dbo.KHOA)))
END
GO
/****** Object:  StoredProcedure [dbo].[SP_DeThi]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_DeThi]
@MAMH NCHAR(5),
@TRINHDO NCHAR(1), 
@SOCAUTHI INT
AS
BEGIN
	DECLARE @SOCAUHOI_CS_HIENTAI INT,
	@SOCAUHOI_CS_KHAC INT,
	@SOCAUHOI_TEMP INT
	
	CREATE TABLE #BODETHI (
		CAUHOI INT,
		MAMH CHAR(5),
		TRINHDO CHAR(1),
		NOIDUNG NVARCHAR(500),
		A NVARCHAR(100),
		B NVARCHAR(100),
		C NVARCHAR(100),
		D NVARCHAR(100),
		DAP_AN CHAR(1),
		MAGV CHAR(8)
	)

	EXEC SP_DemCauHoi @MAMH, @TRINHDO, @SOCAUHOI_CS_HIENTAI OUTPUT
	EXEC SP_DemSoCauHoiSiteKhac @MAMH, @TRINHDO, @SOCAUHOI_CS_KHAC OUTPUT

	IF @TRINHDO = 'C'
	BEGIN
		IF @SOCAUTHI <= @SOCAUHOI_CS_HIENTAI 
		BEGIN
			INSERT INTO #BODETHI 
			exec SP_LayCauHoi @MAMH, @TRINHDO, @SOCAUTHI
		END
		ELSE
		BEGIN
			IF @SOCAUTHI <= @SOCAUHOI_CS_HIENTAI + @SOCAUHOI_CS_KHAC 
			BEGIN
				INSERT INTO #BODETHI 
				exec SP_LayCauHoi @MAMH, @TRINHDO, @SOCAUHOI_CS_HIENTAI

				SET @SOCAUHOI_TEMP = @SOCAUTHI - @SOCAUHOI_CS_HIENTAI
				INSERT INTO #BODETHI
				exec SP_LayCauHoiSiteKhac @MAMH, @TRINHDO, @SOCAUHOI_TEMP
			END
			ELSE 
			BEGIN
				RAISERROR (N'THIẾU CÂU HỎI',16,1)
				RETURN
			END	
		END
	END
	ELSE IF @TRINHDO = 'A' OR @TRINHDO = 'B'
	BEGIN
		DECLARE @TRINHDOTHAP CHAR(1), 
		@SOCAUHOI_TDTHAP_CS_HIENTAI INT,
		@SOCAUHOI_TDTHAP_CS_KHAC INT

		IF @TRINHDO = 'A' SET @TRINHDOTHAP = 'B'
		ELSE IF @TRINHDO = 'B' SET @TRINHDOTHAP = 'C'

		EXEC SP_DemCauHoi @MAMH, @TRINHDOTHAP, @SOCAUHOI_TDTHAP_CS_HIENTAI OUTPUT
		EXEC SP_DemSoCauHoiSiteKhac @MAMH, @TRINHDOTHAP, @SOCAUHOI_TDTHAP_CS_KHAC OUTPUT

		IF @SOCAUTHI <= @SOCAUHOI_CS_HIENTAI 
		BEGIN
			INSERT INTO #BODETHI
			exec SP_LayCauHoi @MAMH, @TRINHDO, @SOCAUTHI
		END
		ELSE --  @SOCAUTHI > @SOCAUHOI_CS_HIENTAI 
			IF @SOCAUHOI_CS_HIENTAI >= @SOCAUTHI*0.7 
			BEGIN
				INSERT INTO #BODETHI
				exec SP_LayCauHoi @MAMH, @TRINHDO, @SOCAUHOI_CS_HIENTAI
		
				IF @SOCAUTHI <= @SOCAUHOI_CS_HIENTAI + @SOCAUHOI_TDTHAP_CS_HIENTAI 	
				BEGIN
					SET @SOCAUHOI_TEMP=@SOCAUTHI - @SOCAUHOI_CS_HIENTAI
					INSERT INTO #BODETHI
					exec SP_LayCauHoi @MAMH, @TRINHDOTHAP, @SOCAUHOI_TEMP
				END
				ELSE -- @SOCAUHOI_CS_HIENTAI >= @SOCAUTHI*0.7 
					 -- @SOCAUTHI > @SOCAUHOI_CS_HIENTAI + @SOCAUHOI_TDTHAP_CS_HIENTAI 
					 -- có tất cả các câu TD BT CS Ht rồi
					 -- lấy thêm site khác
				BEGIN
					INSERT INTO #BODETHI
					exec SP_LayCauHoi @MAMH, @TRINHDOTHAP, @SOCAUHOI_TDTHAP_CS_HIENTAI

					IF @SOCAUTHI <= @SOCAUHOI_CS_HIENTAI + @SOCAUHOI_TDTHAP_CS_HIENTAI + @SOCAUHOI_CS_KHAC 
					-- có tất cả các câu ở cs ht rồi
					BEGIN
						SET @SOCAUHOI_TEMP = @SOCAUTHI - @SOCAUHOI_CS_HIENTAI - @SOCAUHOI_TDTHAP_CS_HIENTAI
						INSERT INTO #BODETHI
						exec SP_LayCauHoiSiteKhac @MAMH, @TRINHDO, @SOCAUHOI_TEMP
					END
					ELSE -- @SOCAUHOI_CS_HIENTAI >= @SOCAUTHI*0.7 
					 -- @SOCAUTHI > @SOCAUHOI_CS_HIENTAI + @SOCAUHOI_TDTHAP_CS_HIENTAI + @SOCAUHOI_CS_KHAC 
					 -- có tất cả các câu ở cs ht rồi
					BEGIN
						INSERT INTO #BODETHI
						exec SP_LayCauHoiSiteKhac @MAMH, @TRINHDO, @SOCAUHOI_CS_KHAC
						
						IF @SOCAUTHI <= @SOCAUHOI_CS_HIENTAI + @SOCAUHOI_TDTHAP_CS_HIENTAI + @SOCAUHOI_CS_KHAC + @SOCAUHOI_TDTHAP_CS_KHAC 
						BEGIN
							SET @SOCAUHOI_TEMP = @SOCAUTHI - @SOCAUHOI_CS_HIENTAI - @SOCAUHOI_TDTHAP_CS_HIENTAI - @SOCAUHOI_CS_KHAC
							INSERT INTO #BODETHI
							exec SP_LayCauHoiSiteKhac @MAMH, @TRINHDOTHAP, @SOCAUHOI_TEMP
						END
						ELSE
						BEGIN
							RAISERROR (N'THIẾU CÂU HỎI',16,1)
							RETURN
						END
					END
				END
			END
			ELSE --@SOCAUHOI_CS_HIENTAI < @SOCAUTHI*0.7 
			BEGIN
				INSERT INTO #BODETHI
				exec SP_LayCauHoi @MAMH, @TRINHDO, @SOCAUHOI_CS_HIENTAI
				
				IF @SOCAUTHI <= @SOCAUHOI_CS_HIENTAI + @SOCAUHOI_CS_KHAC 
				BEGIN
					SET @SOCAUHOI_TEMP = @SOCAUTHI - @SOCAUHOI_CS_HIENTAI
					INSERT INTO #BODETHI
					exec SP_LayCauHoiSiteKhac @MAMH, @TRINHDO, @SOCAUHOI_TEMP
				END 
				ELSE -- @SOCAUTHI > @SOCAUHOI_CS_HIENTAI + @SOCAUHOI_CS_KHAC 
					 -- kiểm tra câu hỏi ở trinh độ bt đủ 70% không
					 -- nếu đủ lấy thêm câu hỏi ở trinh độ thấp hơn
					IF @SOCAUTHI*0.7 <= @SOCAUHOI_CS_HIENTAI + @SOCAUHOI_CS_KHAC 
					BEGIN
						INSERT INTO #BODETHI
						exec SP_LayCauHoiSiteKhac @MAMH, @TRINHDO, @SOCAUHOI_CS_KHAC
						
						IF @SOCAUTHI <= @SOCAUHOI_CS_HIENTAI + @SOCAUHOI_CS_KHAC + @SOCAUHOI_TDTHAP_CS_HIENTAI 
						BEGIN
							SET @SOCAUHOI_TEMP = @SOCAUTHI - @SOCAUHOI_CS_HIENTAI - @SOCAUHOI_CS_KHAC
							INSERT INTO #BODETHI
							exec SP_LayCauHoi @MAMH, @TRINHDOTHAP, @SOCAUHOI_TEMP
						END 
						ELSE-- @SOCAUTHI*0.7 <= @SOCAUHOI_CS_HIENTAI + @SOCAUHOI_CS_KHAC
						-- @SOCAUTHI > @SOCAUHOI_CS_HIENTAI + @SOCAUHOI_CS_KHAC + @SOCAUHOI_TDTHAP_CS_HIENTAI 
						-- thêm câu hỏi ở trình độ thấp ở cs khác
						BEGIN
							INSERT INTO #BODETHI
							exec SP_LayCauHoi @MAMH, @TRINHDOTHAP, @SOCAUHOI_TDTHAP_CS_HIENTAI
							
							IF @SOCAUTHI <= @SOCAUHOI_CS_HIENTAI + @SOCAUHOI_TDTHAP_CS_HIENTAI + @SOCAUHOI_CS_KHAC + @SOCAUHOI_TDTHAP_CS_KHAC 
							BEGIN
								SET @SOCAUHOI_TEMP = @SOCAUTHI - @SOCAUHOI_CS_HIENTAI - @SOCAUHOI_TDTHAP_CS_HIENTAI - @SOCAUHOI_TDTHAP_CS_KHAC
								INSERT INTO #BODETHI
								exec SP_LayCauHoiSiteKhac @MAMH, @TRINHDOTHAP, @SOCAUHOI_TEMP
							END
							ELSE 
							BEGIN
								RAISERROR (N'THIẾU CÂU HỎI',16,1)
								RETURN
							END
						END
					END
					ELSE 
					BEGIN
						RAISERROR (N'THIẾU CÂU HỎI TRINH ĐỘ BT',16,1)
						RETURN
					END
				
			END					
	END
	SELECT * FROM #BODETHI ORDER BY NEWID() 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_DeThiDangThi]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_DeThiDangThi]
@MAMH NCHAR(10), 
@MASV NCHAR(20),
@LAN int
AS
BEGIN
	DECLARE @TRINHDO char(2) = (SELECT TRINHDO FROM GIAOVIEN_DANGKY 
								WHERE LAN = @LAN AND MAMH = @MAMH
								AND MALOP = (SELECT MALOP FROM SINHVIEN WHERE MASV = @MASV))

	SELECT t.CAUHOI, t.THUTU, t.MAMH, MASV, TRINHDO = @TRINHDO, NOIDUNG,
			ARANDOM, BRANDOM, CRANDOM, DRANDOM, bd.A, bd.B, bd.C, bd.D, DAP_AN, DACHON, THOIGIAN
	FROM TEMP10 t INNER JOIN BODE bd ON bd.CAUHOI = t.CAUHOI
END
GO
/****** Object:  StoredProcedure [dbo].[SP_LayCauHoi]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_LayCauHoi]
@MAMH NCHAR(5),
@TRINHDO NCHAR(1), 
@SOCAUTHI INT
AS
BEGIN
	SELECT TOP (@SOCAUTHI) CAUHOI, MAMH, TRINHDO, NOIDUNG, A, B, C, D, DAP_AN, MAGV
	FROM BODE  
	WHERE MAGV IN (SELECT MAGV FROM GIAOVIEN
				   WHERE MAKH IN (SELECT MAKH FROM KHOA))
		  AND MAMH = @MAMH
		  AND TRINHDO = @TRINHDO
END
GO
/****** Object:  StoredProcedure [dbo].[SP_LayCauHoiSiteKhac]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_LayCauHoiSiteKhac]
@MAMH NCHAR(5),
@TRINHDO NCHAR(1), 
@SOCAUTHI INT
AS
BEGIN
	SELECT TOP (@SOCAUTHI) CAUHOI, MAMH, TRINHDO, NOIDUNG, A, B, C, D, DAP_AN, MAGV
	FROM BODE  
	WHERE MAGV IN (SELECT MAGV FROM GIAOVIEN
				   WHERE MAKH NOT IN (SELECT MAKH FROM KHOA))
		  AND MAMH = @MAMH
		  AND TRINHDO = @TRINHDO
END
GO
/****** Object:  StoredProcedure [dbo].[SP_NhomGV]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_NhomGV]
@TENUSER NVARCHAR(50)
AS
BEGIN
	 SELECT TENNHOM= NAME
	   FROM sys.sysusers 
	   WHERE UID = (SELECT GROUPUID 
					 FROM SYS.SYSMEMBERS 
					   WHERE MEMBERUID= (SELECT UID FROM sys.sysusers 
										  WHERE NAME=@TENUSER))
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ReportXemLaiBaiThi]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_ReportXemLaiBaiThi]
@MASV NCHAR(10),
@MAMH char(5),
@LAN INT
AS
BEGIN
	DECLARE @dictionary as TABLE (id int, value varchar(1))
	INSERT INTO @dictionary VALUES (0, 'A'), (1, 'B'), (2, 'C'), (3, 'D')

	SELECT THUTU, NOIDUNG, 
		   ('A. ' + CAST((CASE VITRI_A WHEN 0 THEN A WHEN 1 THEN B WHEN 2 THEN C  WHEN 3 THEN D END) AS nvarchar(max)) + CHAR(13) + 
			'B. ' + CAST((CASE VITRI_B WHEN 0 THEN A WHEN 1 THEN B WHEN 2 THEN C  WHEN 3 THEN D END) AS nvarchar(max)) + CHAR(13) + 
			'C. ' + CAST((CASE VITRI_C WHEN 0 THEN A WHEN 1 THEN B WHEN 2 THEN C  WHEN 3 THEN D END) AS nvarchar(max)) + CHAR(13) + 
			'D. ' + CAST((CASE VITRI_D WHEN 0 THEN A WHEN 1 THEN B WHEN 2 THEN C  WHEN 3 THEN D END) AS nvarchar(max))) ABCD, 
		   (CASE DAP_AN
				WHEN 'A' THEN (SELECT value FROM @dictionary WHERE id = VITRI_A)
				WHEN 'B' THEN (SELECT value FROM @dictionary WHERE id = VITRI_B)
				WHEN 'C' THEN (SELECT value FROM @dictionary WHERE id = VITRI_C)
				WHEN 'D' THEN (SELECT value FROM @dictionary WHERE id = VITRI_D)
				ELSE 'X' END) DAPANRANDOM,
		   (CASE DACHON
				WHEN 'A' THEN (SELECT value FROM @dictionary WHERE id = VITRI_A)
				WHEN 'B' THEN (SELECT value FROM @dictionary WHERE id = VITRI_B)
				WHEN 'C' THEN (SELECT value FROM @dictionary WHERE id = VITRI_C)
				WHEN 'D' THEN (SELECT value FROM @dictionary WHERE id = VITRI_D)
				ELSE 'X' END) DACHONRANDOM
	FROM BAITHI bt INNER JOIN BODE bd ON bd.CAUHOI = bt.CAUHOI
	WHERE ID_BANGDIEM = (SELECT ID FROM BANGDIEM WHERE MAMH = @MAMH AND MASV = @MASV AND LAN = @LAN)
	ORDER BY THUTU
END

GO
/****** Object:  StoredProcedure [dbo].[SP_SuaBangThiTam]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_SuaBangThiTam]
@THUTU INT,
@DACHON CHAR(1)
AS
BEGIN
    BEGIN
		UPDATE TEMP10
        SET DACHON = @DACHON
		WHERE THUTU = @THUTU
    END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_SuaDaChonBangTam]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_SuaDaChonBangTam]
@THUTU INT,
@MASV NVARCHAR(20),
@LAN INT,
@MAMH CHAR(10),
@DACHON CHAR(1)
AS
BEGIN
    BEGIN
		UPDATE TEMP10
        SET DACHON = @DACHON
		WHERE THUTU = @THUTU AND MASV = @MASV AND MAMH = @MAMH AND LAN = @LAN
    END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_SuaThoiGianBangTam]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_SuaThoiGianBangTam]
@THOIGIAN FLOAT,
@MASV NVARCHAR(20),
@LAN INT,
@MAMH CHAR(10)
AS
BEGIN
    BEGIN
		UPDATE TEMP10
        SET THOIGIAN = @THOIGIAN
		WHERE MASV = @MASV AND MAMH = @MAMH AND LAN = @LAN
    END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_tabelTimKiem]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_tabelTimKiem] @MaSv nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;

	IF EXISTS (SELECT MAGV FROM GIAOVIEN WHERE MAGV = @MaSv) --GiaoVien, cs Thi
	BEGIN
		DECLARE @NHOM nvarchar(50) = (SELECT TENNHOM= NAME
		FROM sys.sysusers 
		WHERE UID = (SELECT GROUPUID 
					 FROM SYS.SYSMEMBERS 
					 WHERE MEMBERUID= (SELECT UID FROM sys.sysusers 
									   WHERE NAME=@MaSv)))
		IF @NHOM = 'GIANGVIEN'
		BEGIN
			SELECT TENMH, LAN, NGAYTHI, mh.MAMH, SOCAUTHI, THOIGIAN, TRINHDO
			FROM LINK0.TN_CSDLPT.dbo.GIAOVIEN_DANGKY gvdk INNER JOIN MONHOC mh
			ON gvdk.MAMH = mh.MAMH
			WHERE MAGV = @MaSv
		END
		ELSE IF @NHOM = 'COSO'
		BEGIN
			SELECT TENMH, LAN, NGAYTHI, mh.MAMH, SOCAUTHI, THOIGIAN, TRINHDO
			FROM LINK0.TN_CSDLPT.dbo.GIAOVIEN_DANGKY gvdk INNER JOIN MONHOC mh
			ON gvdk.MAMH = mh.MAMH
		END
	END
	ELSE
	BEGIN --SinhVien thi
		DECLARE @MaLop nvarchar(50) = (SELECT MALOP FROM SINHVIEN WHERE MASV=@MaSv)	

		CREATE TABLE #gvdangky_svchuathi (LAN INT, 
								  NGAYTHI datetime, 
								  MAMH char(10), 
								  SOCAUTHI int,
								  THOIGIAN int,
								  TRINHDO char(1));

		INSERT INTO #gvdangky_svchuathi
		SELECT gvdk.LAN, gvdk.NGAYTHI, gvdk.MAMH, gvdk.SOCAUTHI, gvdk.THOIGIAN, gvdk.TRINHDO 
		FROM (SELECT * FROM GIAOVIEN_DANGKY WHERE MALOP=@MaLop) As gvdk LEFT JOIN 
			 (SELECT * FROM BANGDIEM WHERE MASV=@MaSv) As bd
		ON gvdk.MAMH = bd.MAMH AND gvdk.LAN = bd.LAN  
		WHERE  bd.ID IS NULL;

		SELECT TENMH, LAN, NGAYTHI, mh.MAMH, SOCAUTHI, THOIGIAN, TRINHDO 
		FROM #gvdangky_svchuathi gvdk_svct INNER JOIN MONHOC mh 
		ON gvdk_svct.MAMH = mh.MAMH
	END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TAOLOGIN]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_TAOLOGIN]
  @LGNAME VARCHAR(50),
  @PASS VARCHAR(50),
  @USERNAME VARCHAR(50),
  @ROLE VARCHAR(50)
AS
  DECLARE @RET INT
  EXEC @RET= SP_ADDLOGIN @LGNAME, @PASS,'TN_CSDLPT'
  IF (@RET =1)  -- LOGIN NAME BI TRUNG
     RETURN 1
 
  EXEC @RET= SP_GRANTDBACCESS @LGNAME, @USERNAME
  IF (@RET =1)  -- USER  NAME BI TRUNG
  BEGIN
       EXEC SP_DROPLOGIN @LGNAME
       RETURN 2
  END
  EXEC sp_addrolemember @ROLE, @USERNAME --Thêm thành viên @username vào role
  IF @ROLE= 'TRUONG' -- Cấp quyền thêm quản trị
  BEGIN 
    EXEC sp_addsrvrolemember @LGNAME, 'SecurityAdmin'
    --EXEC sp_addsrvrolemember @LGNAME, 'processadmin'
  END
GO
/****** Object:  StoredProcedure [dbo].[SP_TaoLoginName]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_TaoLoginName]
@HO nvarchar(50),
@TEN nvarchar(50)
as

begin
	SET NOCOUNT ON;
	DECLARE @LOGINNAME nvarchar(50), @HOVATEN nvarchar(100) = @HO + ' ' + @TEN
	SET @LOGINNAME = (SELECT UPPER(REPLACE(STUFF((SELECT ' ' + LEFT(value,1)
				  FROM STRING_SPLIT(@HOVATEN, ' ')
				  FOR XML PATH('')),1,1,' '),' ','')) AS ChuoiChuCaiDau)
	DECLARE @Number INT = 0, @RANDOM INT, @LOGINNAMEADD nvarchar(50)
	CREATE TABLE #TEMP(LOGINNAME nvarchar(100))

	BEGIN TRY  
		WHILE @Number <  3
		BEGIN
			SET @RANDOM =(SELECT FLOOR(RAND()*(999-100+1)+100) AS RandomNumber)
			SET @LOGINNAMEADD = @LOGINNAME +  CAST(@RANDOM  AS nvarchar(5)); --Chuyển kiểu số sang kiểu nvarchar
			INSERT INTO #TEMP(LOGINNAME)
			VALUES (@LOGINNAMEADD)
			if not exists(select name FROM sys.syslogins WHERE name = @LOGINNAMEADD)
				SET @Number = @Number + 1 ;
		END	
		SELECT * FROM #TEMP
	END TRY  

	BEGIN CATCH  
		RAISERROR ('Lỗi Tạo combobox login!!',16,1)
	END CATCH  
end




GO
/****** Object:  StoredProcedure [dbo].[SP_ThemBangDiemVaBaiThi]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_ThemBangDiemVaBaiThi]
@MASV char(10), 
@MAMH char(10),
@LAN INT,
@DIEM INT
as
begin
IF (select count(CAUHOI) from TEMP10) != 0
BEGIN
	BEGIN TRANSACTION;
		begin try
			INSERT INTO BANGDIEM (MAMH, MASV, LAN, NGAYTHI, DIEM) -- thêm bảng điểm
			VALUES (@MAMH, @MASV, @LAN, GETDATE(), @DIEM)

			DECLARE @i int = 1
			DECLARE @RowCount int = (SELECT COUNT(*) FROM TEMP10)
			DECLARE @ID_BANGDIEM INT = (SELECT ID FROM BANGDIEM 
										WHERE MAMH=@MAMH AND MASV=@MASV AND LAN=@LAN),
					@CAUHOI INT, 
					@THUTU INT, 
					@VITRI_A INT, 
					@VITRI_B INT,
					@VITRI_C INT, 
					@VITRI_D INT, 
					@DACHON CHAR(1)
			WHILE @i <= @RowCount
			BEGIN
				SELECT @CAUHOI = CAUHOI, @THUTU = THUTU, @VITRI_A = ARANDOM, @VITRI_B = BRANDOM, 
					   @VITRI_C = CRANDOM, @VITRI_D = DRANDOM, @DACHON = DACHON
				FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY THUTU) as row_num FROM TEMP10) tableThiTamVoiRowNum
				WHERE tableThiTamVoiRowNum.row_num = @i

				-- thêm bài thi
				INSERT INTO BAITHI (ID_BANGDIEM, CAUHOI, THUTU, VITRI_A, VITRI_B, VITRI_C, VITRI_D, DACHON)
				VALUES (@ID_BANGDIEM, @CAUHOI, @THUTU, @VITRI_A, @VITRI_B, @VITRI_C, @VITRI_D, @DACHON)

				SET @i = @i + 1;
			END
				EXEC SP_XoaTableTam @MASV, @MAMH, @LAN
				COMMIT TRANSACTION;	
		end try
		BEGIN CATCH
			ROLLBACK TRANSACTION
				DECLARE @ErrorMessage VARCHAR(2000)
				SELECT @ErrorMessage = 'Lỗi: ' + ERROR_MESSAGE()
				RAISERROR (@ErrorMessage, 16,4);
		END CATCH
END
end
GO
/****** Object:  StoredProcedure [dbo].[SP_ThemBangThiTam]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ThemBangThiTam]
@CAUHOI INT, 
@THUTU INT,
@MAMH CHAR(5), 
@MASV NVARCHAR(20),
@LAN INT,
@ARANDOM INT, 
@BRANDOM INT, 
@CRANDOM INT, 
@DRANDOM INT,
@DACHON CHAR(1),
@THOIGIAN FLOAT
AS
BEGIN
	BEGIN TRY   
        INSERT INTO TEMP10
            (CAUHOI,
			 THUTU,
             MAMH,
             MASV,
			 LAN,
             ARANDOM,
             BRANDOM,
             CRANDOM,
             DRANDOM,
             DACHON,
			 THOIGIAN)
        VALUES
            (@CAUHOI,
			 @THUTU,
             @MAMH,
             @MASV,
             @LAN,
             @ARANDOM,
             @BRANDOM,
             @CRANDOM,
             @DRANDOM,
             @DACHON,
			 @THOIGIAN)
	END TRY  
	BEGIN CATCH  
		 EXEC SP_XoaTableTam @MASV, @MAMH, @LAN
	END CATCH 
 END
GO
/****** Object:  StoredProcedure [dbo].[SP_ThemMAKhoa]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_ThemMAKhoa]
	
@TENKhoa nvarchar(50)
as

begin
	SET NOCOUNT ON;
	DECLARE @MAKhoa nvarchar(8)
	SET @MAKhoa = (SELECT UPPER(REPLACE(STUFF((SELECT ' ' + LEFT(value,1)
				  FROM STRING_SPLIT(@TENKhoa, ' ')
				  FOR XML PATH('')),1,1,' '),' ','')) AS ChuoiChuCaiDau)
	DECLARE @Number INT = 1 ;
	WHILE @Number <  10
	BEGIN
		if exists(SELECT MAKH FROM  dbo.KHOA WHERE MAKH = @MAKhoa)
		BEGIN
			if LEN(@MAKhoa)>=8
			BEGIN
				SET @MAKhoa = RIGHT(@MAKhoa, 7)
			END
			SET @MAKhoa = LEFT(@MAKhoa, 7) + CAST(@Number AS nvarchar(10)); --Chuyển kiểu số sang kiểu nvarchar
			SET @Number = @Number + 1 ;
		END
		else
		BEGIN
			break
		END
	END	
	SELECT @MAKhoa
end
GO
/****** Object:  StoredProcedure [dbo].[SP_ThemMALop]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_ThemMALop]
	
@TENLop nvarchar(50)
as

begin
	SET NOCOUNT ON;
	DECLARE @MALop nvarchar(15)
	SET @MALop = (SELECT UPPER(REPLACE(STUFF((SELECT ' ' + LEFT(value,1)
				  FROM STRING_SPLIT(@TENLop, ' ')
				  FOR XML PATH('')),1,1,' '),' ','')) AS ChuoiChuCaiDau)
	DECLARE @Number INT = 1 ;
	WHILE @Number <  10
	BEGIN
		if exists(SELECT MALOP FROM  dbo.LOP WHERE MALOP = @MALop)
		BEGIN
			if LEN(@MALop)>=15
			BEGIN
				SET @MALop = RIGHT(@MALop, 14)
			END
			SET @MALop = LEFT(@MALop, 14) + CAST(@Number AS nvarchar(10)); --Chuyển kiểu số sang kiểu nvarchar
			SET @Number = @Number + 1 ;
		END
		else
		BEGIN
			break
		END
	END	
	SELECT @MALop
end
GO
/****** Object:  StoredProcedure [dbo].[SP_ThemMAMH]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ThemMAMH]
	
@TENMH nvarchar(50)
as

begin
	SET NOCOUNT ON;
	DECLARE @MAMH nvarchar(5)
	SET @MAMH = (SELECT UPPER(REPLACE(STUFF((SELECT ' ' + LEFT(value,1)
				  FROM STRING_SPLIT(@TENMH, ' ')
				  FOR XML PATH('')),1,1,' '),' ','')) AS ChuoiChuCaiDau)
	DECLARE @Number INT = 1 ;
	WHILE @Number <  10
	BEGIN
		if exists(SELECT MAMH FROM  dbo.MONHOC WHERE MAMH = @MAMH)
		BEGIN
			if LEN(@MAMH)>=5
			BEGIN
				SET @MAMH = RIGHT(@MAMH, 4)
			END
			SET @MAMH = LEFT(@MAMH, 4) + CAST(@Number AS nvarchar(10)); --Chuyển kiểu số sang kiểu nvarchar
			SET @Number = @Number + 1 ;
		END
		else
		BEGIN
			break
		END
	END	
	SELECT @MAMH
end
GO
/****** Object:  StoredProcedure [dbo].[SP_XemBangDiem]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_XemBangDiem]
	@MALOP NCHAR(8),
	@MAMH NCHAR(5),
	@LAN SMALLINT
	
AS
BEGIN
	SELECT SINHVIEN.MASV, HO, TEN, DIEM,[dbo].[FN_DiemChu](DIEM)As 'DIEM CHU'
	FROM dbo.SINHVIEN INNER JOIN dbo.BANGDIEM
	ON BANGDIEM.MASV = SINHVIEN.MASV
	WHERE BANGDIEM.MAMH = @MAMH AND BANGDIEM.LAN = @LAN AND SINHVIEN.MALOP = @MALOP
END
GO
/****** Object:  StoredProcedure [dbo].[SP_XemDSDKThi]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_XemDSDKThi]
@fromDate datetime,
@toDate datetime
AS
BEGIN
	SELECT DISTINCT  LOP.TENLOP, MONHOC.TENMH, CONCAT(GIAOVIEN.HO,' ',GIAOVIEN.TEN) AS HOTEN, GVDK.SOCAUTHI, CONVERT(DATE, GVDK.NGAYTHI) AS NGAYTHI,[dbo].[FN_CheckDaThi](GVDK.MAMH, GVDK.MALOP, GVDK.LAN) AS DATHI  FROM GIAOVIEN_DANGKY GVDK 
	inner join LOP ON ( (GVDK.NGAYTHI BETWEEN @fromDate AND @toDate) AND lOP.MALOP = GVDK.MALOP)
	inner join MONHOC ON (GVDK.MAMH = MONHOC.MAMH)
	inner join GIAOVIEN ON (GVDK.MAGV = GIAOVIEN.MAGV)

	ORDER BY NGAYTHI ASC
END
GO
/****** Object:  StoredProcedure [dbo].[SP_XEMLAIBAITHI]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_XEMLAIBAITHI] @USERNAME nvarchar(10)--mamh, lan -> lop hoten monthi ngay thi 
AS
BEGIN
	SET NOCOUNT ON;
	
	IF EXISTS (SELECT MAGV FROM GIAOVIEN WHERE MAGV = @USERNAME) --GiaoVien
	BEGIN
		DECLARE @NHOM nvarchar(50) = (SELECT TENNHOM= NAME
		FROM sys.sysusers 
		WHERE UID = (SELECT GROUPUID 
					 FROM SYS.SYSMEMBERS 
					 WHERE MEMBERUID= (SELECT UID FROM sys.sysusers 
									   WHERE NAME=@USERNAME)))
		IF @NHOM = 'COSO' or @NHOM = 'TRUONG'
		BEGIN
			SELECT  bd.MASV, HOTEN = (SELECT HO + ' ' + TEN FROM SINHVIEN WHERE MASV = bd.MASV), 
					gvdk.MALOP, LOP = (SELECT TENLOP FROM LOP WHERE MALOP = gvdk.MALOP),
					bd.MAMH, TENMH = (SELECT TENMH FROM MONHOC mh WHERE mh.MAMH = bd.MAMH),
					gvdk.LAN, gvdk.NGAYTHI
			FROM GIAOVIEN_DANGKY gvdk INNER JOIN BANGDIEM bd
			ON  gvdk.MALOP = (SELECT MALOP FROM SINHVIEN WHERE MASV = bd.MASV)
				AND gvdk.MAMH = bd.MAMH 
				AND gvdk.LAN = bd.LAN 
		END
	END
	ELSE IF EXISTS (SELECT MASV FROM LINK0.TN_CSDLPT.dbo.SINHVIEN WHERE MASV = @USERNAME)
	BEGIN
		SELECT  @USERNAME as MASV, HOTEN = (SELECT HO + ' ' + TEN FROM SINHVIEN WHERE MASV = @USERNAME), 
				gvdk.MALOP, LOP = (SELECT TENLOP FROM LOP WHERE MALOP = gvdk.MALOP),
				bd.MAMH, TENMH = (SELECT TENMH FROM MONHOC mh WHERE mh.MAMH = bd.MAMH),
				gvdk.LAN, gvdk.NGAYTHI
		FROM GIAOVIEN_DANGKY gvdk INNER JOIN BANGDIEM bd
		ON gvdk.MALOP = (SELECT MALOP FROM SINHVIEN WHERE MASV = @USERNAME)
			AND gvdk.MAMH = bd.MAMH 
			AND gvdk.LAN = bd.LAN 
		WHERE BD.MASV = @USERNAME
	END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_XoaGV_checkBODE_checkGVDK]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_XoaGV_checkBODE_checkGVDK]
	@maGV NVARCHAR(50)
AS
BEGIN
	DECLARE @ho NVARCHAR(50), @ten NVARCHAR(50)
	IF exists (select * from GIAOVIEN_DANGKY where MAGV = @maGV)
		begin
			SELECT @ho = HO, @ten = TEN from GIAOVIEN where MAGV = @maGV
			RAISERROR('Giáo viên %s %s đang đăng kí thi, không thể xóa!', 16, 1, @ho ,@ten)
			RETURN
		end
	IF exists (select * from BODE where MAGV = @maGV)
		begin
			SELECT @ho = HO, @ten = TEN from GIAOVIEN where MAGV = @maGV
			RAISERROR('Giáo viên %s %s đã soạn đề, không thể xóa!', 16, 1, @ho ,@ten)
			RETURN
		end
	return 1
END
GO
/****** Object:  StoredProcedure [dbo].[SP_XoaSV_checkBangDiem]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_XoaSV_checkBangDiem]
    @masv NVARCHAR(50)
   
AS
BEGIN
	DECLARE @ho NVARCHAR(50), @ten NVARCHAR(50)
    IF EXISTS (SELECT * FROM BANGDIEM WHERE MASV = @masv)
    BEGIN
		SELECT @ho = HO,@ten = TEN FROM SINHVIEN WHERE MASV = @masv
        RAISERROR('Sinh viên %s %s đang có điểm không thể xóa!', 16, 1, @ho , @ten)
        RETURN
    END
	return 1
END
GO
/****** Object:  StoredProcedure [dbo].[SP_XoaTableTam]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_XoaTableTam] 
@MASV char(10),
@MAMH char(5),
@LAN INT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE TEMP10 where MaSV = @MASV AND MAMH = @MAMH AND LAN = @LAN
END
GO
/****** Object:  StoredProcedure [dbo].[XoaLogin]    Script Date: 6/17/2023 7:50:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[XoaLogin]
  @USRNAME VARCHAR(50)

AS
BEGIN
	DECLARE @LGNAME VARCHAR(50) =  (SELECT l.name 
									FROM sys.server_principals l INNER JOIN Sys.sysusers u ON l.sid=u.sid
									WHERE u.name = @USRNAME)
	EXEC SP_DROPUSER @USRNAME
	EXEC SP_DROPLOGIN @LGNAME
END



--SELECT * FROM  sys.sysusers 
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "PUBS"
            Begin Extent = 
               Top = 9
               Left = 57
               Bottom = 206
               Right = 447
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SUBS"
            Begin Extent = 
               Top = 207
               Left = 57
               Bottom = 404
               Right = 400
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_DS_PHANMANH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_DS_PHANMANH'
GO
USE [master]
GO
ALTER DATABASE [TN_CSDLPT] SET  READ_WRITE 
GO
