USE [master]
GO
/****** Object:  Database [thegioidienthoai]    Script Date: 12/07/2020 12:48:01 CH ******/
CREATE DATABASE [thegioidienthoai]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'thegioidienthoai_Data', FILENAME = N'c:\dzsqls\thegioidienthoai.mdf' , SIZE = 8192KB , MAXSIZE = 30720KB , FILEGROWTH = 22528KB )
 LOG ON 
( NAME = N'thegioidienthoai_Logs', FILENAME = N'c:\dzsqls\thegioidienthoai.ldf' , SIZE = 8192KB , MAXSIZE = 30720KB , FILEGROWTH = 22528KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [thegioidienthoai] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [thegioidienthoai].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [thegioidienthoai] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [thegioidienthoai] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [thegioidienthoai] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [thegioidienthoai] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [thegioidienthoai] SET ARITHABORT OFF 
GO
ALTER DATABASE [thegioidienthoai] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [thegioidienthoai] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [thegioidienthoai] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [thegioidienthoai] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [thegioidienthoai] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [thegioidienthoai] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [thegioidienthoai] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [thegioidienthoai] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [thegioidienthoai] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [thegioidienthoai] SET  ENABLE_BROKER 
GO
ALTER DATABASE [thegioidienthoai] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [thegioidienthoai] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [thegioidienthoai] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [thegioidienthoai] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [thegioidienthoai] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [thegioidienthoai] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [thegioidienthoai] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [thegioidienthoai] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [thegioidienthoai] SET  MULTI_USER 
GO
ALTER DATABASE [thegioidienthoai] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [thegioidienthoai] SET DB_CHAINING OFF 
GO
ALTER DATABASE [thegioidienthoai] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [thegioidienthoai] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [thegioidienthoai] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [thegioidienthoai] SET QUERY_STORE = OFF
GO
USE [thegioidienthoai]
GO
/****** Object:  User [xuantrung48_SQLLogin_1]    Script Date: 12/07/2020 12:48:04 CH ******/
CREATE USER [xuantrung48_SQLLogin_1] FOR LOGIN [xuantrung48_SQLLogin_1] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [xuantrung48_SQLLogin_1]
GO
/****** Object:  Schema [xuantrung48_SQLLogin_1]    Script Date: 12/07/2020 12:48:05 CH ******/
CREATE SCHEMA [xuantrung48_SQLLogin_1]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/07/2020 12:48:05 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppSettings]    Script Date: 12/07/2020 12:48:05 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppSettings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Logo] [nvarchar](max) NULL,
	[Icon] [nvarchar](max) NULL,
	[ShortDesc] [nvarchar](max) NULL,
	[DefaultRoleId] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppSettings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 12/07/2020 12:48:05 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12/07/2020 12:48:05 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12/07/2020 12:48:05 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12/07/2020 12:48:05 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12/07/2020 12:48:05 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12/07/2020 12:48:05 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Gender] [int] NOT NULL,
	[ProfilePicture] [nvarchar](max) NULL,
	[Name] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 12/07/2020 12:48:05 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 12/07/2020 12:48:05 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[BrandId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarouselImages]    Script Date: 12/07/2020 12:48:05 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarouselImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_CarouselImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 12/07/2020 12:48:05 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 12/07/2020 12:48:05 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerId] [nvarchar](450) NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[CustomerName] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 12/07/2020 12:48:05 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[ImageId] [nvarchar](450) NOT NULL,
	[ImageName] [nvarchar](max) NULL,
	[ProductId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[ImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 12/07/2020 12:48:05 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderId] [nvarchar](450) NOT NULL,
	[ProductId] [nvarchar](450) NOT NULL,
	[Price] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[OrderDetailId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 12/07/2020 12:48:05 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [nvarchar](450) NOT NULL,
	[CustomerId] [nvarchar](450) NULL,
	[OrderTime] [datetime2](7) NOT NULL,
	[CompleteTime] [datetime2](7) NOT NULL,
	[Status] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 12/07/2020 12:48:05 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Price] [int] NOT NULL,
	[BrandId] [int] NOT NULL,
	[Remain] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Screen] [nvarchar](max) NULL,
	[CPU] [nvarchar](max) NULL,
	[OS] [nvarchar](max) NULL,
	[RearCamera] [nvarchar](max) NULL,
	[FrontCamera] [nvarchar](max) NULL,
	[Ram] [int] NULL,
	[Rom] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200628141846_InitDb', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200628144051_CreateBrandsCategoriesProductsTable', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200628163500_AddDataToDatabase', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200628165854_SeedingData', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200629025742_InitIdentityTables', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200701013406_ExtendUserTable', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200701021806_AddNameColumnToUserTable', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200704104910_CreateImageTable', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200706164200_CreateOrderTables', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200707024743_UpdateOrderDetailTable', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200707080646_UpdateOrderTable', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200709075152_AddNoteColumnToOrder', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200710035436_AddAppSettigTable', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200710040555_UpdateAppSettingTable', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200711025424_AddCarouselImagesTable', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200711140332_AddRoleIdToAppSettingTable', N'3.1.5')
GO
SET IDENTITY_INSERT [dbo].[AppSettings] ON 

