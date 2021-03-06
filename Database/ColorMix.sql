USE [ColorMix]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 2/21/2020 9:57:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[ColorCode] [nvarchar](50) NOT NULL,
	[ColorName] [nvarchar](255) NULL,
	[ProductCode] [nvarchar](255) NULL,
	[IsActive] [bit] NULL,
	[CreateBy] [nvarchar](20) NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_Color] PRIMARY KEY CLUSTERED 
(
	[ColorCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CrushRaw]    Script Date: 2/21/2020 9:57:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CrushRaw](
	[CrushRawId] [int] IDENTITY(1,1) NOT NULL,
	[ShiftName] [nvarchar](50) NULL,
	[OperatorName] [nvarchar](100) NULL,
	[ProductName] [nvarchar](255) NULL,
	[MaterialName] [nvarchar](255) NULL,
	[ColorName] [nvarchar](255) NULL,
	[StepName] [nvarchar](150) NULL,
	[WeightMix] [float] NULL,
	[WeightRecycle] [float] NULL,
	[LossTypeName] [nvarchar](100) NULL,
	[MixRawId] [int] NULL,
	[WeightMaterial] [float] NULL,
	[TotalMaterial] [float] NULL,
	[MachineName] [nvarchar](100) NULL,
	[MixBacode] [nvarchar](max) NULL,
	[CreateBy] [nvarchar](20) NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_CrushRaw] PRIMARY KEY CLUSTERED 
(
	[CrushRawId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Labels]    Script Date: 2/21/2020 9:57:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Labels](
	[LabelId] [int] IDENTITY(1,1) NOT NULL,
	[LabelCode] [nvarchar](50) NULL,
	[MixRawId] [int] NULL,
	[RecycleCode] [nvarchar](50) NULL,
	[CreateBy] [nvarchar](20) NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_Labels] PRIMARY KEY CLUSTERED 
(
	[LabelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LossType]    Script Date: 2/21/2020 9:57:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LossType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LossTypeName] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
	[CreateBy] [nvarchar](20) NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_LossType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Machine]    Script Date: 2/21/2020 9:57:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Machine](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MachineName] [nvarchar](100) NULL,
	[CreateBy] [nvarchar](20) NULL,
	[CreateTime] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Machine] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Materials]    Script Date: 2/21/2020 9:57:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materials](
	[MaterialCode] [nvarchar](50) NOT NULL,
	[MaterialName] [nvarchar](255) NULL,
	[IsActive] [bit] NULL,
	[CreateBy] [nvarchar](20) NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_Materials] PRIMARY KEY CLUSTERED 
(
	[MaterialCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MixingOut]    Script Date: 2/21/2020 9:57:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MixingOut](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WeightRunner] [float] NULL,
	[WeightDefect] [float] NULL,
	[WeightBlackDot] [float] NULL,
	[WeighContamination] [float] NULL,
	[WeightRecycle] [float] NULL,
	[WeightCookie] [float] NULL,
	[MixRawId] [int] NULL,
	[CreateBy] [nvarchar](20) NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_MixingOut] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MixRaw]    Script Date: 2/21/2020 9:57:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MixRaw](
	[MixRawId] [int] IDENTITY(1,1) NOT NULL,
	[ShiftName] [nvarchar](50) NULL,
	[OperatorName] [nvarchar](100) NULL,
	[ProductName] [nvarchar](255) NULL,
	[MaterialName] [nvarchar](255) NULL,
	[ColorName] [nvarchar](255) NULL,
	[StepName] [nvarchar](150) NULL,
	[WeightMix] [float] NULL,
	[WeightRecycle] [float] NULL,
	[WeightMaterial] [float] NULL,
	[TotalMaterial] [float] NULL,
	[MachineName] [nvarchar](100) NULL,
	[MixBacode] [nvarchar](max) NULL,
	[CreateBy] [nvarchar](20) NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_MixRaw] PRIMARY KEY CLUSTERED 
(
	[MixRawId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Operator]    Script Date: 2/21/2020 9:57:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Operator](
	[OperatorCode] [nvarchar](20) NOT NULL,
	[OperatorName] [nvarchar](100) NULL,
	[Department] [nvarchar](150) NULL,
	[IsActive] [bit] NULL,
	[CreateBy] [nvarchar](20) NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_Operator] PRIMARY KEY CLUSTERED 
