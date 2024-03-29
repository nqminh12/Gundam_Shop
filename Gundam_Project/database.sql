USE [PRJ301_SP24]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 11/4/2023 10:23:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [varchar](50) NOT NULL,
	[description] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 11/4/2023 10:23:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[orderID] [int] NOT NULL,
	[product_id] [int] NULL,
	[quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 11/4/2023 10:23:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[orderID] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[date] [varchar](255) NULL,
	[address] [nvarchar](max) NULL,
	[phonenumber] [varchar](255) NULL,
	[totalmoney] [float] NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 11/4/2023 10:23:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [varchar](100) NOT NULL,
	[description] [text] NULL,
	[price] [decimal](10, 2) NOT NULL,
	[category_id] [int] NULL,
	[image_url] [varchar](255) NULL,
	[quantity_in_stock] [int] NOT NULL,
	[quantity_sold] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 11/4/2023 10:23:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[product_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[rating] [int] NULL,
	[comment] [nvarchar](255) NULL,
	[review_date] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC,
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/4/2023 10:23:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](255) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[full_name] [varchar](100) NULL,
	[phone_number] [varchar](20) NULL,
	[isAdmin] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([category_id], [category_name], [description]) VALUES (1, N'SD', N'Super Deformed')
INSERT [dbo].[Categories] ([category_id], [category_name], [description]) VALUES (2, N'HG', N'High Grade')
INSERT [dbo].[Categories] ([category_id], [category_name], [description]) VALUES (3, N'RG', N'Real Grade')
INSERT [dbo].[Categories] ([category_id], [category_name], [description]) VALUES (4, N'MG', N'Master Grade')
INSERT [dbo].[Categories] ([category_id], [category_name], [description]) VALUES (5, N'PG', N'Perfect Grade')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (1, 1, 1, 1)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (2, 1, 3, 1)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (3, 2, 1, 1)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (4, 3, 3, 1)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (5, 4, 6, 4)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (15, 5, 1, 1)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (17, 7, 6, 3)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (18, 8, 6, 5)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (19, 9, 9, 5)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (20, 9, 12, 5)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (22, 6, 3, 3)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (23, 10, 1, 5)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (24, 11, 1, 5)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (26, 12, 1, 1)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (27, 13, 1, 1)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (28, 13, 1, 1)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (29, 14, 4, 5)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (30, 14, 4, 5)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (31, 15, 1, 2)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (32, 16, 5, 1)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (33, 16, 6, 1)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (35, 17, 1, 1)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (36, 18, 3, 1)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (38, 19, 1, 1)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (39, 19, 6, 1)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (40, 19, 9, 1)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (41, 19, 5, 1)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (42, 20, 2, 1)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (43, 20, 5, 1)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (44, 21, 36, 1)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (45, 21, 17, 1)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (46, 22, 3, 1)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (47, 23, 5, 4)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (48, 24, 1, 1)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (49, 25, 1, 1)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (50, 25, 6, 1)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (51, 26, 1, 4)
INSERT [dbo].[OrderDetails] ([id], [orderID], [product_id], [quantity]) VALUES (52, 27, 1, 1)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([orderID], [user_id], [date], [address], [phonenumber], [totalmoney], [status]) VALUES (1, 2, N'28/10/2023', N'aaaa', N'222222', 39.98, 2)
INSERT [dbo].[Orders] ([orderID], [user_id], [date], [address], [phonenumber], [totalmoney], [status]) VALUES (2, 2, N'28/10/2023', N'hanam', N'098989777', 20.99, 2)
INSERT [dbo].[Orders] ([orderID], [user_id], [date], [address], [phonenumber], [totalmoney], [status]) VALUES (3, 2, N'28/10/2023', N'hanam', N'0943081570', 18.99, 2)
INSERT [dbo].[Orders] ([orderID], [user_id], [date], [address], [phonenumber], [totalmoney], [status]) VALUES (4, 2, N'28/10/2023', N'hanoi', N'1222121212', 670.96, 2)
INSERT [dbo].[Orders] ([orderID], [user_id], [date], [address], [phonenumber], [totalmoney], [status]) VALUES (5, 2, N'30/10/2023', N'hanamphulli', N'0943081570', 20.99, 2)
INSERT [dbo].[Orders] ([orderID], [user_id], [date], [address], [phonenumber], [totalmoney], [status]) VALUES (6, 2, N'30/10/2023', N'hanamphulli', N'0943081570', 56.97, 2)
INSERT [dbo].[Orders] ([orderID], [user_id], [date], [address], [phonenumber], [totalmoney], [status]) VALUES (7, 3, N'30/10/2023', N'hanamphulli', N'0943081570', 53.97, 2)
INSERT [dbo].[Orders] ([orderID], [user_id], [date], [address], [phonenumber], [totalmoney], [status]) VALUES (8, 3, N'30/10/2023', N'hanamphulli', N'0943081570', 89.95, 2)
INSERT [dbo].[Orders] ([orderID], [user_id], [date], [address], [phonenumber], [totalmoney], [status]) VALUES (9, 3, N'30/10/2023', N'hanamphuli', N'0943081570', 299.9, 2)
INSERT [dbo].[Orders] ([orderID], [user_id], [date], [address], [phonenumber], [totalmoney], [status]) VALUES (10, 2, N'30/10/2023', N'hanamphulli', N'0943081570', 150, 2)
INSERT [dbo].[Orders] ([orderID], [user_id], [date], [address], [phonenumber], [totalmoney], [status]) VALUES (11, 2, N'30/10/2023', N'hanamphulli', N'0943081570', 150, 2)
INSERT [dbo].[Orders] ([orderID], [user_id], [date], [address], [phonenumber], [totalmoney], [status]) VALUES (12, 2, N'31/10/2023', N'1111', N'1111', 30, 0)
INSERT [dbo].[Orders] ([orderID], [user_id], [date], [address], [phonenumber], [totalmoney], [status]) VALUES (13, 2, N'01/11/2023', N'saaaaaaaa', N'0943091570', 60, 0)
INSERT [dbo].[Orders] ([orderID], [user_id], [date], [address], [phonenumber], [totalmoney], [status]) VALUES (14, 2, N'01/11/2023', N'saaaaaaaa', N'sasasas', 169.9, 0)
INSERT [dbo].[Orders] ([orderID], [user_id], [date], [address], [phonenumber], [totalmoney], [status]) VALUES (15, 3, N'01/11/2023', N'hanamphulli', N'0943081570', 60, 0)
INSERT [dbo].[Orders] ([orderID], [user_id], [date], [address], [phonenumber], [totalmoney], [status]) VALUES (16, 27, N'01/11/2023', N'Hai Duong', N'0943081570', 37.98, 2)
INSERT [dbo].[Orders] ([orderID], [user_id], [date], [address], [phonenumber], [totalmoney], [status]) VALUES (17, 27, N'01/11/2023', N'hai duong', N'2222222', 30, 2)
INSERT [dbo].[Orders] ([orderID], [user_id], [date], [address], [phonenumber], [totalmoney], [status]) VALUES (18, 2, N'01/11/2023', N'haiduong', N'1234567890', 37.98, 0)
INSERT [dbo].[Orders] ([orderID], [user_id], [date], [address], [phonenumber], [totalmoney], [status]) VALUES (19, 24, N'01/11/2023', N'hanamphuli', N'1234567890', 97.97, 2)
INSERT [dbo].[Orders] ([orderID], [user_id], [date], [address], [phonenumber], [totalmoney], [status]) VALUES (20, 24, N'01/11/2023', N'haiduong', N'0943091570', 35.98, 2)
INSERT [dbo].[Orders] ([orderID], [user_id], [date], [address], [phonenumber], [totalmoney], [status]) VALUES (21, 24, N'01/11/2023', N'haiduong', N'0943081570', 949.99, 2)
INSERT [dbo].[Orders] ([orderID], [user_id], [date], [address], [phonenumber], [totalmoney], [status]) VALUES (22, 2, N'01/11/2023', N'hanamphulli', N'3333333333', 18.99, 0)
INSERT [dbo].[Orders] ([orderID], [user_id], [date], [address], [phonenumber], [totalmoney], [status]) VALUES (23, 28, N'01/11/2023', N'hanamphulli', N'0943081570', 79.96, 2)
INSERT [dbo].[Orders] ([orderID], [user_id], [date], [address], [phonenumber], [totalmoney], [status]) VALUES (24, 2, N'01/11/2023', N'hanamphulli', N'0943081570', 30, 0)
INSERT [dbo].[Orders] ([orderID], [user_id], [date], [address], [phonenumber], [totalmoney], [status]) VALUES (25, 2, N'01/11/2023', N'haiduong', N'0943091570', 47.99, 0)
INSERT [dbo].[Orders] ([orderID], [user_id], [date], [address], [phonenumber], [totalmoney], [status]) VALUES (26, 2, N'01/11/2023', N'hanamphulli', N'0943081570', 120, 2)
INSERT [dbo].[Orders] ([orderID], [user_id], [date], [address], [phonenumber], [totalmoney], [status]) VALUES (27, 2, N'01/11/2023', N'haiduong', N'0943081570', 30, 2)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([product_id], [product_name], [description], [price], [category_id], [image_url], [quantity_in_stock], [quantity_sold]) VALUES (1, N'SD Gundam Exia', N'SD Gundam Exia model kit', CAST(30.00 AS Decimal(10, 2)), 1, N'exia_sd.jpg', 49, 74)
INSERT [dbo].[Products] ([product_id], [product_name], [description], [price], [category_id], [image_url], [quantity_in_stock], [quantity_sold]) VALUES (2, N'SD Gundam Zaku II', N'SD Gundam Zaku II model kit', CAST(15.99 AS Decimal(10, 2)), 1, N'zaku_sd.jpg', 69, 51)
INSERT [dbo].[Products] ([product_id], [product_name], [description], [price], [category_id], [image_url], [quantity_in_stock], [quantity_sold]) VALUES (3, N'SD Sangoku Soketsuden', N'SD Sangoku Soketsuden model kit', CAST(18.99 AS Decimal(10, 2)), 1, N'sangoku_sd.jpg', 95, 55)
INSERT [dbo].[Products] ([product_id], [product_name], [description], [price], [category_id], [image_url], [quantity_in_stock], [quantity_sold]) VALUES (4, N'SD Gundam Deathscythe', N'SD Gundam Deathscythe model kit', CAST(16.99 AS Decimal(10, 2)), 1, N'deathscythe_sd.jpg', 110, 60)
INSERT [dbo].[Products] ([product_id], [product_name], [description], [price], [category_id], [image_url], [quantity_in_stock], [quantity_sold]) VALUES (5, N'SD XXXG-01W Wing Gundam', N'SD Wing Gundam model kit', CAST(19.99 AS Decimal(10, 2)), 1, N'wing_sd.jpg', 193, 57)
INSERT [dbo].[Products] ([product_id], [product_name], [description], [price], [category_id], [image_url], [quantity_in_stock], [quantity_sold]) VALUES (6, N'SD Gundam Sandrock ', N'SD Gundam Sandrock model kit', CAST(17.99 AS Decimal(10, 2)), 1, N'sandrock_sd.jpg', 242, 58)
INSERT [dbo].[Products] ([product_id], [product_name], [description], [price], [category_id], [image_url], [quantity_in_stock], [quantity_sold]) VALUES (7, N'SD XXXG-00W0 Wing Gundam Zero', N'SD Wing Zero Gundam model kit', CAST(16.99 AS Decimal(10, 2)), 1, N'wingzero_sd.jpg', 300, 50)
INSERT [dbo].[Products] ([product_id], [product_name], [description], [price], [category_id], [image_url], [quantity_in_stock], [quantity_sold]) VALUES (9, N'HG Gundam Dynames', N'HG Gundam Dynames model kit', CAST(29.99 AS Decimal(10, 2)), 2, N'dynames_hg.jpg', 74, 56)
INSERT [dbo].[Products] ([product_id], [product_name], [description], [price], [category_id], [image_url], [quantity_in_stock], [quantity_sold]) VALUES (10, N'HG Gundam Barbatos Lupus', N'HG Gundam Barbatos Lupus model kit', CAST(34.99 AS Decimal(10, 2)), 2, N'barbatos_lupus_hg.jpg', 60, 50)
INSERT [dbo].[Products] ([product_id], [product_name], [description], [price], [category_id], [image_url], [quantity_in_stock], [quantity_sold]) VALUES (11, N'HG Gundam Kimaris', N'HG Gundam Kimaris model kit', CAST(24.99 AS Decimal(10, 2)), 2, N'kimaris_hg.jpg', 70, 50)
INSERT [dbo].[Products] ([product_id], [product_name], [description], [price], [category_id], [image_url], [quantity_in_stock], [quantity_sold]) VALUES (12, N'HG Gundam Vidar', N'HG Gundam Vidar model kit', CAST(29.99 AS Decimal(10, 2)), 2, N'vidar_hg.jpg', 145, 75)
INSERT [dbo].[Products] ([product_id], [product_name], [description], [price], [category_id], [image_url], [quantity_in_stock], [quantity_sold]) VALUES (13, N'HG Gundam Bael', N'HG Gundam Bael model kit', CAST(24.99 AS Decimal(10, 2)), 2, N'bael_hg.jpg', 100, 70)
INSERT [dbo].[Products] ([product_id], [product_name], [description], [price], [category_id], [image_url], [quantity_in_stock], [quantity_sold]) VALUES (14, N'HG Gundam Virtue', N'HG Gundam Virtue model kit', CAST(24.99 AS Decimal(10, 2)), 2, N'virtue_hg.jpg', 220, 70)
INSERT [dbo].[Products] ([product_id], [product_name], [description], [price], [category_id], [image_url], [quantity_in_stock], [quantity_sold]) VALUES (15, N'HG Gundam Deathscythe Hell', N'HG Gundam Deathscythe Hell model kit', CAST(27.99 AS Decimal(10, 2)), 2, N'deathscythe_hell_hg.jpg', 260, 70)
INSERT [dbo].[Products] ([product_id], [product_name], [description], [price], [category_id], [image_url], [quantity_in_stock], [quantity_sold]) VALUES (16, N'HG Gundam Altron', N'HG Gundam Altron model kit', CAST(29.99 AS Decimal(10, 2)), 2, N'altron_hg.jpg', 200, 70)
INSERT [dbo].[Products] ([product_id], [product_name], [description], [price], [category_id], [image_url], [quantity_in_stock], [quantity_sold]) VALUES (17, N'RG Hi-Nu Gundam', N'RG Hi-Nu Gundam model kit', CAST(49.99 AS Decimal(10, 2)), 3, N'hinu_rg.jpg', 29, 71)
INSERT [dbo].[Products] ([product_id], [product_name], [description], [price], [category_id], [image_url], [quantity_in_stock], [quantity_sold]) VALUES (18, N'RG Sazabi Gundam', N'RG Sazabi Gundam model kit', CAST(39.99 AS Decimal(10, 2)), 3, N'sazabi_rg.jpg', 20, 100)
INSERT [dbo].[Products] ([product_id], [product_name], [description], [price], [category_id], [image_url], [quantity_in_stock], [quantity_sold]) VALUES (19, N'RG Nu Gundam', N'RG Nu Gundam Ver.Ka model kit', CAST(54.99 AS Decimal(10, 2)), 3, N'nu_rg.jpg', 15, 100)
INSERT [dbo].[Products] ([product_id], [product_name], [description], [price], [category_id], [image_url], [quantity_in_stock], [quantity_sold]) VALUES (20, N'RG Destiny Gundam', N'RG Destiny Gundam model kit', CAST(54.99 AS Decimal(10, 2)), 3, N'destiny_rg.jpg', 50, 100)
INSERT [dbo].[Products] ([product_id], [product_name], [description], [price], [category_id], [image_url], [quantity_in_stock], [quantity_sold]) VALUES (21, N'RG Strike Freedom Gundam', N'RG Strike Freedom Gundam model kit', CAST(59.99 AS Decimal(10, 2)), 3, N'strikefreedom_rg.jpg', 30, 100)
INSERT [dbo].[Products] ([product_id], [product_name], [description], [price], [category_id], [image_url], [quantity_in_stock], [quantity_sold]) VALUES (22, N'RG Force Impulse Gundam', N'RG Force Impulse Gundam model kit', CAST(49.99 AS Decimal(10, 2)), 3, N'impulse_rg.jpg', 40, 100)
INSERT [dbo].[Products] ([product_id], [product_name], [description], [price], [category_id], [image_url], [quantity_in_stock], [quantity_sold]) VALUES (23, N'MG Dynames Gundam', N'MG Dynames Gundam model kit', CAST(89.99 AS Decimal(10, 2)), 4, N'dynames_mg.jpg', 10, 100)
INSERT [dbo].[Products] ([product_id], [product_name], [description], [price], [category_id], [image_url], [quantity_in_stock], [quantity_sold]) VALUES (24, N'MG Freedom Gundam 2.0', N'MG Freedom Gundam 2.0 model kit', CAST(99.99 AS Decimal(10, 2)), 4, N'freedom_mg.jpg', 5, 100)
INSERT [dbo].[Products] ([product_id], [product_name], [description], [price], [category_id], [image_url], [quantity_in_stock], [quantity_sold]) VALUES (25, N'MG Sinanju Gundam', N'MG Sinanju Gundam model kit', CAST(149.99 AS Decimal(10, 2)), 4, N'sinanju_mg.jpg', 8, 100)
INSERT [dbo].[Products] ([product_id], [product_name], [description], [price], [category_id], [image_url], [quantity_in_stock], [quantity_sold]) VALUES (26, N'MG Tallgeese III', N'MG Tallgeese III model kit', CAST(149.99 AS Decimal(10, 2)), 4, N'tallgeese3_mg.jpg', 20, 100)
INSERT [dbo].[Products] ([product_id], [product_name], [description], [price], [category_id], [image_url], [quantity_in_stock], [quantity_sold]) VALUES (27, N'MG Gundam Astray Red Frame', N'MG Gundam Astray Red Frame model kit', CAST(139.99 AS Decimal(10, 2)), 4, N'astray_red_mg.jpg', 15, 100)
INSERT [dbo].[Products] ([product_id], [product_name], [description], [price], [category_id], [image_url], [quantity_in_stock], [quantity_sold]) VALUES (28, N'MG Gundam Exia', N'MG Gundam Exia model kit', CAST(169.99 AS Decimal(10, 2)), 4, N'exia_mg.jpg', 10, 100)
INSERT [dbo].[Products] ([product_id], [product_name], [description], [price], [category_id], [image_url], [quantity_in_stock], [quantity_sold]) VALUES (29, N'PG Unicorn Gundam', N'PG Unicorn Gundam model kit', CAST(299.99 AS Decimal(10, 2)), 5, N'unicorn_pg.jpg', 3, 390)
INSERT [dbo].[Products] ([product_id], [product_name], [description], [price], [category_id], [image_url], [quantity_in_stock], [quantity_sold]) VALUES (30, N'PG Strike Gundam', N'PG Strike Gundam model kit', CAST(349.99 AS Decimal(10, 2)), 5, N'strike_pg.jpg', 2, 290)
INSERT [dbo].[Products] ([product_id], [product_name], [description], [price], [category_id], [image_url], [quantity_in_stock], [quantity_sold]) VALUES (31, N'PG 00 Raiser', N'PG 00 Raiser model kit', CAST(399.99 AS Decimal(10, 2)), 5, N'00raiser_pg.jpg', 1, 400)
INSERT [dbo].[Products] ([product_id], [product_name], [description], [price], [category_id], [image_url], [quantity_in_stock], [quantity_sold]) VALUES (34, N'PG Astray Red 6 arms', N'PG Astray Red 6 arms model kit', CAST(599.00 AS Decimal(10, 2)), 5, N'IMG_0882.JPG', 1, 978)
INSERT [dbo].[Products] ([product_id], [product_name], [description], [price], [category_id], [image_url], [quantity_in_stock], [quantity_sold]) VALUES (36, N'Unicorn Gundam', N'PG Unicorn Gundam', CAST(900.00 AS Decimal(10, 2)), 5, N'PG_Unicorn.jpg', 28, 1)
INSERT [dbo].[Products] ([product_id], [product_name], [description], [price], [category_id], [image_url], [quantity_in_stock], [quantity_sold]) VALUES (37, N'shf kamen rider faiz', N'bandai shf kamen rider faiz', CAST(30.00 AS Decimal(10, 2)), 5, N'shf_kamen_rider_faiz.jpg', 18, 0)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[Reviews] ([product_id], [user_id], [rating], [comment], [review_date]) VALUES (1, 2, 44, N'không được bến', N'01/11/2023')
INSERT [dbo].[Reviews] ([product_id], [user_id], [rating], [comment], [review_date]) VALUES (1, 3, 40, N'rất đẹp lắm', N'01/11/2023')
INSERT [dbo].[Reviews] ([product_id], [user_id], [rating], [comment], [review_date]) VALUES (1, 24, 22, N'hơi bé!', N'01/11/2023')
INSERT [dbo].[Reviews] ([product_id], [user_id], [rating], [comment], [review_date]) VALUES (1, 27, 44, N'hộp hơi móp', N'01/11/2023')
INSERT [dbo].[Reviews] ([product_id], [user_id], [rating], [comment], [review_date]) VALUES (2, 24, 44, N'không được như mong đợi', N'01/11/2023')
INSERT [dbo].[Reviews] ([product_id], [user_id], [rating], [comment], [review_date]) VALUES (3, 2, 40, N'rất đẹp lắm', N'01/11/2023')
INSERT [dbo].[Reviews] ([product_id], [user_id], [rating], [comment], [review_date]) VALUES (5, 24, 55, N'ngon', N'01/11/2023')
INSERT [dbo].[Reviews] ([product_id], [user_id], [rating], [comment], [review_date]) VALUES (5, 27, 33, N'hoi be', N'01/11/2023')
INSERT [dbo].[Reviews] ([product_id], [user_id], [rating], [comment], [review_date]) VALUES (6, 3, 33, N'sanr pham hoi xau', N'01/11/2023')
INSERT [dbo].[Reviews] ([product_id], [user_id], [rating], [comment], [review_date]) VALUES (6, 24, 99, N'không có gì để chê!', N'01/11/2023')
INSERT [dbo].[Reviews] ([product_id], [user_id], [rating], [comment], [review_date]) VALUES (6, 27, 88, N'rất đẹp luôn', N'01/11/2023')
INSERT [dbo].[Reviews] ([product_id], [user_id], [rating], [comment], [review_date]) VALUES (9, 3, 30, N'ngon', N'01/11/2023')
INSERT [dbo].[Reviews] ([product_id], [user_id], [rating], [comment], [review_date]) VALUES (9, 24, 99, N'hàng đẹp lại rẻ nữa !', N'01/11/2023')
INSERT [dbo].[Reviews] ([product_id], [user_id], [rating], [comment], [review_date]) VALUES (12, 3, 55, N'ngon', N'01/11/2023')
INSERT [dbo].[Reviews] ([product_id], [user_id], [rating], [comment], [review_date]) VALUES (17, 24, 100, N'quá hoàn hảo!', N'01/11/2023')
INSERT [dbo].[Reviews] ([product_id], [user_id], [rating], [comment], [review_date]) VALUES (36, 24, 100, N'mặc dù hơi đặt nhưng rất đáng đồng tiền bát gạo', N'01/11/2023')
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([user_id], [username], [password], [email], [full_name], [phone_number], [isAdmin]) VALUES (1, N'nguyenvana', N'0000', N'nguyenvana@gmail.com', N'Nguyen Van A', N'0987654321', 1)
INSERT [dbo].[Users] ([user_id], [username], [password], [email], [full_name], [phone_number], [isAdmin]) VALUES (2, N'nguyenvanb', N'0000', N'nguyenvanb@gmail.com', N'Nguyen Van B', N'0987654322', 0)
INSERT [dbo].[Users] ([user_id], [username], [password], [email], [full_name], [phone_number], [isAdmin]) VALUES (3, N'nguyenvanc', N'0000', N'nguyenvanc@gmail.com', N'Nguyen Van C', N'0987654323', 0)
INSERT [dbo].[Users] ([user_id], [username], [password], [email], [full_name], [phone_number], [isAdmin]) VALUES (4, N'nguyenvand', N'123456', N'nguyenvand@gmail.com', N'Nguyen Van D', N'0987654324', 0)
INSERT [dbo].[Users] ([user_id], [username], [password], [email], [full_name], [phone_number], [isAdmin]) VALUES (5, N'nguyenvane', N'123456', N'nguyenvane@gmail.com', N'Nguyen Van E', N'0987654325', 0)
INSERT [dbo].[Users] ([user_id], [username], [password], [email], [full_name], [phone_number], [isAdmin]) VALUES (6, N'nguyenvanf', N'123456', N'nguyenvanf@gmail.com', N'Nguyen Van F', N'0987654326', 0)
INSERT [dbo].[Users] ([user_id], [username], [password], [email], [full_name], [phone_number], [isAdmin]) VALUES (7, N'nguyenvang', N'123456', N'nguyenvang@gmail.com', N'Nguyen Van G', N'0987654327', 0)
INSERT [dbo].[Users] ([user_id], [username], [password], [email], [full_name], [phone_number], [isAdmin]) VALUES (8, N'nguyenvanh', N'123456', N'nguyenvanh@gmail.com', N'Nguyen Van H', N'0987654328', 0)
INSERT [dbo].[Users] ([user_id], [username], [password], [email], [full_name], [phone_number], [isAdmin]) VALUES (12, N'nguyenvant', N'123456', N'nguyenvant@gmail.com', N'Nguyen Van T', N'0987654342', 0)
INSERT [dbo].[Users] ([user_id], [username], [password], [email], [full_name], [phone_number], [isAdmin]) VALUES (13, N'nguyenvanu', N'123456', N'nguyenvanu@gmail.com', N'Nguyen Van U', N'0987654343', 0)
INSERT [dbo].[Users] ([user_id], [username], [password], [email], [full_name], [phone_number], [isAdmin]) VALUES (16, N'nguyenvanx', N'123456', N'nguyenvanx@gmail.com', N'Nguyen Van X', N'0987654346', 0)
INSERT [dbo].[Users] ([user_id], [username], [password], [email], [full_name], [phone_number], [isAdmin]) VALUES (17, N'nguyenvany', N'123456', N'nguyenvany@gmail.com', N'Nguyen Van Y', N'0987654347', 0)
INSERT [dbo].[Users] ([user_id], [username], [password], [email], [full_name], [phone_number], [isAdmin]) VALUES (18, N'nguyenvanz', N'123456', N'nguyenvanz@gmail.com', N'Nguyen Van Z', N'0987654348', 0)
INSERT [dbo].[Users] ([user_id], [username], [password], [email], [full_name], [phone_number], [isAdmin]) VALUES (22, N'MingQuang', N'0000', N'minhnqhe176167@fpt.edu.vn', N'Nguyen Quang Minh', N'0943081570', 0)
INSERT [dbo].[Users] ([user_id], [username], [password], [email], [full_name], [phone_number], [isAdmin]) VALUES (24, N'min', N'0000', N'minhnqhe176167@fpt.edu.vn', N'Nguyen Quang Minh', N'0943081570', 0)
INSERT [dbo].[Users] ([user_id], [username], [password], [email], [full_name], [phone_number], [isAdmin]) VALUES (27, N'linh', N'0000', N'linhntdHE172208@fpt.edu.vn', N'Nguyen Thi Dieu Linh', N'0378468362', 0)
INSERT [dbo].[Users] ([user_id], [username], [password], [email], [full_name], [phone_number], [isAdmin]) VALUES (28, N'Mings', N'0000', N'minhnqhe176167@fpt.edu.vn', N'Nguyen Quang Minh', N'0943081570', 0)
INSERT [dbo].[Users] ([user_id], [username], [password], [email], [full_name], [phone_number], [isAdmin]) VALUES (29, N'nguyenvani', N'123456', N'nguyenvani@gmail.com', N'Nguyen Van I', N'0987654329', 0)
INSERT [dbo].[Users] ([user_id], [username], [password], [email], [full_name], [phone_number], [isAdmin]) VALUES (30, N'nguyenvanj', N'123456', N'nguyenvanj@gmail.com', N'Nguyen Van J', N'0987654330', 0)
INSERT [dbo].[Users] ([user_id], [username], [password], [email], [full_name], [phone_number], [isAdmin]) VALUES (31, N'nguyenvanw', N'123456', N'nguyenvanw@gmail.com', N'Nguyen Van W', N'0987654345', 0)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([orderID])
REFERENCES [dbo].[Orders] ([orderID])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([product_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[Categories] ([category_id])
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([product_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
ON DELETE CASCADE
GO