INSERT [dbo].[AppSettings] ([Id], [Title], [Logo], [Icon], [ShortDesc], [DefaultRoleId]) VALUES (1, N'Thế giới điện thoại', N'f4c2cdc8-1b71-4409-ac08-9f3487326a22.png', N'02197ba3-e08d-44f3-ba85-0ceb443ea609.png', N'Cửa hàng điện thoại, tablet, laptop lớn nhất Việt Nam', N'c93f6f06-553e-4cad-a838-e12143734d1e')
SET IDENTITY_INSERT [dbo].[AppSettings] OFF
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'c93f6f06-553e-4cad-a838-e12143734d1e', N'Customer', N'CUSTOMER', N'4cc56919-4c45-4190-a031-a2820b198504')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ef7c1968-94e5-4d0d-bcdd-4d7134b2948d', N'Admin', N'ADMIN', N'b8227ff7-6cde-40ef-91cc-1bb1fac940ae')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'76e5098a-68d2-4477-b4c5-d06e4d0a1c64', N'c93f6f06-553e-4cad-a838-e12143734d1e')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'83ad1f91-bb99-44da-8843-8bf783c9254f', N'c93f6f06-553e-4cad-a838-e12143734d1e')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd29f6461-2c8c-49ac-af37-ebf503658951', N'ef7c1968-94e5-4d0d-bcdd-4d7134b2948d')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Gender], [ProfilePicture], [Name]) VALUES (N'4645f35b-5260-422c-ad56-650001ef6a42', N'hamoctam@gmail.com', N'HAMOCTAM@GMAIL.COM', N'hamoctam@gmail.com', N'HAMOCTAM@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAENTRPpN4ZQv+fr2EklxKVevYFAVFaKEgUKtB+I5lugFgU5T09tEo5B4vSRowpLzGNA==', N'R46I2RLJTH36AG62NUIHDJVUBXC3W7HE', N'c3eda468-464a-496b-acdd-a0747cabd16a', N'0944081535', 0, 0, NULL, 1, 0, N'11drdsts', 1, N'bf7157a7-cffe-41f4-9170-2e6ddc1b8c1b.jpg', N'Lee Kim Trammm')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Gender], [ProfilePicture], [Name]) VALUES (N'76e5098a-68d2-4477-b4c5-d06e4d0a1c64', N'xuantrung51@gmail.com', N'XUANTRUNG51@GMAIL.COM', N'xuantrung51@gmail.com', N'XUANTRUNG51@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEPzv/ubkd5hfIyGhej0GGybup7E9iVa72x8Wcyu/EyWJdahEQ/Kf7GYAKp7AKmMyKw==', N'ZQKYNIRRLDSOCRBK6JSPF4MP6L5IFFJM', N'4f0f1679-3c9b-4e6e-957c-491272c53841', N'0702004004', 0, 0, NULL, 1, 0, N'33/39 Đào Duy Anh2', 0, NULL, N'Trung Nguyen')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Gender], [ProfilePicture], [Name]) VALUES (N'83ad1f91-bb99-44da-8843-8bf783c9254f', N'xuantrung50@gmail.com', N'XUANTRUNG50@GMAIL.COM', N'xuantrung50@gmail.com', N'XUANTRUNG50@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGeeJhuijL0HOjo9hBQlq7WZPWi21LnA4vihuZOek2FrEHVEVLBMWSUJ+wnK7HOH9Q==', N'ERBNKMNFG73LZQWFBDYXGXMPH3MBHNSS', N'5881fea9-1f04-46e6-9724-9bbe61c65ba5', N'0368767308', 0, 0, NULL, 1, 0, N'33/39 Đào Duy Anh', 0, N'2f873736-9682-4c1d-907b-a2fdf700338f.png', N'Trung Nguyen')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Gender], [ProfilePicture], [Name]) VALUES (N'd29f6461-2c8c-49ac-af37-ebf503658951', N'xuantrung48@gmail.com', N'XUANTRUNG48@GMAIL.COM', N'xuantrung48@gmail.com', N'XUANTRUNG48@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFt2bmWR1MdZR+JOzZ+HAEtrGAGeYm50eXUupxKg+z/8I6pH/VsM1ZciFPvgEzVYZA==', N'X6BBGPIMWVTINJUE5U72M5B36W5NGCF2', N'601d6fbf-2705-410c-867f-d8c73267b82d', N'0702004004', 0, 0, NULL, 1, 0, N'28 NTP', 0, N'546b6dcd-a8a9-4df6-9804-0de592ef7df0.jpg', N'Trung Nguyen')
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([BrandId], [Name]) VALUES (7, N'Samsung')
INSERT [dbo].[Brands] ([BrandId], [Name]) VALUES (8, N'Apple')
INSERT [dbo].[Brands] ([BrandId], [Name]) VALUES (9, N'VSmart')
INSERT [dbo].[Brands] ([BrandId], [Name]) VALUES (10, N'BPhone')
INSERT [dbo].[Brands] ([BrandId], [Name]) VALUES (11, N'Sony')
INSERT [dbo].[Brands] ([BrandId], [Name]) VALUES (12, N'Oppo')
INSERT [dbo].[Brands] ([BrandId], [Name]) VALUES (13, N'Asus')
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
SET IDENTITY_INSERT [dbo].[CarouselImages] ON 

