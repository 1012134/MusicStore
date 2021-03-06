USE [MUSIC_STORE]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 08/14/2014 14:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Singer]    Script Date: 08/14/2014 14:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Singer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[Information] [text] NULL,
	[LinkImage] [nvarchar](max) NULL,
 CONSTRAINT [PK__Singer__3214EC277F60ED59] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publisher]    Script Date: 08/14/2014 14:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publisher](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Information] [text] NULL,
	[LinkImage] [nvarchar](max) NULL,
 CONSTRAINT [PK__Publishe__3214EC2703317E3D] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 08/14/2014 14:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccount](
	[UserName] [nvarchar](128) NOT NULL,
	[Facebook] [nvarchar](max) NULL,
	[Money] [int] NULL,
	[Addresss] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[FullName] [nvarchar](max) NULL,
 CONSTRAINT [PK__UserAcco__C9F2845707020F21] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 08/14/2014 14:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genre]    Script Date: 08/14/2014 14:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[LinkImage] [nvarchar](max) NULL,
	[Description] [text] NULL,
 CONSTRAINT [PK__Genre__3214EC270AD2A005] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Composer]    Script Date: 08/14/2014 14:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Composer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[Information] [text] NULL,
	[LinkImage] [nvarchar](max) NULL,
 CONSTRAINT [PK__Composer__3214EC270EA330E9] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 08/14/2014 14:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[Discriminator] [nvarchar](128) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[FullName] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 08/14/2014 14:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 08/14/2014 14:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[UserId] [nvarchar](128) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 08/14/2014 14:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[User_Id] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Album]    Script Date: 08/14/2014 14:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Album](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Information] [text] NULL,
	[LinkImage] [nvarchar](max) NULL,
	[ReleaseDate] [date] NULL,
	[BuyCounter] [int] NULL,
	[IDGenre] [int] NULL,
	[IDPublisher] [int] NULL,
	[Language] [nvarchar](max) NULL,
	[Price] [int] NULL,
 CONSTRAINT [PK__Album__3214EC27108B795B] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 08/14/2014 14:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDUser] [nvarchar](128) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Money] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Song]    Script Date: 08/14/2014 14:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Song](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Price] [int] NULL,
	[FileType] [char](3) NULL,
	[LinkSong] [nvarchar](max) NULL,
	[IDGenre] [int] NULL,
	[IDSinger] [int] NULL,
	[IDComposer] [int] NULL,
 CONSTRAINT [PK__Song__3214EC27145C0A3F] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WishList]    Script Date: 08/14/2014 14:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WishList](
	[IDUser] [nvarchar](128) NOT NULL,
	[IDAlbum] [int] NOT NULL,
 CONSTRAINT [pk_WishList] PRIMARY KEY CLUSTERED 
(
	[IDUser] ASC,
	[IDAlbum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Album]    Script Date: 08/14/2014 14:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Album](
	[IDOrder] [int] NOT NULL,
	[IDAlbum] [int] NOT NULL,
	[Quality] [int] NULL,
 CONSTRAINT [PK_Order_Album] PRIMARY KEY CLUSTERED 
(
	[IDOrder] ASC,
	[IDAlbum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Album_Song]    Script Date: 08/14/2014 14:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Album_Song](
	[IDAlbum] [int] NOT NULL,
	[IDSong] [int] NOT NULL,
 CONSTRAINT [PK_Album_Song] PRIMARY KEY CLUSTERED 
(
	[IDAlbum] ASC,
	[IDSong] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [fk_Album_Genre]    Script Date: 08/14/2014 14:03:32 ******/
ALTER TABLE [dbo].[Album]  WITH CHECK ADD  CONSTRAINT [fk_Album_Genre] FOREIGN KEY([IDGenre])
REFERENCES [dbo].[Genre] ([ID])
GO
ALTER TABLE [dbo].[Album] CHECK CONSTRAINT [fk_Album_Genre]
GO
/****** Object:  ForeignKey [fk_Album_Publisher]    Script Date: 08/14/2014 14:03:32 ******/
ALTER TABLE [dbo].[Album]  WITH CHECK ADD  CONSTRAINT [fk_Album_Publisher] FOREIGN KEY([IDPublisher])
REFERENCES [dbo].[Publisher] ([ID])
GO
ALTER TABLE [dbo].[Album] CHECK CONSTRAINT [fk_Album_Publisher]
GO
/****** Object:  ForeignKey [FK_Album_Song_Album]    Script Date: 08/14/2014 14:03:32 ******/
ALTER TABLE [dbo].[Album_Song]  WITH CHECK ADD  CONSTRAINT [FK_Album_Song_Album] FOREIGN KEY([IDAlbum])
REFERENCES [dbo].[Album] ([ID])
GO
ALTER TABLE [dbo].[Album_Song] CHECK CONSTRAINT [FK_Album_Song_Album]
GO
/****** Object:  ForeignKey [FK_Album_Song_Song]    Script Date: 08/14/2014 14:03:32 ******/
ALTER TABLE [dbo].[Album_Song]  WITH CHECK ADD  CONSTRAINT [FK_Album_Song_Song] FOREIGN KEY([IDSong])
REFERENCES [dbo].[Song] ([ID])
GO
ALTER TABLE [dbo].[Album_Song] CHECK CONSTRAINT [FK_Album_Song_Song]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_User_Id]    Script Date: 08/14/2014 14:03:32 ******/
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_User_Id] FOREIGN KEY([User_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_User_Id]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]    Script Date: 08/14/2014 14:03:32 ******/
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]    Script Date: 08/14/2014 14:03:32 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]    Script Date: 08/14/2014 14:03:32 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_Order_AspNetUsers]    Script Date: 08/14/2014 14:03:32 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_AspNetUsers] FOREIGN KEY([IDUser])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_AspNetUsers]
GO
/****** Object:  ForeignKey [FK_Order_UserAccount]    Script Date: 08/14/2014 14:03:32 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_UserAccount] FOREIGN KEY([IDUser])
REFERENCES [dbo].[UserAccount] ([UserName])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_UserAccount]
GO
/****** Object:  ForeignKey [FK_Order_Album_Album]    Script Date: 08/14/2014 14:03:32 ******/
ALTER TABLE [dbo].[Order_Album]  WITH CHECK ADD  CONSTRAINT [FK_Order_Album_Album] FOREIGN KEY([IDAlbum])
REFERENCES [dbo].[Album] ([ID])
GO
ALTER TABLE [dbo].[Order_Album] CHECK CONSTRAINT [FK_Order_Album_Album]
GO
/****** Object:  ForeignKey [FK_Order_Album_Order]    Script Date: 08/14/2014 14:03:32 ******/
ALTER TABLE [dbo].[Order_Album]  WITH CHECK ADD  CONSTRAINT [FK_Order_Album_Order] FOREIGN KEY([IDOrder])
REFERENCES [dbo].[Order] ([ID])
GO
ALTER TABLE [dbo].[Order_Album] CHECK CONSTRAINT [FK_Order_Album_Order]
GO
/****** Object:  ForeignKey [fk_Song_Composer]    Script Date: 08/14/2014 14:03:32 ******/
ALTER TABLE [dbo].[Song]  WITH CHECK ADD  CONSTRAINT [fk_Song_Composer] FOREIGN KEY([IDComposer])
REFERENCES [dbo].[Composer] ([ID])
GO
ALTER TABLE [dbo].[Song] CHECK CONSTRAINT [fk_Song_Composer]
GO
/****** Object:  ForeignKey [fk_Song_Genre]    Script Date: 08/14/2014 14:03:32 ******/
ALTER TABLE [dbo].[Song]  WITH CHECK ADD  CONSTRAINT [fk_Song_Genre] FOREIGN KEY([IDGenre])
REFERENCES [dbo].[Genre] ([ID])
GO
ALTER TABLE [dbo].[Song] CHECK CONSTRAINT [fk_Song_Genre]
GO
/****** Object:  ForeignKey [fk_Song_Singer]    Script Date: 08/14/2014 14:03:32 ******/
ALTER TABLE [dbo].[Song]  WITH CHECK ADD  CONSTRAINT [fk_Song_Singer] FOREIGN KEY([IDSinger])
REFERENCES [dbo].[Singer] ([ID])
GO
ALTER TABLE [dbo].[Song] CHECK CONSTRAINT [fk_Song_Singer]
GO
/****** Object:  ForeignKey [fk_WishList_Album]    Script Date: 08/14/2014 14:03:32 ******/
ALTER TABLE [dbo].[WishList]  WITH CHECK ADD  CONSTRAINT [fk_WishList_Album] FOREIGN KEY([IDAlbum])
REFERENCES [dbo].[Album] ([ID])
GO
ALTER TABLE [dbo].[WishList] CHECK CONSTRAINT [fk_WishList_Album]
GO
/****** Object:  ForeignKey [FK_WishList_AspNetUsers]    Script Date: 08/14/2014 14:03:32 ******/
ALTER TABLE [dbo].[WishList]  WITH CHECK ADD  CONSTRAINT [FK_WishList_AspNetUsers] FOREIGN KEY([IDUser])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[WishList] CHECK CONSTRAINT [FK_WishList_AspNetUsers]
GO
