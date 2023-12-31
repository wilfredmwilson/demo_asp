CREATE DATABASE db_test
GO
USE [db_test]

/****** Object:  Table [dbo].[tbl_Student]    Script Date: 1/28/2022 3:09:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Student](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](150) NULL,
	[Fname] [varchar](150) NULL,
	[Email] [varchar](150) NULL,
	[Mobile] [varchar](150) NULL,
	[Description] [varchar](350) NULL
 CONSTRAINT [PK_tbl_Student] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF

GO
SET IDENTITY_INSERT [dbo].[tbl_Student] ON 

INSERT [dbo].[tbl_Student] ([ID], [Name], [Fname], [Email], [Mobile], [Description]) VALUES (1, N'Salman khan', N'Jan Khan Jamali', N'salman@gmail.com', N'09007860177', N'this is demo des update2')
INSERT [dbo].[tbl_Student] ([ID], [Name], [Fname], [Email], [Mobile], [Description]) VALUES (1002, N'Danish', N'Akhter', N'abc@yopmail.com.', N'09007860111', N'this is demo')
INSERT [dbo].[tbl_Student] ([ID], [Name], [Fname], [Email], [Mobile], [Description]) VALUES (1003, N'Tom', N'Jerry', N'tom@yopmail.com.', N'09001238413', N'this is demo')
INSERT [dbo].[tbl_Student] ([ID], [Name], [Fname], [Email], [Mobile], [Description]) VALUES (1004, N'Miss Henry ', N'Cilton Artist', N'henry@yopmail.com', N'09009876566', N'this is demo ')
INSERT [dbo].[tbl_Student] ([ID], [Name], [Fname], [Email], [Mobile], [Description]) VALUES (1005, N'Aamir', N'Hussain', N'aamir@yopmail.com', N'03222229090', N'this demo update')
INSERT [dbo].[tbl_Student] ([ID], [Name], [Fname], [Email], [Mobile], [Description]) VALUES (2002, N'Yasir', N'khan', N'yasir@YOPmail.com', N'03002976483', N'demo')
INSERT [dbo].[tbl_Student] ([ID], [Name], [Fname], [Email], [Mobile], [Description]) VALUES (2008, N'Umar', N'Khan', N'umar@yopmail.com', N'03465465454', N'des')
INSERT [dbo].[tbl_Student] ([ID], [Name], [Fname], [Email], [Mobile], [Description]) VALUES (3013, N'Zaheen', N'ahmed', N'zaheen@yopmail.com', N'0988765411', N'description')
INSERT [dbo].[tbl_Student] ([ID], [Name], [Fname], [Email], [Mobile], [Description]) VALUES (3014, N'Limel', N'Castelo', N'limel@yopmail.com', N'0888711223', N'desc')
INSERT [dbo].[tbl_Student] ([ID], [Name], [Fname], [Email], [Mobile], [Description]) VALUES (4009, N'Waqas', N'Ahmed', N'W@yopmail.com', N'090078601', N'TRigger Test')
SET IDENTITY_INSERT [dbo].[tbl_Student] OFF