INSERT [dbo].[CarouselImages] ([Id], [Name]) VALUES (5, N'50b6034e-f89a-4310-bd24-273595a35262.jpg')
INSERT [dbo].[CarouselImages] ([Id], [Name]) VALUES (6, N'0e32cea6-00cb-4354-b9f3-44ef643db523.jpg')
INSERT [dbo].[CarouselImages] ([Id], [Name]) VALUES (9, N'80c00d09-e653-41f4-820d-b29306851ab1.jpg')
SET IDENTITY_INSERT [dbo].[CarouselImages] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (6, N'Điện thoại')
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (7, N'Máy tính bảng')
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (8, N'Laptop')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
INSERT [dbo].[Customers] ([CustomerId], [UserId], [CustomerName], [PhoneNumber], [Address]) VALUES (N'1ca82314-194e-411b-abc2-15e054c35349', N'4645f35b-5260-422c-ad56-650001ef6a42', N'Lee Kim Trammm', N'0944081535', N'11drdsts')
INSERT [dbo].[Customers] ([CustomerId], [UserId], [CustomerName], [PhoneNumber], [Address]) VALUES (N'37767a6f-c785-41a3-bd07-e93608a32987', N'd29f6461-2c8c-49ac-af37-ebf503658951', N'Trung Nguyen', N'0702004004', N'28 NTP')
INSERT [dbo].[Customers] ([CustomerId], [UserId], [CustomerName], [PhoneNumber], [Address]) VALUES (N'7302fa23-ec07-4701-88a9-19e10e2d5a97', NULL, N'Trung Nguyen', N'0702004004', N'28 NTP')
INSERT [dbo].[Customers] ([CustomerId], [UserId], [CustomerName], [PhoneNumber], [Address]) VALUES (N'8f9576b8-a5a6-4542-91e5-25e35df962bb', N'4645f35b-5260-422c-ad56-650001ef6a42', N'Lee Kim Trammm', N'0944081535', N'11 yhugygy8gyg8y8yug')
INSERT [dbo].[Customers] ([CustomerId], [UserId], [CustomerName], [PhoneNumber], [Address]) VALUES (N'a6339d89-85b8-4c9a-ad13-82ec5dd5ca31', N'd29f6461-2c8c-49ac-af37-ebf503658951', N'Trung Nguyen', N'0702004004', N'28 NTP')
INSERT [dbo].[Customers] ([CustomerId], [UserId], [CustomerName], [PhoneNumber], [Address]) VALUES (N'e5546ab2-c2e7-450a-8cf2-b10c4db78651', N'83ad1f91-bb99-44da-8843-8bf783c9254f', N'Trung Nguyen', N'0368767308', N'33/39 Đào Duy Anh')
INSERT [dbo].[Customers] ([CustomerId], [UserId], [CustomerName], [PhoneNumber], [Address]) VALUES (N'fb935685-cdec-45a4-ae68-17dcf1439d4f', N'4645f35b-5260-422c-ad56-650001ef6a42', N'Lee Kim Trammm', N'0944081535', N'11drdsts')
GO
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'04e023bf-b786-4d57-8bce-fb748f26048a', N'4d2f73d5-6a86-4f2e-bea6-0ae3a2122b43.jpg', N'ef52c85a-b00f-47b1-929b-b5bd9edfef77')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'0baa4bc6-7f14-4a8a-8527-447c657111b2', N'cca0f769-8d87-463e-bdca-38ba7948f169.jpg', N'621648d5-022f-48f2-8ebf-f923f820c353')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'0ed76704-ecd4-4dd1-a04f-dc0b126a4891', N'f6b8257f-6681-42ea-97bc-b37dcdd74de2.png', N'f5c695ef-0c1d-44c4-a94c-9952b68a5ff2')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'0f073216-90e4-4e9c-ae59-dc526f335dc5', N'6cdde9e4-c307-495f-8ca5-bbee5c0e65a3.png', N'5a27effd-59d9-4b62-b704-ffb270b0a7a8')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'135a0042-de4f-4fd6-a560-80e4f5e70b90', N'6e965932-faa8-48fe-b38c-505291abfe38.jpg', N'a7726495-c6fa-4671-9e2b-d6b9af24fcb7')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'17387729-899e-4e14-8bfb-230b50ac9c7e', N'a5e560eb-5da6-4e73-8ca1-4d39d43a0e98.png', N'8ea167ef-a2df-44ab-bf0c-d33dbd4b9b98')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'1db400df-1bba-44d2-be69-e5a774bc973b', N'b1678886-9acc-41d6-8c9e-7a8985dcb5ce.png', N'f9b94064-b6a7-4dfe-8ef4-917d9beafc75')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'277eef9c-ccc1-44ab-b069-426af1b1afc7', N'6cca2ffe-442c-4ee4-b168-c68280722458.jpg', N'dda234a0-6fbd-494d-aba5-52cd5c25807b')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'2c0d6f67-6a35-40d1-bce1-69c76c6a06ed', N'fffd6000-f4bd-4328-8d48-84e48f52f129.jpg', N'4f7d7aad-2aa1-4233-93af-9d8e8dc0f431')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'31cbeee2-aded-4d3a-8fbb-2dbc49717dbb', N'fb5ec450-6c4b-49b2-a82e-17833a60abab.jpg', N'f3a49a70-8633-4337-9820-1aa5d1563502')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'400a945b-aa36-4535-9dab-29744ca1c3bd', N'277b8ed5-bce5-40ca-a5cc-27df15eea7ad.png', N'b2e6b177-be41-4b7c-a855-57eea545cc4d')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'4194d1a2-a8b0-491d-8a22-f22b5b3b6727', N'3166ac97-22aa-4459-bdbb-a188183eca75.png', N'2e8f5c6a-326d-4c51-8b69-12cba1bec13b')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'548f5c12-bf9d-4daa-b960-13485dffecd3', N'20dcc300-c2a1-4cfe-b22a-bfaf1fc549be.jpg', N'17360739-8aef-47ce-b714-bee0a7fe018b')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'5613c06b-5512-4387-940d-a3fc9ccea993', N'910010fa-81e9-4d86-b513-3a1803b97e8c.png', N'dda234a0-6fbd-494d-aba5-52cd5c25807b')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'681ddc66-596d-4b79-b1d0-42123566e613', N'cb7d7077-efc1-4c20-ac53-3db8408494f7.jpg', N'621648d5-022f-48f2-8ebf-f923f820c353')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'6902f232-4976-4a55-b64d-5366eab676f9', N'e7d5f974-d9e8-4862-a4f7-b10466e8f931.jpg', N'a640fca0-cd81-4191-8226-fd2bd56a0eb6')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'6d908589-ec87-433c-b3a3-cfe6eed22b0f', N'73620bcd-6623-4fc5-bb97-bbf1499ccd99.jpg', N'f3a49a70-8633-4337-9820-1aa5d1563502')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'6fc5c078-f09f-46c5-a3ba-8123c9321b6d', N'3c1ca01a-3ece-4361-bec1-9eb7fe2eae86.png', N'af31249e-9fc3-4a2d-bf1f-1e2440961863')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'716be9f2-7fac-4c5a-aaae-c0f71f66cc3c', N'2860b89c-a5fc-4573-b7dc-b780c29e9297.jpg', N'105dccc3-512e-4279-82cc-dc90b7b80aeb')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'71d84589-5ec0-458a-b368-b67faad67a09', N'65202c31-5f3f-4dad-80ea-641753168e2f.webp', N'f3a49a70-8633-4337-9820-1aa5d1563502')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'72ba7795-9c0a-49ec-bfe0-60dbc75c912c', N'3ac0d99a-e037-4f15-8bb7-4b68ab0731a9.jpg', N'b46ce9c4-609a-487b-9617-b1eafab88cca')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'732442da-f0d0-4e66-9a9b-5ddca5003912', N'3752dde3-2b05-4b10-990a-901308f0416f.jpg', N'd3a0c90c-2582-40a3-b27a-922d0215d06c')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'75182985-59c5-4cee-9ca5-b0b2c0ba99c3', N'1b998678-da4d-4f5e-a044-d8bad13884ae.jpg', N'af31249e-9fc3-4a2d-bf1f-1e2440961863')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'9026c3d1-bdbb-4c43-983a-710b4e7b5bd3', N'a68f4239-b01a-4f60-84e9-3932f72c5a32.png', N'1c84766f-2d10-4f25-a127-9e91ddf3dcdf')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'9b24d404-c627-4438-9dc8-2c5dda3e1567', N'88deb456-fe6c-47e3-9934-b022858f803b.png', N'ecb8e337-d0e8-4799-94a7-109b43935bc4')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'a73537dc-211b-417c-b8e8-7e0ff5899092', N'57ef22ba-430e-475d-b237-5da52d692a38.png', N'621648d5-022f-48f2-8ebf-f923f820c353')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'b1dc6220-1f7b-4b03-a59c-a8b5510cf62c', N'5eeb6e90-1fa4-42bc-8260-93786b2f435d.jpg', N'1c84766f-2d10-4f25-a127-9e91ddf3dcdf')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'b440a80c-e81a-4c9f-9045-342c4817f160', N'35a1b949-c5b9-4f96-aaef-7b3916af2ff8.png', N'd22b3b49-005f-4c9b-9262-0b98ea2f2611')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'ba2a44d6-5070-4a1a-87a8-143090adfb8d', N'1a760901-e8ab-4105-af30-88a1d27d18df.png', N'a7726495-c6fa-4671-9e2b-d6b9af24fcb7')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'bb81a02b-0622-4e2f-86f3-e8e452efbb8d', N'e0e94937-797f-4541-93ff-23149c882030.jpg', N'a7726495-c6fa-4671-9e2b-d6b9af24fcb7')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'bbe141ea-8e52-4554-b0da-9ce01b3b5388', N'a6720ca7-4bcf-43fb-bd8b-d3e583dc403a.jpg', N'a7726495-c6fa-4671-9e2b-d6b9af24fcb7')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'c99e06b5-d8ed-4a21-b838-34c31757c6e7', N'b8b6a7fd-86e7-452b-9f14-f9dcc496d83c.png', N'757474eb-1b32-4c2f-a273-f188caa75c81')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'c9faa46a-5056-4e44-be97-ff098801dd91', N'7115ef26-8ccb-4571-9dc0-1ced9bf66465.jpg', N'9fb35179-c21a-4e2f-b1c6-acdcfcc39955')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'cb34ed5f-7bdc-43ee-860c-6c75620d35ed', N'0c28ac02-b74f-4256-b969-9d680198fbe5.jpg', N'2e8f5c6a-326d-4c51-8b69-12cba1bec13b')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'ceb6f266-1e6d-435a-b813-8c88f124a760', N'6f5189c1-5ae1-4b10-a68d-86c1c292a5c0.png', N'28c1d5f4-85e8-4cbd-aece-ac596579c426')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'd2b48522-0bf4-4886-9891-527ad206de3d', N'54f8ceab-5458-4a10-92ff-b75d20deb23b.png', N'5ae91aa9-2a3b-4d56-9098-d188e7abdb71')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'd4dd3280-f5a6-407b-a4e2-6cbba6c9004f', N'665f4e73-0b84-4d1e-a3ef-d22aeb5c0ade.jpg', N'64e1a946-2a24-43ec-b1dd-d05574b55e5e')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'e1681c26-25ee-4a2f-9c0f-3bb76b22e45e', N'ca70eb5d-99ac-4000-b9dc-5bb6c0d5419a.jpg', N'105dccc3-512e-4279-82cc-dc90b7b80aeb')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'e28061d4-678e-434b-b561-564c9973c0bd', N'e8892961-e8ce-4080-b2f7-a53f4bb16c09.jpg', N'f3a49a70-8633-4337-9820-1aa5d1563502')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'e3229315-eb0e-4ee2-8c87-713f1f2dd2f9', N'fa67a554-51b0-4d97-8a55-1f902932fb00.jpg', N'd22b3b49-005f-4c9b-9262-0b98ea2f2611')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'ea551717-02a0-4be7-9099-e489909d1997', N'79c51548-45b3-48e8-93eb-2880c786df27.png', N'4f7d7aad-2aa1-4233-93af-9d8e8dc0f431')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'f0d1fd06-860e-4cfd-a22f-71ed193124fd', N'6599459b-54f2-400c-adee-6579dde77515.jpg', N'd22b3b49-005f-4c9b-9262-0b98ea2f2611')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'f7c9db02-dcef-43dc-b2e1-19369d3d279b', N'437efc15-8e3d-4a6c-b248-6996f0c9fdb2.jpg', N'af31249e-9fc3-4a2d-bf1f-1e2440961863')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'f83f3223-d6b5-44b1-848d-61491b8b57ff', N'bdee3c75-9c95-4811-85e2-e9df6887957c.jpg', N'e7811398-ddf7-4d42-8446-26ef421ce26f')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'f8b83726-cb64-4a40-bb76-e610b2bc7e15', N'f9d90011-c32d-4703-8742-61d514850bf4.jpg', N'e7811398-ddf7-4d42-8446-26ef421ce26f')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'fc309ab6-5bc4-4911-b71f-3924f63bcee1', N'e17af89c-d9c1-4b43-ba96-e1364f5aaf4f.jpg', N'4f7d7aad-2aa1-4233-93af-9d8e8dc0f431')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'fcdc4ca9-e905-40d6-9669-24bdaf4556e7', N'a3825c3f-a5fd-4e0d-b5bb-a1451a050685.jpg', N'ec7da3d8-d6d2-43bb-adbf-4545926949b2')
INSERT [dbo].[Images] ([ImageId], [ImageName], [ProductId]) VALUES (N'fcfc03bb-fd82-4352-bea7-8b4df37dcf4e', N'f00a112c-c980-41a7-b376-0aad7cd7c18b.png', N'105dccc3-512e-4279-82cc-dc90b7b80aeb')
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Price], [Quantity], [OrderDetailId]) VALUES (N'00dee1ec-231b-4f34-9655-39009703fedf', N'105dccc3-512e-4279-82cc-dc90b7b80aeb', 5840000, 1, N'16d78b25-ca7e-49e5-8fc3-7e2f84862b3d')
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Price], [Quantity], [OrderDetailId]) VALUES (N'57860eaa-cb68-49ba-a7b5-3436e60f5fb6', N'2e8f5c6a-326d-4c51-8b69-12cba1bec13b', 3320000, 1, N'44263975-8a53-4977-ad16-ca590b16b43c')
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Price], [Quantity], [OrderDetailId]) VALUES (N'2823e88c-9d7a-465b-af32-7b1565199664', N'5ae91aa9-2a3b-4d56-9098-d188e7abdb71', 31990000, 1, N'5ff2d24b-fe56-49b8-85a0-285d88d01170')
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Price], [Quantity], [OrderDetailId]) VALUES (N'34f36b79-a015-4e58-910a-7f1a760562b3', N'105dccc3-512e-4279-82cc-dc90b7b80aeb', 5840000, 1, N'6a3b89ec-aa79-4b15-a7e9-5fd7325982fe')
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Price], [Quantity], [OrderDetailId]) VALUES (N'3e81bc55-729f-411b-9c3e-f4fb791f55db', N'5ae91aa9-2a3b-4d56-9098-d188e7abdb71', 31990000, 1, N'8409092c-980d-40bc-83ae-93e46c09beb8')
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Price], [Quantity], [OrderDetailId]) VALUES (N'f29a20ba-cfd3-4d18-809f-8ed589a392f1', N'5ae91aa9-2a3b-4d56-9098-d188e7abdb71', 31990000, 1, N'bbaffef9-137b-4bb4-98ff-dd64663269e2')
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Price], [Quantity], [OrderDetailId]) VALUES (N'1a0fcea3-7c02-41a8-acaa-29feebaf3c6d', N'1c84766f-2d10-4f25-a127-9e91ddf3dcdf', 12990000, 1, N'f98a035b-52a2-455d-bf4e-e1e148cae1f2')
GO
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderTime], [CompleteTime], [Status], [Note]) VALUES (N'00dee1ec-231b-4f34-9655-39009703fedf', N'7302fa23-ec07-4701-88a9-19e10e2d5a97', CAST(N'2020-07-07T18:38:20.4167483' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, NULL)
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderTime], [CompleteTime], [Status], [Note]) VALUES (N'1a0fcea3-7c02-41a8-acaa-29feebaf3c6d', N'37767a6f-c785-41a3-bd07-e93608a32987', CAST(N'2020-07-07T19:48:56.9941931' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, N'Đơn hàng đã được chuyển đến đối tác giao hàng.')
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderTime], [CompleteTime], [Status], [Note]) VALUES (N'2823e88c-9d7a-465b-af32-7b1565199664', N'8f9576b8-a5a6-4542-91e5-25e35df962bb', CAST(N'2020-07-09T08:37:34.8005177' AS DateTime2), CAST(N'2020-07-09T08:40:32.8783337' AS DateTime2), 3, NULL)
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderTime], [CompleteTime], [Status], [Note]) VALUES (N'34f36b79-a015-4e58-910a-7f1a760562b3', N'a6339d89-85b8-4c9a-ad13-82ec5dd5ca31', CAST(N'2020-07-07T19:48:20.8502541' AS DateTime2), CAST(N'2020-07-08T22:12:42.1202371' AS DateTime2), 2, NULL)
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderTime], [CompleteTime], [Status], [Note]) VALUES (N'3e81bc55-729f-411b-9c3e-f4fb791f55db', N'fb935685-cdec-45a4-ae68-17dcf1439d4f', CAST(N'2020-07-09T08:37:29.4767447' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, NULL)
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderTime], [CompleteTime], [Status], [Note]) VALUES (N'57860eaa-cb68-49ba-a7b5-3436e60f5fb6', N'e5546ab2-c2e7-450a-8cf2-b10c4db78651', CAST(N'2020-07-07T19:58:40.5518061' AS DateTime2), CAST(N'2020-07-08T22:23:35.0570368' AS DateTime2), 3, NULL)
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderTime], [CompleteTime], [Status], [Note]) VALUES (N'f29a20ba-cfd3-4d18-809f-8ed589a392f1', N'1ca82314-194e-411b-abc2-15e054c35349', CAST(N'2020-07-09T08:36:30.8433857' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, NULL)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [BrandId], [Remain], [CategoryId], [Description], [Screen], [CPU], [OS], [RearCamera], [FrontCamera], [Ram], [Rom]) VALUES (N'105dccc3-512e-4279-82cc-dc90b7b80aeb', N'Galaxy A31', 5840000, 7, 5, 6, N'Galaxy A31 là mẫu smartphone tầm trung mới ra mắt đầu năm 2020 của Samsung. Thiết bị gây ấn tượng mạnh với ngoại hình thời trang, cụm 4 camera đa chức năng, vân tay dưới màn hình và viên pin khủng lên đến 5000 mAh.', N'Super AMOLED, 6.4", Full HD+', N'MediaTek MT6768 8 nhân (Helio P65)', N'Android 10', N'Chính 48 MP & Phụ 8 MP, 5 MP, 5 MP', N'20 MP', 6, 128)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [BrandId], [Remain], [CategoryId], [Description], [Screen], [CPU], [OS], [RearCamera], [FrontCamera], [Ram], [Rom]) VALUES (N'17360739-8aef-47ce-b714-bee0a7fe018b', N'MacBook Air 2017 i5 1.8GHz', 19490000, 8, 5, 8, N'MacBook Air 2017 i5 128GB là mẫu laptop văn phòng, có thiết kế siêu mỏng và nhẹ, vỏ nhôm nguyên khối sang trọng. Máy có hiệu năng ổn định, thời lượng pin cực lâu 12 giờ, phù hợp cho hầu hết các nhu cầu làm việc và giải trí.', N'13.3 inch, WXGA+(1440 x 900)', N'Intel Core i5 Broadwell, 1.80 GHz', N'Mac OS', NULL, NULL, 8, 128)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [BrandId], [Remain], [CategoryId], [Description], [Screen], [CPU], [OS], [RearCamera], [FrontCamera], [Ram], [Rom]) VALUES (N'1c84766f-2d10-4f25-a127-9e91ddf3dcdf', N'Galaxy S10 Lite', 12990000, 7, 2, 6, N'Samsung Galaxy S10 Lite là một phiên bản khác của dòng Galaxy S10 đã ra mắt trước đó nhưng mang trong mình khá nhiều khác biệt về ngoại hình cũng như bên trong.', N'Super AMOLED, 6.7", Full HD+', N'Snapdragon 855 8 nhân', N'Android 10', N'Chính 48 MP & Phụ 12 MP, 5 MP', N'32 MP', 8, 128)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [BrandId], [Remain], [CategoryId], [Description], [Screen], [CPU], [OS], [RearCamera], [FrontCamera], [Ram], [Rom]) VALUES (N'28c1d5f4-85e8-4cbd-aece-ac596579c426', N'Galaxy Tab S6', 18490000, 7, 6, 7, N'Samsung Galaxy Tab S6 là chiếc máy tính bảng 2 trong 1, được thiết kế để giúp cho những người cần một sản phẩm đủ gọn gàng nhưng mạnh mẽ.', N'Super AMOLED, 10.5"', N'Snapdragon 855 8 nhân, 1 nhân 2.84 GHz, 3 nhân 2.41 GHz & 4 nhân 1.78 GHz', N'Android 9.0 (Pie)', N'Chính 13 MP & Phụ 5 MP', N'8 MP', 6, 128)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [BrandId], [Remain], [CategoryId], [Description], [Screen], [CPU], [OS], [RearCamera], [FrontCamera], [Ram], [Rom]) VALUES (N'2e8f5c6a-326d-4c51-8b69-12cba1bec13b', N'Galaxy A11', 3320000, 7, 4, 6, N'Samsung Galaxy A11 với thiết kế màn hình Infinity-O siêu tràn viền, bộ ba camera ấn tượng, đi kèm với mức giá phải chăng hứa hẹn sẽ tạo nên cơn sốt trên thị trường điện thoại giá rẻ.', N'PLS TFT LCD, 6.4", HD+', N'Snapdragon 450 8 nhân', N'Android 10', N'Chính 13 MP & Phụ 5 MP, 2 MP', N'8 MP', 3, 32)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [BrandId], [Remain], [CategoryId], [Description], [Screen], [CPU], [OS], [RearCamera], [FrontCamera], [Ram], [Rom]) VALUES (N'4f7d7aad-2aa1-4233-93af-9d8e8dc0f431', N'iPhone 11 Pro', 32990000, 8, 4, 6, N'iPhone 11 Pro 256GB có lẽ sẽ là chiếc iPhone được nhiều người dùng lựa chọn khi nó sở hữu mức giá tốt hơn chiếc iPhone 11 Pro Max nhưng vẫn sở hữu tất cả những ưu điểm trên người anh em của mình.', N'OLED, 5.8", Super Retina XDR', N'Apple A13 Bionic 6 nhân', N'iOS 13', N'3 camera 12 MP', N'12 MP', 4, 256)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [BrandId], [Remain], [CategoryId], [Description], [Screen], [CPU], [OS], [RearCamera], [FrontCamera], [Ram], [Rom]) VALUES (N'5a27effd-59d9-4b62-b704-ffb270b0a7a8', N'iPad 10.2 inch Wifi (2019)', 11490000, 8, 4, 7, N'Muốn mua một chiếc máy tính bảng với hiệu năng ổn định, có thể dùng trong khoảng 2-3 năm tới với mức giá phải chăng thì không đi đâu xa, chiếc iPad 10.2 inch Wifi 128GB (2019) chính là sự lựa chọn dành cho bạn.', N'LED backlit LCD, 10.2"', N'Apple A10 Fusion 4 nhân, 2.34 GHz', N'iPadOS 13', N'8 MP', N'1.2 MP', 3, 128)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [BrandId], [Remain], [CategoryId], [Description], [Screen], [CPU], [OS], [RearCamera], [FrontCamera], [Ram], [Rom]) VALUES (N'5ae91aa9-2a3b-4d56-9098-d188e7abdb71', N'Pad Pro 12.9 inch Wifi Cellular (2020)', 31990000, 8, 6, 7, N'Sau bao ngày chờ đợi, chiếc máy tính bảng iPad Pro 12.9 inch Wifi Cellular 128GB (2020) đã được trình làng. Với thiết kế không mấy khác biệt so với người anh em iPad Pro 2018 nhưng được Apple nâng cấp hệ thống camera, cùng con chip A12Z giúp iPad Pro 12.9 (2020) mang đến hiệu năng ấn tượng cho người dùng những trải nghiệm tuyệt vời.', N'Liquid Retina, 12.9"', N'Apple A12Z Bionic, 4 nhân 2.5 GHz & 4 nhân 1.6 GHz', N'iPadOS 13', N'Chính 12 MP & Phụ 10 MP, TOF 3D LiDAR', N'7 MP', 6, 128)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [BrandId], [Remain], [CategoryId], [Description], [Screen], [CPU], [OS], [RearCamera], [FrontCamera], [Ram], [Rom]) VALUES (N'621648d5-022f-48f2-8ebf-f923f820c353', N'iPhone 11 Pro Max', 35490000, 8, 4, 6, N'iPhone 11 Pro Max 256GB là chiếc iPhone cao cấp nhất trong bộ 3 iPhone Apple giới thiệu trong năm 2019 và quả thực chiếc smartphone này mang trong mình nhiều trang bị xứng đáng với tên gọi "Pro".', N'OLED, 6.5", Super Retina XDR', N'Apple A13 Bionic 6 nhân', N'iOS 13', N'3 camera 12 MP', N'12 MP', 4, 256)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [BrandId], [Remain], [CategoryId], [Description], [Screen], [CPU], [OS], [RearCamera], [FrontCamera], [Ram], [Rom]) VALUES (N'64e1a946-2a24-43ec-b1dd-d05574b55e5e', N'MacBook Air 2020 i3 1.1GHz', 28990000, 8, 6, 8, N'MacBook Air 2020 i3 mới với thiết kế sang trọng, hiệu năng khá, bàn phím Magic lần đầu tiên xuất hiện trên dòng Macbook Air. Với nhiều tính năng hiện đại, đây là chiếc MacBook Air rất đáng sở hữu với mức giá gần như rẻ nhất từ trước đến nay. ', NULL, N'Intel Core i3 Thế hệ 10, 1.10 GHz', N'Mac OS', NULL, NULL, 8, 256)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [BrandId], [Remain], [CategoryId], [Description], [Screen], [CPU], [OS], [RearCamera], [FrontCamera], [Ram], [Rom]) VALUES (N'757474eb-1b32-4c2f-a273-f188caa75c81', N'Galaxy Note 10+', 19990000, 7, 3, 6, N'Trông ngoại hình khá giống nhau, tuy nhiên Samsung Galaxy Note 10+ sở hữu khá nhiều điểm khác biệt so với Galaxy Note 10 và đây được xem là một trong những chiếc máy đáng mua nhất trong năm 2019, đặc biệt dành cho những người thích một chiếc máy màn hình lớn, camera chất lượng hàng đầu.', N'Dynamic AMOLED, 6.8", Quad HD+ (2K+)', N'Exynos 9825 8 nhân', N'Android 9.0 (Pie)', N'Chính 12 MP & Phụ 12 MP, 16 MP, TOF 3D', N'10 MP', 12, 256)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [BrandId], [Remain], [CategoryId], [Description], [Screen], [CPU], [OS], [RearCamera], [FrontCamera], [Ram], [Rom]) VALUES (N'8ea167ef-a2df-44ab-bf0c-d33dbd4b9b98', N'iPad 10.2 inch Wifi Cellular (2019)', 12990000, 8, 2, 7, N'Nhắc tới máy tính bảng thì người ta sẽ nghĩ ngay tới iPad và vào những tháng cuối năm 2019 thì Apple giới thiệu chiếc máy tính bảng "giá rẻ" mang tên iPad 10.2 inch Wifi Cellular 32GB (2019), nhắm tới đối tượng người dùng là các bạn học sinh, sinh viên hay những người muốn một thiết bị màn hình lớn cho làm việc và giải trí.', N'LED backlit LCD, 10.2"', N'Apple A10 Fusion 4 nhân, 2.34 GHz', N'iOS 13', N'8 MP', N'1.2 MP', 3, 32)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [BrandId], [Remain], [CategoryId], [Description], [Screen], [CPU], [OS], [RearCamera], [FrontCamera], [Ram], [Rom]) VALUES (N'9fb35179-c21a-4e2f-b1c6-acdcfcc39955', N'VivoBook X509MA N4000 (BR061T)', 6990000, 13, 5, 8, N'Laptop Asus VivoBook X509MA là sản phẩm đến từ thương hiệu Asus nổi tiếng với thiết kế mỏng nhẹ, cấu hình tầm trung, SSD nhanh đáp ứng tốt các tác vụ cơ bản của đối tượng có nhu cầu văn phòng - học tập.', N'15.6 inch, HD (1366 x 768)', N'Intel Celeron, N4000, 1.10 GHz', N'Windows 10 Home SL', NULL, NULL, 4, 256)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [BrandId], [Remain], [CategoryId], [Description], [Screen], [CPU], [OS], [RearCamera], [FrontCamera], [Ram], [Rom]) VALUES (N'a640fca0-cd81-4191-8226-fd2bd56a0eb6', N'MacBook Air 2020 i5 1.1GHz', 30990000, 8, 4, 8, N'MacBook Air 2020 là phiên bản có nhiều nâng cấp vượt trội về cấu hình và thiết kế bàn phím, hứa hẹn đem tới trải nghiệm mượt mà, thoải mái hơn tới người dùng. Chiếc máy vẫn là lựa chọn số 1 dành cho các anh em văn phòng muốn sở hữu chiếc laptop mỏng nhẹ, mượt mà và pin lâu.', N'13.3 inch, Retina (2560 x 1600)', N'Intel Core i5 Thế hệ 10, 1.10 GHz', N'Mac OS', NULL, NULL, 8, 256)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [BrandId], [Remain], [CategoryId], [Description], [Screen], [CPU], [OS], [RearCamera], [FrontCamera], [Ram], [Rom]) VALUES (N'a7726495-c6fa-4671-9e2b-d6b9af24fcb7', N'Galaxy Fold', 50000000, 7, 3, 6, N'Sau rất nhiều chờ đợi thì Samsung Galaxy Fold - chiếc smartphone màn hình gập đầu tiên của Samsung cũng đã chính thức trình làng với thiết kế mới lạ.', N'Chính: Dynamic AMOLED, phụ: Super AMOLED, Chính 7.3" & Phụ 4.6", Quad HD (2K)', N'Snapdragon 855 8 nhân', N'Android 9.0 (Pie)', N'Chính 12 MP & Phụ 12 MP, 16 MP', N'Trong: 10 MP, 8 MP; Ngoài: 10 MP', 12, 512)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [BrandId], [Remain], [CategoryId], [Description], [Screen], [CPU], [OS], [RearCamera], [FrontCamera], [Ram], [Rom]) VALUES (N'af31249e-9fc3-4a2d-bf1f-1e2440961863', N'Galaxy A51', 7790000, 7, 4, 6, N'Galaxy A51 8GB là phiên bản nâng cấp RAM của smartphone tầm trung đình đám Galaxy A51 từ Samsung. Sản phẩm nổi bật với thiết kế sang trọng, màn hình Infinity-O cùng cụm 4 camera đột phá.', N'Super AMOLED, 6.5", Full HD+', N'Exynos 9611 8 nhân', N'Android 10', N'Chính 48 MP & Phụ 12 MP, 5 MP, 5 MP', N'32 MP', 8, 128)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [BrandId], [Remain], [CategoryId], [Description], [Screen], [CPU], [OS], [RearCamera], [FrontCamera], [Ram], [Rom]) VALUES (N'b2e6b177-be41-4b7c-a855-57eea545cc4d', N'Galaxy Tab A8 8" T295 (2019)', 3690000, 7, 3, 7, N'Samsung Galaxy Tab A8 8 inch T295 (2019) là một chiếc máy tính bảng gọn nhẹ, với màn hình vừa đủ có thể giúp bạn giải trí hay hỗ trợ trẻ nhỏ trong việc học tập.', N'TFT LCD, 8"', N'Snapdragon 429, 4 nhân 2.0 GHz', N'Android 9.0 (Pie)', N'8 MP', N'2 MP', 2, 32)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [BrandId], [Remain], [CategoryId], [Description], [Screen], [CPU], [OS], [RearCamera], [FrontCamera], [Ram], [Rom]) VALUES (N'b46ce9c4-609a-487b-9617-b1eafab88cca', N'MacBook Pro Touch 2020 i5 1.4GHz', 34990000, 8, 6, 8, N'MacBook Pro Touch 2020 i5 (MXK32SA/A) mang đến thiết kế siêu mỏng nhẹ và sang trọng với cấu hình mạnh mẽ bên trong, màn hình Retina tuyệt mỹ cùng bàn phím cắt kéo thế hệ mới đem đến trải nghiệm tuyệt vời cho người dùng.', N'13.3 inch, Retina (2560 x 1600)', N'Intel Core i5 Thế hệ 8, 1.40 GHz', N'Mac OS', NULL, NULL, 8, 256)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [BrandId], [Remain], [CategoryId], [Description], [Screen], [CPU], [OS], [RearCamera], [FrontCamera], [Ram], [Rom]) VALUES (N'd22b3b49-005f-4c9b-9262-0b98ea2f2611', N'iPhone 11', 20990000, 8, 6, 6, N'Sau bao nhiêu chờ đợi cũng như đồn đoán thì cuối cùng Apple đã chính thức giới thiệu bộ 3 siêu phẩm iPhone 11 mạnh mẽ nhất của mình vào tháng 9/2019. Có mức giá rẻ nhất nhưng vẫn được nâng cấp mạnh mẽ như chiếc iPhone Xr năm ngoái, đó chính là phiên bản iPhone 11 64GB.', N'IPS LCD, 6.1", Liquid Retina', N'Apple A13 Bionic 6 nhân', N'iOS 13', N'Chính 12 MP & Phụ 12 MP', N'12 MP', 4, 64)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [BrandId], [Remain], [CategoryId], [Description], [Screen], [CPU], [OS], [RearCamera], [FrontCamera], [Ram], [Rom]) VALUES (N'd3a0c90c-2582-40a3-b27a-922d0215d06c', N'VivoBook X509JP i5 1035G1 MX330 (EJ023T)', 17190000, 13, 6, 8, N'Asus VivoBook X509JP i5 (EJ023T) là chiếc laptop học tập - văn phòng mỏng nhẹ, cấu hình mạnh và ổn định cho nhu cầu làm việc, giải trí hằng ngày. Ngoài ra, máy cũng có khả năng đồ họa khá nhờ có card đồ họa rời. ', N'15.6 inch, Full HD (1920 x 1080)', N'Intel Core i5 Ice Lake, 1035G1, 1.00 GHz', N'Windows 10 Home SL', NULL, NULL, 8, 512)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [BrandId], [Remain], [CategoryId], [Description], [Screen], [CPU], [OS], [RearCamera], [FrontCamera], [Ram], [Rom]) VALUES (N'dda234a0-6fbd-494d-aba5-52cd5c25807b', N'OPPO A92', 6490000, 12, 5, 6, N'OPPO A92 là mẫu smartphone tầm trung vừa mới được OPPO ra mắt đầu tháng 5/2020. Chiếc điện thoại gây ấn tượng với thiết kế màn hình khoét lỗ tràn viền, cụm 4 camera ấn tượng và được bán với mức giá vô cùng phải chăng.', N'TFT LCD, 6.5", Full HD+', N'Snapdragon 665 8 nhân', N'Android 10', N'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', N'16 MP', 8, 128)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [BrandId], [Remain], [CategoryId], [Description], [Screen], [CPU], [OS], [RearCamera], [FrontCamera], [Ram], [Rom]) VALUES (N'e7811398-ddf7-4d42-8446-26ef421ce26f', N'iPhone 11 Pro Max', 39490000, 8, 4, 6, N'Để tìm kiếm một chiếc smartphone có hiệu năng mạnh mẽ và có thể sử dụng mượt mà trong 2-3 năm tới thì không có chiếc máy nào xứng đang hơn chiếc iPhone 11 Pro Max 512GB mới ra mắt trong năm 2019 của Apple.', N'OLED, 6.5", Super Retina XDR', N'Apple A13 Bionic 6 nhân', N'iOS 13', N'3 camera 12 MP', N'12 MP', 4, 512)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [BrandId], [Remain], [CategoryId], [Description], [Screen], [CPU], [OS], [RearCamera], [FrontCamera], [Ram], [Rom]) VALUES (N'ec7da3d8-d6d2-43bb-adbf-4545926949b2', N'VivoBook X409FA i3 8145U', 10290000, 13, 4, 8, N'Laptop Asus VivoBook X409FA i3 (EK468T) là mẫu máy tính xách tay học tập văn phòng cơ bản, có cấu hình đủ dùng cho nhu cầu học tập và giải trí thường ngày. Với thiết kế mỏng nhẹ, Asus VivoBook X409FA có thể đồng hành cùng bạn mọi lúc mọi nơi. ', N'14 inch, Full HD (1920 x 1080)', N'Intel Core i3 Coffee Lake, 8145U, 2.10 GHz', N'Windows 10 Home SL', NULL, NULL, 4, 256)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [BrandId], [Remain], [CategoryId], [Description], [Screen], [CPU], [OS], [RearCamera], [FrontCamera], [Ram], [Rom]) VALUES (N'ecb8e337-d0e8-4799-94a7-109b43935bc4', N'Galaxy Tab S6 Lite', 9990000, 7, 5, 7, N'Sau thành công của Galaxy Tab S6, Samsung tiếp tục ra mắt Galaxy Tab S6 Lite để chinh chiến ở phân khúc máy tính bảng giá rẻ hơn. Thiết bị vẫn hỗ trợ bút S Pen thần thánh, thiết kế kim loại cao cấp và màn hình, âm thanh giải trí đỉnh cao.', N'10.4"', N'Exynos 9611 8 nhân, 4 nhân 2.3 GHz & 4 nhân 1.7 GHz', N'Android 10', N'8 MP', N'5MP', 4, 64)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [BrandId], [Remain], [CategoryId], [Description], [Screen], [CPU], [OS], [RearCamera], [FrontCamera], [Ram], [Rom]) VALUES (N'ef52c85a-b00f-47b1-929b-b5bd9edfef77', N'VivoBook A512FA i3 8145U (EJ1868T)', 12790000, 13, 3, 8, N'Laptop Asus VivoBook A512FA (EJ1868T) là mẫu laptop học tập - văn phòng tầm trung. Với thiết kế gọn nhẹ và cấu hình vừa phải, Asus VivoBook A512FA sẽ là một người bạn đồng hành cùng với các bạn sinh viên, cũng như nhân viên văn phòng trong mọi hoạt động từ học tập, làm việc cho đến giải trí thường ngày.', N'15.6 inch, Full HD (1920 x 1080)', N'Intel Core i3 Coffee Lake, 8145U, 2.10 GHz', N'Windows 10 Home SL', NULL, NULL, 4, 512)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [BrandId], [Remain], [CategoryId], [Description], [Screen], [CPU], [OS], [RearCamera], [FrontCamera], [Ram], [Rom]) VALUES (N'f3a49a70-8633-4337-9820-1aa5d1563502', N'Galaxy A21s', 5120000, 7, 7, 6, N'Samsung Galaxy A21s là chiếc điện thoại tầm trung mới của Samsung, mang trong mình có thiết kế màn hình nốt ruồi thời thượng, cùng cụm 4 camera sau độ phân giải lên đến 48 MP hỗ trợ nhiều tính năng chụp ảnh hấp dẫn.', N'TFT LCD, 6.5", HD+', N'Android 10', N'Exynos 850 8 nhân', N'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', N'13 MP', 6, 64)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [BrandId], [Remain], [CategoryId], [Description], [Screen], [CPU], [OS], [RearCamera], [FrontCamera], [Ram], [Rom]) VALUES (N'f5c695ef-0c1d-44c4-a94c-9952b68a5ff2', N'Galaxy Tab A 10.1 T515 (2019)', 6790000, 7, 2, 7, N'Samsung Galaxy Tab A 10.1 T515 (2019) là chiếc máy tính bảng có màn hình lớn cùng cấu hình vừa phải đáp ứng tốt cho bạn trong hầu hết các nhu cầu giải trí hằng ngày.', N'TFT LCD, 10.1"', N'Exynos 7904 8 nhân, 2 nhân 1.8 GHz & 6 nhân 1.6 GHz', N'Android 9.0 (Pie)', N'8 MP', N'5 MP', 3, 32)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [BrandId], [Remain], [CategoryId], [Description], [Screen], [CPU], [OS], [RearCamera], [FrontCamera], [Ram], [Rom]) VALUES (N'f9b94064-b6a7-4dfe-8ef4-917d9beafc75', N'iPad 10.2 inch Wifi', 9490000, 8, 4, 7, N'Thiết kế sang trọng, màn hình đẹp và một cấu hình đủ dùng cho hầu hết nhu cầu là những ưu điểm mà chiếc máy tính bảng iPad 10.2 inch Wifi 32GB (2019) này sở hữu.', N'LED backlit LCD, 10.2"', N'Apple A10 Fusion 4 nhân, 2.34 GHz', N'iOS 13', N'8 MP', N'1.2 MP', 3, 32)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 12/07/2020 12:48:32 CH ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 12/07/2020 12:48:32 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 12/07/2020 12:48:32 CH ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 12/07/2020 12:48:32 CH ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 12/07/2020 12:48:32 CH ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 12/07/2020 12:48:32 CH ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 12/07/2020 12:48:32 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Customers_UserId]    Script Date: 12/07/2020 12:48:32 CH ******/
CREATE NONCLUSTERED INDEX [IX_Customers_UserId] ON [dbo].[Customers]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Images_ProductId]    Script Date: 12/07/2020 12:48:32 CH ******/
CREATE NONCLUSTERED INDEX [IX_Images_ProductId] ON [dbo].[Images]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OrderDetails_OrderId]    Script Date: 12/07/2020 12:48:32 CH ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_OrderId] ON [dbo].[OrderDetails]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OrderDetails_ProductId]    Script Date: 12/07/2020 12:48:32 CH ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_ProductId] ON [dbo].[OrderDetails]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Orders_CustomerId]    Script Date: 12/07/2020 12:48:32 CH ******/
CREATE NONCLUSTERED INDEX [IX_Orders_CustomerId] ON [dbo].[Orders]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_BrandId]    Script Date: 12/07/2020 12:48:32 CH ******/
CREATE NONCLUSTERED INDEX [IX_Products_BrandId] ON [dbo].[Products]
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 12/07/2020 12:48:32 CH ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT ((0)) FOR [Gender]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [Name]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  DEFAULT (N'') FOR [OrderDetailId]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Images]  WITH CHECK ADD  CONSTRAINT [FK_Images_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[Images] CHECK CONSTRAINT [FK_Images_Products_ProductId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([CustomerId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers_CustomerId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Brands_BrandId] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([BrandId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Brands_BrandId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
USE [master]
GO
ALTER DATABASE [thegioidienthoai] SET  READ_WRITE 
GO
