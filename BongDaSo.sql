USE [master]
GO
/****** Object:  Database [BongDaSo]    Script Date: 10/12/2020 6:22:36 CH ******/
CREATE DATABASE [BongDaSo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BongDaSo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.THANG\MSSQL\DATA\BongDaSo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BongDaSo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.THANG\MSSQL\DATA\BongDaSo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BongDaSo] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BongDaSo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BongDaSo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BongDaSo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BongDaSo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BongDaSo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BongDaSo] SET ARITHABORT OFF 
GO
ALTER DATABASE [BongDaSo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BongDaSo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BongDaSo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BongDaSo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BongDaSo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BongDaSo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BongDaSo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BongDaSo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BongDaSo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BongDaSo] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BongDaSo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BongDaSo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BongDaSo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BongDaSo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BongDaSo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BongDaSo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BongDaSo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BongDaSo] SET RECOVERY FULL 
GO
ALTER DATABASE [BongDaSo] SET  MULTI_USER 
GO
ALTER DATABASE [BongDaSo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BongDaSo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BongDaSo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BongDaSo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BongDaSo] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BongDaSo', N'ON'
GO
ALTER DATABASE [BongDaSo] SET QUERY_STORE = OFF
GO
USE [BongDaSo]
GO
/****** Object:  Table [dbo].[BangDiem]    Script Date: 10/12/2020 6:22:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangDiem](
	[id] [int] NOT NULL,
	[id_Giai] [int] NULL,
	[id_DoiBong] [int] NULL,
	[diem] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 10/12/2020 6:22:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[id] [int] NOT NULL,
	[id_TinTuc] [int] NULL,
	[userID] [int] NULL,
	[ngayDang] [date] NULL,
	[gioDang] [time](7) NULL,
	[noiDung] [text] NULL,
 CONSTRAINT [PK__BinhLuan__3213E83FA346C1F8] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoiBong]    Script Date: 10/12/2020 6:22:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoiBong](
	[id] [int] NOT NULL,
	[tenDoi] [nvarchar](50) NULL,
	[kiHieu] [nvarchar](max) NULL,
 CONSTRAINT [PK__DoiBong__3213E83FDB125511] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaiDau]    Script Date: 10/12/2020 6:22:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaiDau](
	[id] [int] NOT NULL,
	[tenGiai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichThiDau]    Script Date: 10/12/2020 6:22:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichThiDau](
	[id] [int] NOT NULL,
	[id_Giai] [int] NULL,
	[ngay] [date] NULL,
	[gio] [time](7) NULL,
	[maDoiNha] [int] NULL,
	[maDoiKhach] [int] NULL,
	[diemDoiNha] [int] NULL,
	[diemDoiKhach] [int] NULL,
	[ketQua] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiTin]    Script Date: 10/12/2020 6:22:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTin](
	[id] [int] NOT NULL,
	[tenLoai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiUser]    Script Date: 10/12/2020 6:22:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiUser](
	[id] [int] NOT NULL,
	[tenLoai] [nvarchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinhTrang]    Script Date: 10/12/2020 6:22:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhTrang](
	[id] [int] NOT NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_TinhTrang] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinTuc]    Script Date: 10/12/2020 6:22:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTuc](
	[id] [int] NOT NULL,
	[title] [ntext] NULL,
	[tomTat] [ntext] NULL,
	[thumb] [ntext] NULL,
	[cover] [ntext] NULL,
	[noiDung] [ntext] NULL,
	[id_User] [int] NULL,
	[ngayDang] [datetime] NULL,
	[luotXem] [int] NULL,
	[doUuTien] [int] NULL,
	[idLoai] [int] NULL,
	[idGiaiDau] [int] NULL,
	[tinhTrang] [int] NULL,
 CONSTRAINT [PK__TinTuc__3213E83FFED0A19C] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/12/2020 6:22:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] NOT NULL,
	[userName] [varchar](50) NULL,
	[pass] [nvarchar](50) NULL,
	[id_loai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TinTuc] ADD  CONSTRAINT [DF_TinTuc_thumb]  DEFAULT (N'news_thumbnail3.jpg') FOR [thumb]
GO
ALTER TABLE [dbo].[TinTuc] ADD  CONSTRAINT [DF_TinTuc_cover]  DEFAULT (N'http://media.bongda.com.vn/files/thach.pham/2020/12/01/gettyimages-1284397406-0541.jpg') FOR [cover]
GO
ALTER TABLE [dbo].[TinTuc] ADD  CONSTRAINT [DF_TinTuc_ngayDang]  DEFAULT (getdate()) FOR [ngayDang]
GO
ALTER TABLE [dbo].[TinTuc] ADD  CONSTRAINT [DF_TinTuc_luotXem]  DEFAULT ((0)) FOR [luotXem]
GO
ALTER TABLE [dbo].[TinTuc] ADD  CONSTRAINT [DF_TinTuc_doUuTien]  DEFAULT ((0)) FOR [doUuTien]
GO
ALTER TABLE [dbo].[TinTuc] ADD  CONSTRAINT [DF_TinTuc_tinhTrang]  DEFAULT ((0)) FOR [tinhTrang]
GO
ALTER TABLE [dbo].[BangDiem]  WITH CHECK ADD  CONSTRAINT [FK_BangDiem_DoiBong] FOREIGN KEY([id_DoiBong])
REFERENCES [dbo].[DoiBong] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BangDiem] CHECK CONSTRAINT [FK_BangDiem_DoiBong]
GO
ALTER TABLE [dbo].[BangDiem]  WITH CHECK ADD  CONSTRAINT [FK_BangDiem_GiaiDau] FOREIGN KEY([id_Giai])
REFERENCES [dbo].[GiaiDau] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BangDiem] CHECK CONSTRAINT [FK_BangDiem_GiaiDau]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_TinTuc] FOREIGN KEY([id_TinTuc])
REFERENCES [dbo].[TinTuc] ([id])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_TinTuc]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_Users] FOREIGN KEY([userID])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_Users]
GO
ALTER TABLE [dbo].[LichThiDau]  WITH CHECK ADD  CONSTRAINT [FK_LichThiDau_DoiBong] FOREIGN KEY([maDoiNha])
REFERENCES [dbo].[DoiBong] ([id])
GO
ALTER TABLE [dbo].[LichThiDau] CHECK CONSTRAINT [FK_LichThiDau_DoiBong]
GO
ALTER TABLE [dbo].[LichThiDau]  WITH CHECK ADD  CONSTRAINT [FK_LichThiDau_DoiBong1] FOREIGN KEY([maDoiKhach])
REFERENCES [dbo].[DoiBong] ([id])
GO
ALTER TABLE [dbo].[LichThiDau] CHECK CONSTRAINT [FK_LichThiDau_DoiBong1]
GO
ALTER TABLE [dbo].[LichThiDau]  WITH CHECK ADD  CONSTRAINT [FK_LichThiDau_GiaiDau] FOREIGN KEY([id_Giai])
REFERENCES [dbo].[GiaiDau] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LichThiDau] CHECK CONSTRAINT [FK_LichThiDau_GiaiDau]
GO
ALTER TABLE [dbo].[TinTuc]  WITH CHECK ADD  CONSTRAINT [FK_TinTuc_GiaiDau] FOREIGN KEY([idGiaiDau])
REFERENCES [dbo].[GiaiDau] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TinTuc] CHECK CONSTRAINT [FK_TinTuc_GiaiDau]
GO
ALTER TABLE [dbo].[TinTuc]  WITH CHECK ADD  CONSTRAINT [FK_TinTuc_LoaiTin] FOREIGN KEY([idLoai])
REFERENCES [dbo].[LoaiTin] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TinTuc] CHECK CONSTRAINT [FK_TinTuc_LoaiTin]
GO
ALTER TABLE [dbo].[TinTuc]  WITH CHECK ADD  CONSTRAINT [FK_TinTuc_TinhTrang] FOREIGN KEY([doUuTien])
REFERENCES [dbo].[TinhTrang] ([id])
GO
ALTER TABLE [dbo].[TinTuc] CHECK CONSTRAINT [FK_TinTuc_TinhTrang]
GO
ALTER TABLE [dbo].[TinTuc]  WITH CHECK ADD  CONSTRAINT [FK_TinTuc_Users] FOREIGN KEY([id_User])
REFERENCES [dbo].[Users] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TinTuc] CHECK CONSTRAINT [FK_TinTuc_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_LoaiUser] FOREIGN KEY([id_loai])
REFERENCES [dbo].[LoaiUser] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_LoaiUser]
GO
/****** Object:  StoredProcedure [dbo].[TinTuc_Insert]    Script Date: 10/12/2020 6:22:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[TinTuc_Insert](
	@id int,
	@title ntext,
	@tomTat ntext,
	@cover ntext,
	@noidung ntext,
	@id_User int,
	@ngayDang datetime,
	@idLoai int,
	@idGiaiDau int,
	@tinhTrang int
)
as
begin
	insert into TinTuc values(@id,@title,@tomTat,N'news_thumbnail3.jpg',@cover,@noidung,@id_User,@ngayDang,0,0,@idLoai,@idGiaiDau,@tinhTrang)
end
GO
/****** Object:  StoredProcedure [dbo].[Users_Search]    Script Date: 10/12/2020 6:22:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



create PROC [dbo].[Users_Search](
	@user nvarchar(50),
	@pass nvarchar(50)
)
as
begin
	Select * from Users where userName=@user and pass=@pass
end
GO
USE [master]
GO
ALTER DATABASE [BongDaSo] SET  READ_WRITE 
GO
