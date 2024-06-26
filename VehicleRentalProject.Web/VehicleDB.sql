USE [master]
GO
/****** Object:  Database [VehicleDB]    Script Date: 10/06/2024 19:31:57 PM ******/
CREATE DATABASE [VehicleDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VehicleDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\VehicleDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'VehicleDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\VehicleDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [VehicleDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VehicleDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VehicleDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VehicleDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VehicleDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VehicleDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VehicleDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [VehicleDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [VehicleDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VehicleDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VehicleDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VehicleDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VehicleDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VehicleDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VehicleDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VehicleDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VehicleDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [VehicleDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VehicleDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VehicleDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VehicleDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VehicleDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VehicleDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [VehicleDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VehicleDB] SET RECOVERY FULL 
GO
ALTER DATABASE [VehicleDB] SET  MULTI_USER 
GO
ALTER DATABASE [VehicleDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VehicleDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [VehicleDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [VehicleDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [VehicleDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [VehicleDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'VehicleDB', N'ON'
GO
ALTER DATABASE [VehicleDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [VehicleDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [VehicleDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10/06/2024 19:31:58 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 10/06/2024 19:31:58 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/06/2024 19:31:58 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/06/2024 19:31:58 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/06/2024 19:31:58 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/06/2024 19:31:58 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/06/2024 19:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
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
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 10/06/2024 19:31:58 PM ******/
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
/****** Object:  Table [dbo].[Carts]    Script Date: 10/06/2024 19:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VehicleId] [int] NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NULL,
	[TotalDuration] [int] NOT NULL,
	[ApplicationUserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Carts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 10/06/2024 19:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderHeaderId] [int] NOT NULL,
	[VehicleId] [int] NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NULL,
	[rentalTotal] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderHeaders]    Script Date: 10/06/2024 19:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderHeaders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationUserId] [nvarchar](450) NOT NULL,
	[DateOfOrder] [datetime2](7) NOT NULL,
	[DateOfRent] [datetime2](7) NOT NULL,
	[OrderTotal] [decimal](18, 2) NOT NULL,
	[OrderStatus] [nvarchar](max) NULL,
	[PaymentStatus] [nvarchar](max) NULL,
	[SessionId] [nvarchar](max) NULL,
	[PaymentIntentId] [nvarchar](max) NULL,
	[DateofPayment] [datetime2](7) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[FullName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_OrderHeaders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rental]    Script Date: 10/06/2024 19:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rental](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[ReturnDate] [datetime2](7) NULL,
	[TotalPrice] [int] NOT NULL,
	[IsPaid] [bit] NOT NULL,
	[VehicleId] [int] NOT NULL,
	[ApplicationUserId] [nvarchar](450) NOT NULL,
	[RentalStatus] [int] NOT NULL,
	[PaymentIntentId] [nvarchar](max) NULL,
	[SessionId] [nvarchar](max) NULL,
 CONSTRAINT [PK_Rental] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserDetails]    Script Date: 10/06/2024 19:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
	[DrivingLicense] [nvarchar](max) NOT NULL,
	[PhotoProfId] [nvarchar](max) NOT NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_UserDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicles]    Script Date: 10/06/2024 19:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VehicleName] [nvarchar](max) NOT NULL,
	[VehicleType] [nvarchar](max) NOT NULL,
	[VehicleModel] [nvarchar](max) NOT NULL,
	[VehicleNumber] [nvarchar](max) NOT NULL,
	[VehicleColor] [nvarchar](max) NOT NULL,
	[VehicleDescription] [nvarchar](max) NOT NULL,
	[VehicleImage] [nvarchar](max) NOT NULL,
	[VehiclePrice] [decimal](18, 2) NOT NULL,
	[IsAvailable] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[DailyRate] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Vehicles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230507120619_Initial', N'7.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230514015549_AddUserLogins', N'7.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230516132029_UpdateVehicle', N'7.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230525083722_ChnageIdentity', N'7.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230603022527_UpdateVehicleRental', N'7.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230610082919_AddRepository', N'7.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230611062747_AddSession', N'7.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230611165716_AddCart', N'7.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230625124730_UpdateDatabase', N'7.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230625133546_UpdateOrderDetail', N'7.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230803035054_UpdateUserDetail', N'7.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230821111434_AddPhoneNumber', N'7.0.10')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'7f542afd-227c-4728-96ce-17b8766884cb', N'Admin', N'ADMIN', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'c5961e2a-eb37-40fc-9530-df42db508cf7', N'Customer', N'CUSTOMER', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7d4a8ee3-ce45-440e-b4a8-68098ee7ec30', N'7f542afd-227c-4728-96ce-17b8766884cb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'26cbe45f-28e4-4606-b736-c00bf5140d23', N'c5961e2a-eb37-40fc-9530-df42db508cf7')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [Address], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'26cbe45f-28e4-4606-b736-c00bf5140d23', N'Moises ', N'san miguel', N'moises@gmail.com', N'MOISES@GMAIL.COM', N'moises@gmail.com', N'MOISES@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEDJSNJnR3Qpjvs0KHsGx89HE+SJ2QujYlIUYy+Oc7VhH4FBjSVX5scumg75nALukig==', N'7GMNJHGLOHH7NTA36GH54XHUL2MWBWXQ', N'54354d1d-3628-442b-af7b-75200b6c290c', N'51518151515', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [Address], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7d4a8ee3-ce45-440e-b4a8-68098ee7ec30', NULL, NULL, N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEBNj5jp6nK4i8wuZOeyN1B5NY5RJpeDN+I5QQZ4ieYyKuBAWQfhlSF8hCagdZ8tMTA==', N'PMXU2IYLHNJK252IPMEE5TQ7VP5R6S5W', N'fba1c176-5d37-436b-be92-13a3adafdf14', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[OrderHeaders] ON 

INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [DateOfOrder], [DateOfRent], [OrderTotal], [OrderStatus], [PaymentStatus], [SessionId], [PaymentIntentId], [DateofPayment], [Address], [FullName]) VALUES (1, N'26cbe45f-28e4-4606-b736-c00bf5140d23', CAST(N'2024-06-10T17:14:10.0507661' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(0.00 AS Decimal(18, 2)), N'Pending', N'Pending', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'san miguel', N'Moises ')
SET IDENTITY_INSERT [dbo].[OrderHeaders] OFF
GO
SET IDENTITY_INSERT [dbo].[Vehicles] ON 

INSERT [dbo].[Vehicles] ([Id], [VehicleName], [VehicleType], [VehicleModel], [VehicleNumber], [VehicleColor], [VehicleDescription], [VehicleImage], [VehiclePrice], [IsAvailable], [IsDeleted], [CreatedAt], [UpdatedAt], [DailyRate]) VALUES (1, N'Toyota Corolla', N'Sedán', N'2020', N'ABC123', N'Rojo', N'Un sedán cómodo con excelente eficiencia de combustible', N'upload\7bf85112-5e5d-4983-af05-aa4a965a0a3c.jpg', CAST(20000.00 AS Decimal(18, 2)), 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2024-06-10T23:26:28.1235325' AS DateTime2), CAST(50.00 AS Decimal(18, 2)))
INSERT [dbo].[Vehicles] ([Id], [VehicleName], [VehicleType], [VehicleModel], [VehicleNumber], [VehicleColor], [VehicleDescription], [VehicleImage], [VehiclePrice], [IsAvailable], [IsDeleted], [CreatedAt], [UpdatedAt], [DailyRate]) VALUES (2, N'Honda Civic', N'Sedán', N'2019', N'DEF456', N'Azul', N'Un sedán confiable con características modernas', N'upload\659b37a1-fa73-48c6-80a7-fb93c470ea8d.jpeg', CAST(22000.00 AS Decimal(18, 2)), 1, 0, CAST(N'2022-02-01T00:00:00.0000000' AS DateTime2), CAST(N'2024-06-10T18:08:19.1260353' AS DateTime2), CAST(55.00 AS Decimal(18, 2)))
INSERT [dbo].[Vehicles] ([Id], [VehicleName], [VehicleType], [VehicleModel], [VehicleNumber], [VehicleColor], [VehicleDescription], [VehicleImage], [VehiclePrice], [IsAvailable], [IsDeleted], [CreatedAt], [UpdatedAt], [DailyRate]) VALUES (3, N'Ford Mustang', N'Coupé', N'2021', N'GHI789', N'Negro', N'Un coupé potente con un diseño elegante', N'upload\560d91ab-c34d-41d9-bf0c-12ac6767a689.jpeg', CAST(35000.00 AS Decimal(18, 2)), 1, 0, CAST(N'2022-03-01T00:00:00.0000000' AS DateTime2), CAST(N'2024-06-10T18:08:46.0352696' AS DateTime2), CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[Vehicles] ([Id], [VehicleName], [VehicleType], [VehicleModel], [VehicleNumber], [VehicleColor], [VehicleDescription], [VehicleImage], [VehiclePrice], [IsAvailable], [IsDeleted], [CreatedAt], [UpdatedAt], [DailyRate]) VALUES (4, N'Chevrolet Tahoe', N'SUV', N'2020', N'JKL012', N'Blanco', N'Un SUV espacioso con gran capacidad todoterreno', N'upload\4e58dba3-9513-4f9b-bdf0-026cd47b09c9.jpeg', CAST(40000.00 AS Decimal(18, 2)), 1, 0, CAST(N'2022-04-01T00:00:00.0000000' AS DateTime2), CAST(N'2024-06-10T18:09:17.2562468' AS DateTime2), CAST(80.00 AS Decimal(18, 2)))
INSERT [dbo].[Vehicles] ([Id], [VehicleName], [VehicleType], [VehicleModel], [VehicleNumber], [VehicleColor], [VehicleDescription], [VehicleImage], [VehiclePrice], [IsAvailable], [IsDeleted], [CreatedAt], [UpdatedAt], [DailyRate]) VALUES (5, N'Tesla Model 3', N'Sedán', N'2021', N'MNO345', N'Plateado', N'Un sedán eléctrico con tecnología de vanguardia', N'upload\b2c40851-982b-4515-b66a-c5749563a853.jpg', CAST(45000.00 AS Decimal(18, 2)), 1, 0, CAST(N'2022-05-01T00:00:00.0000000' AS DateTime2), CAST(N'2024-06-10T18:09:56.1213276' AS DateTime2), CAST(120.00 AS Decimal(18, 2)))
INSERT [dbo].[Vehicles] ([Id], [VehicleName], [VehicleType], [VehicleModel], [VehicleNumber], [VehicleColor], [VehicleDescription], [VehicleImage], [VehiclePrice], [IsAvailable], [IsDeleted], [CreatedAt], [UpdatedAt], [DailyRate]) VALUES (6, N'BMW X5', N'SUV', N'2019', N'PQR678', N'Gris', N'Un SUV de lujo con excelente rendimiento', N'upload\9e1ed936-e995-463b-becb-3f0df011e3a9.jpeg', CAST(60000.00 AS Decimal(18, 2)), 1, 0, CAST(N'2022-06-01T00:00:00.0000000' AS DateTime2), CAST(N'2024-06-10T18:10:56.9161835' AS DateTime2), CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Vehicles] ([Id], [VehicleName], [VehicleType], [VehicleModel], [VehicleNumber], [VehicleColor], [VehicleDescription], [VehicleImage], [VehiclePrice], [IsAvailable], [IsDeleted], [CreatedAt], [UpdatedAt], [DailyRate]) VALUES (7, N'Audi A4', N'Sedán', N'2020', N'STU901', N'Verde', N'Un sedán elegante con características avanzadas', N'upload\2a47c523-947a-4f38-8e5e-b1146c5d75bc.jpg', CAST(35000.00 AS Decimal(18, 2)), 1, 0, CAST(N'2022-07-01T00:00:00.0000000' AS DateTime2), CAST(N'2024-06-10T18:11:43.6919956' AS DateTime2), CAST(90.00 AS Decimal(18, 2)))
INSERT [dbo].[Vehicles] ([Id], [VehicleName], [VehicleType], [VehicleModel], [VehicleNumber], [VehicleColor], [VehicleDescription], [VehicleImage], [VehiclePrice], [IsAvailable], [IsDeleted], [CreatedAt], [UpdatedAt], [DailyRate]) VALUES (8, N'Jeep Wrangler', N'SUV', N'2021', N'VWX234', N'Amarillo', N'Un SUV robusto perfecto para aventuras todoterreno', N'upload\2d64ef95-3633-43af-a47d-533c6cc809b0.jpeg', CAST(38000.00 AS Decimal(18, 2)), 1, 0, CAST(N'2022-08-01T00:00:00.0000000' AS DateTime2), CAST(N'2024-06-10T18:12:48.9218342' AS DateTime2), CAST(110.00 AS Decimal(18, 2)))
INSERT [dbo].[Vehicles] ([Id], [VehicleName], [VehicleType], [VehicleModel], [VehicleNumber], [VehicleColor], [VehicleDescription], [VehicleImage], [VehiclePrice], [IsAvailable], [IsDeleted], [CreatedAt], [UpdatedAt], [DailyRate]) VALUES (9, N'Mercedes-Benz Clase C', N'Sedán', N'2019', N'YZA567', N'Azul', N'Un sedán de lujo con comodidad y rendimiento de primera', N'upload\c404988a-0c5e-46b7-9b52-a49527072305.jpg', CAST(42000.00 AS Decimal(18, 2)), 1, 0, CAST(N'2022-09-01T00:00:00.0000000' AS DateTime2), CAST(N'2024-06-10T18:13:25.3449581' AS DateTime2), CAST(130.00 AS Decimal(18, 2)))
INSERT [dbo].[Vehicles] ([Id], [VehicleName], [VehicleType], [VehicleModel], [VehicleNumber], [VehicleColor], [VehicleDescription], [VehicleImage], [VehiclePrice], [IsAvailable], [IsDeleted], [CreatedAt], [UpdatedAt], [DailyRate]) VALUES (10, N'Hyundai Tucson', N'SUV', N'2020', N'BCD890', N'Rojo', N'Un SUV compacto con comodidades modernas', N'upload\6b5e00f8-5b03-4f1a-b9df-5050a1befc2b.jpg', CAST(30000.00 AS Decimal(18, 2)), 1, 0, CAST(N'2022-10-01T00:00:00.0000000' AS DateTime2), CAST(N'2024-06-10T18:14:00.9777103' AS DateTime2), CAST(70.00 AS Decimal(18, 2)))
INSERT [dbo].[Vehicles] ([Id], [VehicleName], [VehicleType], [VehicleModel], [VehicleNumber], [VehicleColor], [VehicleDescription], [VehicleImage], [VehiclePrice], [IsAvailable], [IsDeleted], [CreatedAt], [UpdatedAt], [DailyRate]) VALUES (11, N'Nissan Altima', N'Sedán', N'2018', N'EFG123', N'Negro', N'Un sedán mediano con gran economía de combustible', N'image11.jpg', CAST(18000.00 AS Decimal(18, 2)), 1, 0, CAST(N'2022-11-01T00:00:00.0000000' AS DateTime2), NULL, CAST(45.00 AS Decimal(18, 2)))
INSERT [dbo].[Vehicles] ([Id], [VehicleName], [VehicleType], [VehicleModel], [VehicleNumber], [VehicleColor], [VehicleDescription], [VehicleImage], [VehiclePrice], [IsAvailable], [IsDeleted], [CreatedAt], [UpdatedAt], [DailyRate]) VALUES (12, N'Kia Sportage', N'SUV', N'2021', N'HIJ456', N'Blanco', N'Un pequeño SUV con un interior cómodo', N'image12.jpg', CAST(25000.00 AS Decimal(18, 2)), 1, 0, CAST(N'2022-12-01T00:00:00.0000000' AS DateTime2), NULL, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[Vehicles] ([Id], [VehicleName], [VehicleType], [VehicleModel], [VehicleNumber], [VehicleColor], [VehicleDescription], [VehicleImage], [VehiclePrice], [IsAvailable], [IsDeleted], [CreatedAt], [UpdatedAt], [DailyRate]) VALUES (13, N'Mazda CX-5', N'SUV', N'2019', N'KLM789', N'Plateado', N'Un SUV compacto con manejo deportivo', N'image13.jpg', CAST(28000.00 AS Decimal(18, 2)), 1, 0, CAST(N'2023-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(75.00 AS Decimal(18, 2)))
INSERT [dbo].[Vehicles] ([Id], [VehicleName], [VehicleType], [VehicleModel], [VehicleNumber], [VehicleColor], [VehicleDescription], [VehicleImage], [VehiclePrice], [IsAvailable], [IsDeleted], [CreatedAt], [UpdatedAt], [DailyRate]) VALUES (14, N'Volkswagen Jetta', N'Sedán', N'2020', N'NOP012', N'Gris', N'Un sedán compacto con un viaje suave', N'image14.jpg', CAST(22000.00 AS Decimal(18, 2)), 1, 0, CAST(N'2023-02-01T00:00:00.0000000' AS DateTime2), NULL, CAST(50.00 AS Decimal(18, 2)))
INSERT [dbo].[Vehicles] ([Id], [VehicleName], [VehicleType], [VehicleModel], [VehicleNumber], [VehicleColor], [VehicleDescription], [VehicleImage], [VehiclePrice], [IsAvailable], [IsDeleted], [CreatedAt], [UpdatedAt], [DailyRate]) VALUES (15, N'Subaru Outback', N'SUV', N'2021', N'QRS345', N'Verde', N'Un SUV versátil con excelentes características de seguridad', N'image15.jpg', CAST(32000.00 AS Decimal(18, 2)), 1, 0, CAST(N'2023-03-01T00:00:00.0000000' AS DateTime2), NULL, CAST(85.00 AS Decimal(18, 2)))
INSERT [dbo].[Vehicles] ([Id], [VehicleName], [VehicleType], [VehicleModel], [VehicleNumber], [VehicleColor], [VehicleDescription], [VehicleImage], [VehiclePrice], [IsAvailable], [IsDeleted], [CreatedAt], [UpdatedAt], [DailyRate]) VALUES (16, N'toyota', N'sedan', N'dddd', N'434343', N'rojo', N'sedan pequeño', N'upload\e66d8810-0329-482b-918d-21e6e804a4fc.jpg', CAST(2000.00 AS Decimal(18, 2)), 1, 0, CAST(N'2024-06-11T00:38:42.0342430' AS DateTime2), CAST(N'2024-06-11T00:38:42.0342436' AS DateTime2), CAST(55.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Vehicles] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 10/06/2024 19:31:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 10/06/2024 19:31:58 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 10/06/2024 19:31:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 10/06/2024 19:31:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 10/06/2024 19:31:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 10/06/2024 19:31:58 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 10/06/2024 19:31:58 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Carts_ApplicationUserId]    Script Date: 10/06/2024 19:31:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_Carts_ApplicationUserId] ON [dbo].[Carts]
(
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Carts_VehicleId]    Script Date: 10/06/2024 19:31:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_Carts_VehicleId] ON [dbo].[Carts]
(
	[VehicleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_OrderHeaderId]    Script Date: 10/06/2024 19:31:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_OrderHeaderId] ON [dbo].[OrderDetails]
(
	[OrderHeaderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_VehicleId]    Script Date: 10/06/2024 19:31:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_VehicleId] ON [dbo].[OrderDetails]
(
	[VehicleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OrderHeaders_ApplicationUserId]    Script Date: 10/06/2024 19:31:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderHeaders_ApplicationUserId] ON [dbo].[OrderHeaders]
(
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Rental_ApplicationUserId]    Script Date: 10/06/2024 19:31:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_Rental_ApplicationUserId] ON [dbo].[Rental]
(
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Rental_VehicleId]    Script Date: 10/06/2024 19:31:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_Rental_VehicleId] ON [dbo].[Rental]
(
	[VehicleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  DEFAULT ((0.0)) FOR [rentalTotal]
GO
ALTER TABLE [dbo].[Rental] ADD  DEFAULT ((0)) FOR [RentalStatus]
GO
ALTER TABLE [dbo].[Vehicles] ADD  DEFAULT ((0.0)) FOR [DailyRate]
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
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_Vehicles_VehicleId] FOREIGN KEY([VehicleId])
REFERENCES [dbo].[Vehicles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_Vehicles_VehicleId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_OrderHeaders_OrderHeaderId] FOREIGN KEY([OrderHeaderId])
REFERENCES [dbo].[OrderHeaders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_OrderHeaders_OrderHeaderId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Vehicles_VehicleId] FOREIGN KEY([VehicleId])
REFERENCES [dbo].[Vehicles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Vehicles_VehicleId]
GO
ALTER TABLE [dbo].[OrderHeaders]  WITH CHECK ADD  CONSTRAINT [FK_OrderHeaders_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderHeaders] CHECK CONSTRAINT [FK_OrderHeaders_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[Rental]  WITH CHECK ADD  CONSTRAINT [FK_Rental_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Rental] CHECK CONSTRAINT [FK_Rental_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[Rental]  WITH CHECK ADD  CONSTRAINT [FK_Rental_Vehicles_VehicleId] FOREIGN KEY([VehicleId])
REFERENCES [dbo].[Vehicles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Rental] CHECK CONSTRAINT [FK_Rental_Vehicles_VehicleId]
GO
USE [master]
GO
ALTER DATABASE [VehicleDB] SET  READ_WRITE 
GO
