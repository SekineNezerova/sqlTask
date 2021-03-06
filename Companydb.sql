USE [Companydb]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 4/13/2022 1:07:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](200) NULL,
	[EmpCount] [int] NULL,
	[DirectorId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Directors]    Script Date: 4/13/2022 1:07:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Directors](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Surname] [nvarchar](200) NULL,
	[Position] [nvarchar](200) NULL,
	[Salary] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 4/13/2022 1:07:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Surname] [nvarchar](200) NULL,
	[Position] [nvarchar](100) NULL,
	[Salary] [int] NULL,
	[DepartmentId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Departments] ([Id], [Name], [EmpCount], [DirectorId]) VALUES (1, N'kadrlar', 50, 1)
INSERT [dbo].[Departments] ([Id], [Name], [EmpCount], [DirectorId]) VALUES (2, N'Muhasibat', 10, 2)
INSERT [dbo].[Departments] ([Id], [Name], [EmpCount], [DirectorId]) VALUES (3, N'Inzibati', 15, 3)
GO
INSERT [dbo].[Directors] ([Id], [Name], [Surname], [Position], [Salary]) VALUES (1, N'Nazim', N'Abdullayev', N'Kadr Muduru', 700)
INSERT [dbo].[Directors] ([Id], [Name], [Surname], [Position], [Salary]) VALUES (2, N'Gunay', N'Huseynova', N'MuhasibatMuduru', 600)
INSERT [dbo].[Directors] ([Id], [Name], [Surname], [Position], [Salary]) VALUES (3, N'Bekir', N'Mustafayev', N'Inzibati Mudur', 700)
GO
INSERT [dbo].[Employees] ([Id], [Name], [Surname], [Position], [Salary], [DepartmentId]) VALUES (1, N'Aysel', N'Seferova', N'Muhasibatliq', 400, 2)
INSERT [dbo].[Employees] ([Id], [Name], [Surname], [Position], [Salary], [DepartmentId]) VALUES (2, N'Vuqar', N'Necefli', N'Muhasibatliq', 500, 2)
INSERT [dbo].[Employees] ([Id], [Name], [Surname], [Position], [Salary], [DepartmentId]) VALUES (3, N'Cemil', N'Kerimli', N'Inzibatciliq', 500, 3)
INSERT [dbo].[Employees] ([Id], [Name], [Surname], [Position], [Salary], [DepartmentId]) VALUES (4, N'Sema', N'Ferecova', N'Kadrlar', 600, 1)
INSERT [dbo].[Employees] ([Id], [Name], [Surname], [Position], [Salary], [DepartmentId]) VALUES (5, N'Ilyas', N'Ceferov', N'Inzibatciliq', 500, 3)
INSERT [dbo].[Employees] ([Id], [Name], [Surname], [Position], [Salary], [DepartmentId]) VALUES (6, N'Xeyale', N'Babayeva', N'Kadrlar', 600, 1)
GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD FOREIGN KEY([DirectorId])
REFERENCES [dbo].[Directors] ([Id])
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([Id])
GO