(
	[OperatorCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 2/21/2020 9:57:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductCode] [nvarchar](255) NOT NULL,
	[ProductName] [nvarchar](255) NULL,
	[IsActive] [bit] NULL,
	[CreateBy] [nvarchar](20) NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED 
(
	[ProductCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductColor]    Script Date: 2/21/2020 9:57:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductColor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductCode] [nvarchar](50) NULL,
	[ColorCode] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[CreateBy] [nvarchar](20) NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_ProductColor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Step]    Script Date: 2/21/2020 9:57:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Step](
	[StepCode] [nvarchar](50) NOT NULL,
	[StepName] [nvarchar](150) NULL,
	[IsActive] [bit] NULL,
	[CreateBy] [nvarchar](20) NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_Step] PRIMARY KEY CLUSTERED 
(
	[StepCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Color] ([ColorCode], [ColorName], [ProductCode], [IsActive], [CreateBy], [CreateTime]) VALUES (N'01F7', N'R.White', N'1', 1, N'', CAST(0x0000AB6700A3A05B AS DateTime))
INSERT [dbo].[Color] ([ColorCode], [ColorName], [ProductCode], [IsActive], [CreateBy], [CreateTime]) VALUES (N'089A
', N'Pop
', N'1', 1, N'FVN-PC-IT-08', CAST(0x0000AB5F00F0ECB2 AS DateTime))
INSERT [dbo].[Color] ([ColorCode], [ColorName], [ProductCode], [IsActive], [CreateBy], [CreateTime]) VALUES (N'10155C
', N'Rose Gold
', N'2', 1, N'FVN-PC-IT-08', CAST(0x0000AB5F00F0FA28 AS DateTime))
INSERT [dbo].[Color] ([ColorCode], [ColorName], [ProductCode], [IsActive], [CreateBy], [CreateTime]) VALUES (N'A0QM', N'Black', N'2', 1, N'FVN-PC-IT-08', CAST(0x0000AB5E00943214 AS DateTime))
INSERT [dbo].[Color] ([ColorCode], [ColorName], [ProductCode], [IsActive], [CreateBy], [CreateTime]) VALUES (N'NB0906179
', N'Energy Lime
', N'1', 1, N'FVN-PC-IT-08', CAST(0x0000AB5F00F0D91A AS DateTime))
INSERT [dbo].[Color] ([ColorCode], [ColorName], [ProductCode], [IsActive], [CreateBy], [CreateTime]) VALUES (N'NB-S17-6758', N'TeamRoyal', N'3', 1, N'FVN-PC-IT-08', CAST(0x0000AB5E00983AA5 AS DateTime))
SET IDENTITY_INSERT [dbo].[LossType] ON 

INSERT [dbo].[LossType] ([Id], [LossTypeName], [IsActive], [CreateBy], [CreateTime]) VALUES (2, N'ABC', 1, N'', CAST(0x0000AB6700FDCB0D AS DateTime))
SET IDENTITY_INSERT [dbo].[LossType] OFF
SET IDENTITY_INSERT [dbo].[Machine] ON 

INSERT [dbo].[Machine] ([Id], [MachineName], [CreateBy], [CreateTime], [IsActive]) VALUES (2, N'211', N'', CAST(0x0000AB6700B809FC AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Machine] OFF
INSERT [dbo].[Materials] ([MaterialCode], [MaterialName], [IsActive], [CreateBy], [CreateTime]) VALUES (N'1', N'PA Grilon BZ1
', 1, N'FVN-PC-IT-08', CAST(0x0000AB6700E96EBC AS DateTime))
INSERT [dbo].[Materials] ([MaterialCode], [MaterialName], [IsActive], [CreateBy], [CreateTime]) VALUES (N'2', N'PA Kopa KN333G30
', 1, N'FVN-PC-IT-08', CAST(0x0000AB6700E978C7 AS DateTime))
INSERT [dbo].[Materials] ([MaterialCode], [MaterialName], [IsActive], [CreateBy], [CreateTime]) VALUES (N'3', N'PA Pebax 5333 SP01
', 1, N'FVN-PC-IT-08', CAST(0x0000AB6700E984CC AS DateTime))
SET IDENTITY_INSERT [dbo].[MixingOut] ON 

INSERT [dbo].[MixingOut] ([Id], [WeightRunner], [WeightDefect], [WeightBlackDot], [WeighContamination], [WeightRecycle], [WeightCookie], [MixRawId], [CreateBy], [CreateTime]) VALUES (1, 2.5, 3.2, 1, 2, 12, 5, 8, N'', CAST(0x0000AB680092B8C0 AS DateTime))
SET IDENTITY_INSERT [dbo].[MixingOut] OFF
SET IDENTITY_INSERT [dbo].[MixRaw] ON 

INSERT [dbo].[MixRaw] ([MixRawId], [ShiftName], [OperatorName], [ProductName], [MaterialName], [ColorName], [StepName], [WeightMix], [WeightRecycle], [WeightMaterial], [TotalMaterial], [MachineName], [MixBacode], [CreateBy], [CreateTime]) VALUES (8, N'Ca làm việc 3(Z)', N'Lê Văn Luân', N'Heelcap AD42628 Energy Boost IV', N'PA Kopa KN333G30', N'R.White', N'Shank', NULL, 0.5, 0.36, 0.86, N'211', N'MI20202205C1CC2', N'', CAST(0x0000AB6700F2AE05 AS DateTime))
SET IDENTITY_INSERT [dbo].[MixRaw] OFF
INSERT [dbo].[Operator] ([OperatorCode], [OperatorName], [Department], [IsActive], [CreateBy], [CreateTime]) VALUES (N'1', N'Lê Xuân Dũng B
', NULL, 1, N'FVN-PC-IT-08', CAST(0x0000AB5F00958B27 AS DateTime))
INSERT [dbo].[Operator] ([OperatorCode], [OperatorName], [Department], [IsActive], [CreateBy], [CreateTime]) VALUES (N'2', N'Lê Văn Luân
', NULL, 1, N'FVN-PC-IT-08', CAST(0x0000AB5F00959380 AS DateTime))
INSERT [dbo].[Operator] ([OperatorCode], [OperatorName], [Department], [IsActive], [CreateBy], [CreateTime]) VALUES (N'3', N'Hoàng Văn Huy
', NULL, 1, N'FVN-PC-IT-08', CAST(0x0000AB5F00959D0F AS DateTime))
INSERT [dbo].[Operator] ([OperatorCode], [OperatorName], [Department], [IsActive], [CreateBy], [CreateTime]) VALUES (N'4', N'Lê Văn Luân
', NULL, 1, N'FVN-PC-IT-08', CAST(0x0000AB5F0095A79B AS DateTime))
INSERT [dbo].[Operator] ([OperatorCode], [OperatorName], [Department], [IsActive], [CreateBy], [CreateTime]) VALUES (N'5', N'Nguyễn Đình Hữu 
', NULL, 1, N'FVN-PC-IT-08', CAST(0x0000AB5F0095B134 AS DateTime))
INSERT [dbo].[Product] ([ProductCode], [ProductName], [IsActive], [CreateBy], [CreateTime]) VALUES (N'1', N'Heelcap AD42628 Energy Boost IV
', 1, N'FVN-PC-IT-08', CAST(0x0000AB5F00EAAC7C AS DateTime))
INSERT [dbo].[Product] ([ProductCode], [ProductName], [IsActive], [CreateBy], [CreateTime]) VALUES (N'2', N'Furon 3 Kids SG(NSJ-FSG02TD)
', 1, N'FVN-PC-IT-08', CAST(0x0000AB5F00EAB838 AS DateTime))
SET IDENTITY_INSERT [dbo].[ProductColor] ON 

INSERT [dbo].[ProductColor] ([ID], [ProductCode], [ColorCode], [IsActive], [CreateBy], [CreateTime]) VALUES (1, N'1', N'A0QM
', 1, N'FVN-PC-IT-08', CAST(0x0000AB6600E8885E AS DateTime))
INSERT [dbo].[ProductColor] ([ID], [ProductCode], [ColorCode], [IsActive], [CreateBy], [CreateTime]) VALUES (2, N'2', N'NB-S17-6758
', 1, N'FVN-PC-IT-08', CAST(0x0000AB6600E8A448 AS DateTime))
SET IDENTITY_INSERT [dbo].[ProductColor] OFF
INSERT [dbo].[Step] ([StepCode], [StepName], [IsActive], [CreateBy], [CreateTime]) VALUES (N'Logo', N'Logo', 1, N'', CAST(0x0000AB6700B84DFF AS DateTime))
INSERT [dbo].[Step] ([StepCode], [StepName], [IsActive], [CreateBy], [CreateTime]) VALUES (N'Shank', N'Shank', 1, N'', CAST(0x0000AB6700B85AB8 AS DateTime))
INSERT [dbo].[Step] ([StepCode], [StepName], [IsActive], [CreateBy], [CreateTime]) VALUES (N'Stud', N'Stud', 1, N'', CAST(0x0000AB6700B83B3E AS DateTime))
ALTER TABLE [dbo].[Color] ADD  CONSTRAINT [DF_Color_CreateBy]  DEFAULT (host_name()) FOR [CreateBy]
GO
ALTER TABLE [dbo].[Color] ADD  CONSTRAINT [DF_Color_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
ALTER TABLE [dbo].[CrushRaw] ADD  CONSTRAINT [DF_CrushRaw_CreateBy]  DEFAULT (host_name()) FOR [CreateBy]
GO
ALTER TABLE [dbo].[CrushRaw] ADD  CONSTRAINT [DF_CrushRaw_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
ALTER TABLE [dbo].[Labels] ADD  CONSTRAINT [DF_Labels_CreateBy]  DEFAULT (host_name()) FOR [CreateBy]
GO
ALTER TABLE [dbo].[Labels] ADD  CONSTRAINT [DF_Labels_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
ALTER TABLE [dbo].[LossType] ADD  CONSTRAINT [DF_LossType_CreateBy]  DEFAULT (host_name()) FOR [CreateBy]
GO
ALTER TABLE [dbo].[LossType] ADD  CONSTRAINT [DF_LossType_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
ALTER TABLE [dbo].[Machine] ADD  CONSTRAINT [DF_Machine_CreateBy]  DEFAULT (host_name()) FOR [CreateBy]
GO
ALTER TABLE [dbo].[Machine] ADD  CONSTRAINT [DF_Machine_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
ALTER TABLE [dbo].[Materials] ADD  CONSTRAINT [DF_Materials_CreateBy]  DEFAULT (host_name()) FOR [CreateBy]
GO
ALTER TABLE [dbo].[Materials] ADD  CONSTRAINT [DF_Materials_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
ALTER TABLE [dbo].[MixingOut] ADD  CONSTRAINT [DF_MixingOut_CreateBy]  DEFAULT (host_name()) FOR [CreateBy]
GO
ALTER TABLE [dbo].[MixingOut] ADD  CONSTRAINT [DF_MixingOut_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
ALTER TABLE [dbo].[MixRaw] ADD  CONSTRAINT [DF_MixRaw_CreateBy]  DEFAULT (host_name()) FOR [CreateBy]
GO
ALTER TABLE [dbo].[MixRaw] ADD  CONSTRAINT [DF_MixRaw_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
ALTER TABLE [dbo].[Operator] ADD  CONSTRAINT [DF_Operator_CreateBy]  DEFAULT (host_name()) FOR [CreateBy]
GO
ALTER TABLE [dbo].[Operator] ADD  CONSTRAINT [DF_Operator_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Item_CreateBy]  DEFAULT (host_name()) FOR [CreateBy]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Item_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
ALTER TABLE [dbo].[ProductColor] ADD  CONSTRAINT [DF_ProductColor_CreateBy]  DEFAULT (host_name()) FOR [CreateBy]
GO
ALTER TABLE [dbo].[ProductColor] ADD  CONSTRAINT [DF_ProductColor_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
ALTER TABLE [dbo].[Step] ADD  CONSTRAINT [DF_Step_CreateBy]  DEFAULT (host_name()) FOR [CreateBy]
GO
ALTER TABLE [dbo].[Step] ADD  CONSTRAINT [DF_Step_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
