USE [KvalikAshmarin]
GO
/****** Object:  User [user01]    Script Date: 19.04.2025 16:06:30 ******/
CREATE USER [user01] FOR LOGIN [user01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 19.04.2025 16:06:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProduct] [int] NULL,
	[IdUser] [int] NULL,
	[IdOrder] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 19.04.2025 16:06:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 19.04.2025 16:06:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[Image] [varchar](50) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 19.04.2025 16:06:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 19.04.2025 16:06:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Login] [varchar](50) NULL,
	[Password] [nchar](10) NULL,
	[RoleId] [int] NULL,
	[Balance] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [IdProduct], [IdUser], [IdOrder]) VALUES (0, 2, 2, 1)
INSERT [dbo].[Order] ([Id], [IdProduct], [IdUser], [IdOrder]) VALUES (1, 1, 1, 1)
INSERT [dbo].[Order] ([Id], [IdProduct], [IdUser], [IdOrder]) VALUES (2, 2, 2, 1)
INSERT [dbo].[Order] ([Id], [IdProduct], [IdUser], [IdOrder]) VALUES (3, 3, 3, 2)
INSERT [dbo].[Order] ([Id], [IdProduct], [IdUser], [IdOrder]) VALUES (4, 4, 4, 3)
INSERT [dbo].[Order] ([Id], [IdProduct], [IdUser], [IdOrder]) VALUES (5, 5, 5, 2)
INSERT [dbo].[Order] ([Id], [IdProduct], [IdUser], [IdOrder]) VALUES (6, 6, 3, 1)
INSERT [dbo].[Order] ([Id], [IdProduct], [IdUser], [IdOrder]) VALUES (7, 7, 2, 3)
INSERT [dbo].[Order] ([Id], [IdProduct], [IdUser], [IdOrder]) VALUES (8, 8, 1, 4)
INSERT [dbo].[Order] ([Id], [IdProduct], [IdUser], [IdOrder]) VALUES (9, 9, 3, 2)
INSERT [dbo].[Order] ([Id], [IdProduct], [IdUser], [IdOrder]) VALUES (10, 10, 1, 2)
INSERT [dbo].[Order] ([Id], [IdProduct], [IdUser], [IdOrder]) VALUES (11, 2, 11, 1)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderStatus] ON 

INSERT [dbo].[OrderStatus] ([Id], [Name]) VALUES (1, N'В пути')
INSERT [dbo].[OrderStatus] ([Id], [Name]) VALUES (2, N'Готов в выдаче')
INSERT [dbo].[OrderStatus] ([Id], [Name]) VALUES (3, N'Выдан')
INSERT [dbo].[OrderStatus] ([Id], [Name]) VALUES (4, N'Оформлен')
SET IDENTITY_INSERT [dbo].[OrderStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [UpdateDate], [Image]) VALUES (1, N'Корм для собак', CAST(N'2024-01-02T01:01:00.000' AS DateTime), NULL)
INSERT [dbo].[Products] ([Id], [Name], [UpdateDate], [Image]) VALUES (2, N'Корм для кошек', CAST(N'2024-01-02T01:01:00.000' AS DateTime), NULL)
INSERT [dbo].[Products] ([Id], [Name], [UpdateDate], [Image]) VALUES (3, N'Корм для собак диетический ', CAST(N'2024-01-02T01:01:00.000' AS DateTime), NULL)
INSERT [dbo].[Products] ([Id], [Name], [UpdateDate], [Image]) VALUES (4, N'Корм для кошек диетический ', CAST(N'2024-01-02T01:01:00.000' AS DateTime), NULL)
INSERT [dbo].[Products] ([Id], [Name], [UpdateDate], [Image]) VALUES (5, N'Корм для кошек сильных', CAST(N'2024-01-02T01:01:00.000' AS DateTime), NULL)
INSERT [dbo].[Products] ([Id], [Name], [UpdateDate], [Image]) VALUES (6, N'Корм для собак сильных', CAST(N'2024-01-02T01:01:00.000' AS DateTime), NULL)
INSERT [dbo].[Products] ([Id], [Name], [UpdateDate], [Image]) VALUES (7, N'Корм для кошек повышенной мощности', CAST(N'2024-01-02T01:01:00.000' AS DateTime), NULL)
INSERT [dbo].[Products] ([Id], [Name], [UpdateDate], [Image]) VALUES (8, N'Корм для собак повешенной мощности', CAST(N'2024-01-02T01:01:00.000' AS DateTime), NULL)
INSERT [dbo].[Products] ([Id], [Name], [UpdateDate], [Image]) VALUES (9, N'Корм для собак дешеввый ', CAST(N'2024-01-02T01:01:00.000' AS DateTime), NULL)
INSERT [dbo].[Products] ([Id], [Name], [UpdateDate], [Image]) VALUES (10, N'Корм для кошек  деешевый', CAST(N'2024-01-02T01:01:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Name]) VALUES (1, N'Пользователь')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (2, N'Модератор')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (3, N'Администратор')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (4, N'Работник пункта выдачи')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (5, N'Работник магазина')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Name], [Login], [Password], [RoleId], [Balance]) VALUES (0, N'Антон', N'1', N'34        ', 1, NULL)
INSERT [dbo].[Users] ([Id], [Name], [Login], [Password], [RoleId], [Balance]) VALUES (1, N'Артем', N'1', N'2         ', 1, 1000)
INSERT [dbo].[Users] ([Id], [Name], [Login], [Password], [RoleId], [Balance]) VALUES (2, N'Матвей', N'2', N'2         ', 1, 2000)
INSERT [dbo].[Users] ([Id], [Name], [Login], [Password], [RoleId], [Balance]) VALUES (3, N'Игорь', N'1', N'3         ', 1, 3000)
INSERT [dbo].[Users] ([Id], [Name], [Login], [Password], [RoleId], [Balance]) VALUES (4, N'Никита', N'1', N'44        ', 4, 4000)
INSERT [dbo].[Users] ([Id], [Name], [Login], [Password], [RoleId], [Balance]) VALUES (5, N'Ангелина', N'2', N'5         ', 5, 0)
INSERT [dbo].[Users] ([Id], [Name], [Login], [Password], [RoleId], [Balance]) VALUES (6, N'Олег', N'3', N'6         ', 2, 0)
INSERT [dbo].[Users] ([Id], [Name], [Login], [Password], [RoleId], [Balance]) VALUES (7, N'Павел', N'7', N'7         ', 4, 0)
INSERT [dbo].[Users] ([Id], [Name], [Login], [Password], [RoleId], [Balance]) VALUES (8, N'Яна', N'8', N'8         ', 5, 0)
INSERT [dbo].[Users] ([Id], [Name], [Login], [Password], [RoleId], [Balance]) VALUES (9, N'Кристина', N'9', N'9         ', 3, 0)
INSERT [dbo].[Users] ([Id], [Name], [Login], [Password], [RoleId], [Balance]) VALUES (10, N'Виктория', N'10', N'10        ', 3, 0)
INSERT [dbo].[Users] ([Id], [Name], [Login], [Password], [RoleId], [Balance]) VALUES (11, N'Вова', N'543', N'5435      ', 1, NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrderStatus] FOREIGN KEY([IdOrder])
REFERENCES [dbo].[OrderStatus] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrderStatus]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Products] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Products]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Users] FOREIGN KEY([IdUser])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Role]
GO
