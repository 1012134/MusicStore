USE [master]
GO
/****** Object:  Database [MUSIC_STORE]    Script Date: 08/13/2014 10:13:11 ******/
CREATE DATABASE [MUSIC_STORE] ON  PRIMARY 
( NAME = N'MUSIC_STORE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\MUSIC_STORE.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MUSIC_STORE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\MUSIC_STORE_log.LDF' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MUSIC_STORE] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MUSIC_STORE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MUSIC_STORE] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [MUSIC_STORE] SET ANSI_NULLS OFF
GO
ALTER DATABASE [MUSIC_STORE] SET ANSI_PADDING OFF
GO
ALTER DATABASE [MUSIC_STORE] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [MUSIC_STORE] SET ARITHABORT OFF
GO
ALTER DATABASE [MUSIC_STORE] SET AUTO_CLOSE ON
GO
ALTER DATABASE [MUSIC_STORE] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [MUSIC_STORE] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [MUSIC_STORE] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [MUSIC_STORE] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [MUSIC_STORE] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [MUSIC_STORE] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [MUSIC_STORE] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [MUSIC_STORE] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [MUSIC_STORE] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [MUSIC_STORE] SET  ENABLE_BROKER
GO
ALTER DATABASE [MUSIC_STORE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [MUSIC_STORE] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [MUSIC_STORE] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [MUSIC_STORE] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [MUSIC_STORE] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [MUSIC_STORE] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [MUSIC_STORE] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [MUSIC_STORE] SET  READ_WRITE
GO
ALTER DATABASE [MUSIC_STORE] SET RECOVERY SIMPLE
GO
ALTER DATABASE [MUSIC_STORE] SET  MULTI_USER
GO
ALTER DATABASE [MUSIC_STORE] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [MUSIC_STORE] SET DB_CHAINING OFF
GO
USE [MUSIC_STORE]
GO
/****** Object:  Table [dbo].[Singer]    Script Date: 08/13/2014 10:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Singer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NULL,
	[Information] [text] NULL,
	[LinkImage] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publisher]    Script Date: 08/13/2014 10:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publisher](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Information] [text] NULL,
	[LinkImage] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 08/13/2014 10:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccount](
	[UserName] [nvarchar](50) NOT NULL,
	[Facebook] [nvarchar](50) NULL,
	[Money] [int] NULL,
	[Addresss] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[FullName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genre]    Script Date: 08/13/2014 10:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[LinkImage] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Composer]    Script Date: 08/13/2014 10:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Composer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NULL,
	[Information] [text] NULL,
	[LinkImage] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Album]    Script Date: 08/13/2014 10:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Album](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Information] [text] NULL,
	[LinkImage] [nvarchar](50) NULL,
	[ReleaseDate] [date] NULL,
	[BuyCounter] [int] NULL,
	[IDGenre] [int] NULL,
	[IDPublisher] [int] NULL,
	[Language] [nvarchar](10) NULL,
	[Price] [int] NULL,
 CONSTRAINT [PK__Album__3214EC27108B795B] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Song]    Script Date: 08/13/2014 10:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Song](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Price] [int] NULL,
	[FileType] [char](3) NULL,
	[LinkSong] [nvarchar](50) NULL,
	[IDGenre] [int] NULL,
	[IDSinger] [int] NULL,
	[IDComposer] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Order]    Script Date: 08/13/2014 10:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Money] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WishList]    Script Date: 08/13/2014 10:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WishList](
	[UserName] [nvarchar](50) NOT NULL,
	[IDAlbum] [int] NOT NULL,
 CONSTRAINT [pk_WishList] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC,
	[IDAlbum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Album]    Script Date: 08/13/2014 10:13:15 ******/
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
/****** Object:  Table [dbo].[Album_Song]    Script Date: 08/13/2014 10:13:15 ******/
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
/****** Object:  ForeignKey [fk_Album_Genre]    Script Date: 08/13/2014 10:13:15 ******/
ALTER TABLE [dbo].[Album]  WITH CHECK ADD  CONSTRAINT [fk_Album_Genre] FOREIGN KEY([IDGenre])
REFERENCES [dbo].[Genre] ([ID])
GO
ALTER TABLE [dbo].[Album] CHECK CONSTRAINT [fk_Album_Genre]
GO
/****** Object:  ForeignKey [fk_Album_Publisher]    Script Date: 08/13/2014 10:13:15 ******/
ALTER TABLE [dbo].[Album]  WITH CHECK ADD  CONSTRAINT [fk_Album_Publisher] FOREIGN KEY([IDPublisher])
REFERENCES [dbo].[Publisher] ([ID])
GO
ALTER TABLE [dbo].[Album] CHECK CONSTRAINT [fk_Album_Publisher]
GO
/****** Object:  ForeignKey [fk_Song_Composer]    Script Date: 08/13/2014 10:13:15 ******/
ALTER TABLE [dbo].[Song]  WITH CHECK ADD  CONSTRAINT [fk_Song_Composer] FOREIGN KEY([IDComposer])
REFERENCES [dbo].[Composer] ([ID])
GO
ALTER TABLE [dbo].[Song] CHECK CONSTRAINT [fk_Song_Composer]
GO
/****** Object:  ForeignKey [fk_Song_Genre]    Script Date: 08/13/2014 10:13:15 ******/
ALTER TABLE [dbo].[Song]  WITH CHECK ADD  CONSTRAINT [fk_Song_Genre] FOREIGN KEY([IDGenre])
REFERENCES [dbo].[Genre] ([ID])
GO
ALTER TABLE [dbo].[Song] CHECK CONSTRAINT [fk_Song_Genre]
GO
/****** Object:  ForeignKey [fk_Song_Singer]    Script Date: 08/13/2014 10:13:15 ******/
ALTER TABLE [dbo].[Song]  WITH CHECK ADD  CONSTRAINT [fk_Song_Singer] FOREIGN KEY([IDSinger])
REFERENCES [dbo].[Singer] ([ID])
GO
ALTER TABLE [dbo].[Song] CHECK CONSTRAINT [fk_Song_Singer]
GO
/****** Object:  ForeignKey [FK_Order_UserAccount]    Script Date: 08/13/2014 10:13:15 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_UserAccount] FOREIGN KEY([Username])
REFERENCES [dbo].[UserAccount] ([UserName])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_UserAccount]
GO
/****** Object:  ForeignKey [fk_WishList_Album]    Script Date: 08/13/2014 10:13:15 ******/
ALTER TABLE [dbo].[WishList]  WITH CHECK ADD  CONSTRAINT [fk_WishList_Album] FOREIGN KEY([IDAlbum])
REFERENCES [dbo].[Album] ([ID])
GO
ALTER TABLE [dbo].[WishList] CHECK CONSTRAINT [fk_WishList_Album]
GO
/****** Object:  ForeignKey [fk_WishList_User]    Script Date: 08/13/2014 10:13:15 ******/
ALTER TABLE [dbo].[WishList]  WITH CHECK ADD  CONSTRAINT [fk_WishList_User] FOREIGN KEY([UserName])
REFERENCES [dbo].[UserAccount] ([UserName])
GO
ALTER TABLE [dbo].[WishList] CHECK CONSTRAINT [fk_WishList_User]
GO
/****** Object:  ForeignKey [FK_Order_Album_Album]    Script Date: 08/13/2014 10:13:15 ******/
ALTER TABLE [dbo].[Order_Album]  WITH CHECK ADD  CONSTRAINT [FK_Order_Album_Album] FOREIGN KEY([IDAlbum])
REFERENCES [dbo].[Album] ([ID])
GO
ALTER TABLE [dbo].[Order_Album] CHECK CONSTRAINT [FK_Order_Album_Album]
GO
/****** Object:  ForeignKey [FK_Order_Album_Order]    Script Date: 08/13/2014 10:13:15 ******/
ALTER TABLE [dbo].[Order_Album]  WITH CHECK ADD  CONSTRAINT [FK_Order_Album_Order] FOREIGN KEY([IDOrder])
REFERENCES [dbo].[Order] ([ID])
GO
ALTER TABLE [dbo].[Order_Album] CHECK CONSTRAINT [FK_Order_Album_Order]
GO
/****** Object:  ForeignKey [FK_Album_Song_Album]    Script Date: 08/13/2014 10:13:15 ******/
ALTER TABLE [dbo].[Album_Song]  WITH CHECK ADD  CONSTRAINT [FK_Album_Song_Album] FOREIGN KEY([IDAlbum])
REFERENCES [dbo].[Album] ([ID])
GO
ALTER TABLE [dbo].[Album_Song] CHECK CONSTRAINT [FK_Album_Song_Album]
GO
/****** Object:  ForeignKey [FK_Album_Song_Song]    Script Date: 08/13/2014 10:13:15 ******/
ALTER TABLE [dbo].[Album_Song]  WITH CHECK ADD  CONSTRAINT [FK_Album_Song_Song] FOREIGN KEY([IDSong])
REFERENCES [dbo].[Song] ([ID])
GO
ALTER TABLE [dbo].[Album_Song] CHECK CONSTRAINT [FK_Album_Song_Song]
GO
