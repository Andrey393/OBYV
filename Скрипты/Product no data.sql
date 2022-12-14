USE [OOO Obyv]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 23.11.2022 19:09:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 23.11.2022 19:09:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[ManufacturerID] [int] NOT NULL,
	[ManufacturerName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED 
(
	[ManufacturerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 23.11.2022 19:09:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductArticle] [nvarchar](100) NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL,
	[ProductDecription] [nvarchar](100) NULL,
	[ProductPhoto] [nvarchar](100) NULL,
	[ProductDiscount] [float] NOT NULL,
	[ProductCost] [float] NOT NULL,
	[ProductManufactureID] [int] NOT NULL,
	[ProductProviderID] [int] NOT NULL,
	[ProductCategoryID] [int] NOT NULL,
	[ProductUnitID] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductArticle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provider]    Script Date: 23.11.2022 19:09:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provider](
	[ProviderID] [int] NOT NULL,
	[ProviderName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Provider] PRIMARY KEY CLUSTERED 
(
	[ProviderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 23.11.2022 19:09:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[UnitID] [int] NOT NULL,
	[UnitName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED 
(
	[UnitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([ProductCategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Manufacturer] FOREIGN KEY([ProductManufactureID])
REFERENCES [dbo].[Manufacturer] ([ManufacturerID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Manufacturer]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Provider] FOREIGN KEY([ProductProviderID])
REFERENCES [dbo].[Provider] ([ProviderID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Provider]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Unit] FOREIGN KEY([ProductUnitID])
REFERENCES [dbo].[Unit] ([UnitID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Unit]
GO
/****** Object:  Statistic [PK_Category]    Script Date: 23.11.2022 19:09:32 ******/
UPDATE STATISTICS [dbo].[Category]([PK_Category]) WITH STATS_STREAM = 0x0100000001000000000000000000000034C0C00B0000000040000000000000000000000000000000380300003800000004000A00000000000000000049020000, ROWCOUNT = 0, PAGECOUNT = 0
GO
/****** Object:  Statistic [PK_Manufacturer]    Script Date: 23.11.2022 19:09:32 ******/
UPDATE STATISTICS [dbo].[Manufacturer]([PK_Manufacturer]) WITH STATS_STREAM = 0x0100000001000000000000000000000056F616EF0000000040000000000000000000000000000000380361B93800000004000A00000000000000000000000000, ROWCOUNT = 0, PAGECOUNT = 0
GO
/****** Object:  Statistic [PK_Product]    Script Date: 23.11.2022 19:09:32 ******/
UPDATE STATISTICS [dbo].[Product]([PK_Product]) WITH STATS_STREAM = 0x0100000001000000000000000000000076AE85A60000000040000000000000000000000000000000E7030000E7000000C80000000000000015D0000049020000, ROWCOUNT = 0, PAGECOUNT = 0
GO
/****** Object:  Statistic [PK_Provider]    Script Date: 23.11.2022 19:09:32 ******/
UPDATE STATISTICS [dbo].[Provider]([PK_Provider]) WITH STATS_STREAM = 0x0100000001000000000000000000000056F616EF0000000040000000000000000000000000000000380361B93800000004000A00000000000000000000000000, ROWCOUNT = 0, PAGECOUNT = 0
GO
/****** Object:  Statistic [PK_Unit]    Script Date: 23.11.2022 19:09:32 ******/
UPDATE STATISTICS [dbo].[Unit]([PK_Unit]) WITH STATS_STREAM = 0x0100000001000000000000000000000034C0C00B0000000040000000000000000000000000000000380300003800000004000A00000000000000000049020000, ROWCOUNT = 0, PAGECOUNT = 0
GO
