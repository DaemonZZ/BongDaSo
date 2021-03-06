USE [BongDaSo]
GO
/****** Object:  Table [dbo].[BangDiem]    Script Date: 20/12/2020 9:00:11 SA ******/
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
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 20/12/2020 9:00:11 SA ******/
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
/****** Object:  Table [dbo].[DoiBong]    Script Date: 20/12/2020 9:00:11 SA ******/
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
/****** Object:  Table [dbo].[GiaiDau]    Script Date: 20/12/2020 9:00:11 SA ******/
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
/****** Object:  Table [dbo].[LichThiDau]    Script Date: 20/12/2020 9:00:11 SA ******/
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
/****** Object:  Table [dbo].[LoaiTin]    Script Date: 20/12/2020 9:00:11 SA ******/
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
/****** Object:  Table [dbo].[LoaiUser]    Script Date: 20/12/2020 9:00:11 SA ******/
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
/****** Object:  Table [dbo].[TinhTrang]    Script Date: 20/12/2020 9:00:11 SA ******/
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
/****** Object:  Table [dbo].[TinTuc]    Script Date: 20/12/2020 9:00:11 SA ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 20/12/2020 9:00:11 SA ******/
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
INSERT [dbo].[DoiBong] ([id], [tenDoi], [kiHieu]) VALUES (1, N'ManChester United', N'MU')
INSERT [dbo].[DoiBong] ([id], [tenDoi], [kiHieu]) VALUES (2, N'Tottenham', NULL)
INSERT [dbo].[DoiBong] ([id], [tenDoi], [kiHieu]) VALUES (3, N'Liverpool', NULL)
INSERT [dbo].[DoiBong] ([id], [tenDoi], [kiHieu]) VALUES (4, N'Chelsea', NULL)
INSERT [dbo].[DoiBong] ([id], [tenDoi], [kiHieu]) VALUES (5, N'Leicester City', NULL)
INSERT [dbo].[DoiBong] ([id], [tenDoi], [kiHieu]) VALUES (6, N'Southampton', NULL)
INSERT [dbo].[DoiBong] ([id], [tenDoi], [kiHieu]) VALUES (7, N'Everton', NULL)
INSERT [dbo].[DoiBong] ([id], [tenDoi], [kiHieu]) VALUES (8, N'Aston Villa', NULL)
INSERT [dbo].[DoiBong] ([id], [tenDoi], [kiHieu]) VALUES (9, N'West Ham United', NULL)
INSERT [dbo].[DoiBong] ([id], [tenDoi], [kiHieu]) VALUES (10, N'Wolverhampton ', NULL)
INSERT [dbo].[DoiBong] ([id], [tenDoi], [kiHieu]) VALUES (11, N'Crystal Palace', NULL)
INSERT [dbo].[DoiBong] ([id], [tenDoi], [kiHieu]) VALUES (12, N'Arsenal', NULL)
INSERT [dbo].[DoiBong] ([id], [tenDoi], [kiHieu]) VALUES (13, N'Manchester City', NULL)
INSERT [dbo].[DoiBong] ([id], [tenDoi], [kiHieu]) VALUES (14, N'Newcastle United', NULL)
GO
INSERT [dbo].[GiaiDau] ([id], [tenGiai]) VALUES (1, N'Ngoại Hạng Anh')
INSERT [dbo].[GiaiDau] ([id], [tenGiai]) VALUES (2, N'C1')
INSERT [dbo].[GiaiDau] ([id], [tenGiai]) VALUES (3, N'La Liga')
INSERT [dbo].[GiaiDau] ([id], [tenGiai]) VALUES (4, N'Series A')
INSERT [dbo].[GiaiDau] ([id], [tenGiai]) VALUES (5, N'PrimeCup')
INSERT [dbo].[GiaiDau] ([id], [tenGiai]) VALUES (6, N'V-Leage')
INSERT [dbo].[GiaiDau] ([id], [tenGiai]) VALUES (7, N'Giải khác')
GO
INSERT [dbo].[LichThiDau] ([id], [id_Giai], [ngay], [gio], [maDoiNha], [maDoiKhach], [diemDoiNha], [diemDoiKhach], [ketQua]) VALUES (1, 1, CAST(N'2021-01-01' AS Date), CAST(N'15:00:00' AS Time), 1, 2, -1, -1, 1)
INSERT [dbo].[LichThiDau] ([id], [id_Giai], [ngay], [gio], [maDoiNha], [maDoiKhach], [diemDoiNha], [diemDoiKhach], [ketQua]) VALUES (2, 1, CAST(N'2021-02-01' AS Date), CAST(N'16:00:00' AS Time), 3, 4, 1, 2, 1)
GO
INSERT [dbo].[LoaiTin] ([id], [tenLoai]) VALUES (1, N'Sân cỏ')
INSERT [dbo].[LoaiTin] ([id], [tenLoai]) VALUES (2, N'Hậu trường')
INSERT [dbo].[LoaiTin] ([id], [tenLoai]) VALUES (3, N'Chuyển nhượng')
INSERT [dbo].[LoaiTin] ([id], [tenLoai]) VALUES (4, N'Phân tích dự đoán')
INSERT [dbo].[LoaiTin] ([id], [tenLoai]) VALUES (5, N'Báo cáo trận đấu')
GO
INSERT [dbo].[LoaiUser] ([id], [tenLoai]) VALUES (1, N'admin')
INSERT [dbo].[LoaiUser] ([id], [tenLoai]) VALUES (2, N'partner')
INSERT [dbo].[LoaiUser] ([id], [tenLoai]) VALUES (3, N'viewer')
GO
INSERT [dbo].[TinhTrang] ([id], [Status]) VALUES (-1, N'Không duyệt')
INSERT [dbo].[TinhTrang] ([id], [Status]) VALUES (0, N'Chờ duyệt')
INSERT [dbo].[TinhTrang] ([id], [Status]) VALUES (1, N'Tin không đáng chú ý')
INSERT [dbo].[TinhTrang] ([id], [Status]) VALUES (2, N'Tin thường')
INSERT [dbo].[TinhTrang] ([id], [Status]) VALUES (3, N'Ưu tiên cao')
INSERT [dbo].[TinhTrang] ([id], [Status]) VALUES (4, N'Tin hot')
GO
INSERT [dbo].[TinTuc] ([id], [title], [tomTat], [thumb], [cover], [noiDung], [id_User], [ngayDang], [luotXem], [doUuTien], [idLoai], [idGiaiDau], [tinhTrang]) VALUES (1, N'Choáng váng MU bị hacker tấn công, nguy cơ tổn thất hàng chục triệu bảng ', N'Choáng váng MU bị hacker tấn công, nguy cơ tổn thất hàng chục triệu bảng ', N'news_thumbnail3.jpg', N'https://cdn.24h.com.vn/upload/4-2020/images/2020-11-27/MU-bi-hacker-tan-cong-danh-cap-du-lieu-mat-tong-tien-hang-trieu-bang-36136104-8989881-image-a-8_1606393468954--2--1606441485-30-width660height395.jpg', N'Trước thềm trận đấu với Southampton thuộc vòng 10 Ngoại hạng Anh (21h, 29/11), MU đang đứng ngồi không yên khi bị một nhóm hacker xâm nhập vào hệ thống mạng và đối diện nguy cơ rò rỉ hàng loạt tài liệu mật.
Sự kiện: Manchester United

 
 
 

Trang Daily Mail tiết lộ, hệ thống mạng của MU đang tê liệt sau khi bị hacker (tin tặc) xâm nhập suốt 1 tuần qua. "Quỷ đỏ" đã mời Trung tâm An ninh mạng Quốc gia (NCSC) cùng các chuyên gia mạng hỗ trợ để lấy lại quyền điều khiển nhưng bất thành.

Choáng váng MU bị hacker tấn công, nguy cơ tổn thất hàng chục triệu bảng - 1

MU bị hacker tấn công và đối diện nguy cơ tổn thất hàng chục triệu bảng

Cũng theo Daily Mail, MU sẽ phải trả tiền cho nhóm hacker nếu không muốn những tài liệu tuyệt mật của CLB bị phanh phui. Hiện chưa rõ nhóm hacker muốn bao nhiêu tiền chuộc nhưng trong quá khứ, số tiền lớn nhất mà một tổ chức thể thao phải trả cho tin tặc lên tới 4 triệu bảng. 

Bên cạnh khoản tiền chuộc, MU còn đối diện nguy cơ bị Văn phòng Ủy ban Thông tin vương quốc Anh phạt 9  tới 18 triệu bảng, thậm chí là 2% tổng doanh thu hàng năm toàn thế giới nếu dữ liệu cá nhân của người hâm mộ bị rò rỉ.

Năm 2019, một CLB bóng bầu dục ở Mỹ từng bị hacker tấn công, dẫn tới không thể vận hành hệ thống camera quan sát và cửa ra vào sân vận động. CLB này sau đó từ chối trả 5 triệu bảng tiền chuộc.

Ngành công nghiệp thể thao vương quốc Anh liên tục trở thành nạn nhân của tội phạm mạng khoảng 1 năm gần đây. Theo báo cáo từ Trung tâm An ninh mạng Quốc gia Anh (NCSC), có tới 70% tổ chức thể thao (tính cả các môn khác ngoài bóng đá) bị tin tặc tấn công, trong đó MU là cái tên nổi tiếng nhất.

Dù vậy, đại diện MU nhấn mạnh sự cố này sẽ không ảnh hưởng đến các hoạt động thi đấu. Trận đấu gần nhất của đội là chuyến hành quân tới sân Southampton thuộc vòng 10 Ngoại hạng Anh (21h, 29/11).', 2, CAST(N'2020-11-27T00:00:00.000' AS DateTime), 0, 4, 2, 1, 0)
INSERT [dbo].[TinTuc] ([id], [title], [tomTat], [thumb], [cover], [noiDung], [id_User], [ngayDang], [luotXem], [doUuTien], [idLoai], [idGiaiDau], [tinhTrang]) VALUES (3, N'David Alaba chuẩn bị đàm phán gia nhập Chelsea', N'Nguồn tin uy tín tại Đức khẳng định người đại diện của David Alaba sẽ đàm phán với Chelsea vào tháng 1 tới đây.', N'news_thumbnail3.jpg', N'https://image.sggp.org.vn/Uploaded/2020/dqmbbcvo/2020_11_03/davidalaba_conb.jpg', N'Nguồn tin uy tín tại Đức khẳng định người đại diện của David Alaba sẽ đàm phán với Chelsea vào tháng 1 tới đây.
Gần như chắc chắn David Alaba sẽ chia tay Bayern Munich theo dạng chuyển nhượng tự do vào cuối mùa giải năm nay sau khi quá trình thương thảo hợp đồng mới đổ vỡ. Đòi hỏi về thu nhập của ngôi sao người Áo được cho là lý do chính khiến Hùm xám bỏ cuộc, chấp nhận mất trắng công thần.

Alaba nhiều khả năng sẽ chia tay Bayern

Alaba sẽ được tự do đàm phán với các CLB khác khi phiên chợ tháng 1/2021 mở cửa. Với nhiều đại gia châu Âu, đây thực sự là cơ hội tốt để chiêu mộ một cầu thủ đa năng, có kinh nghiệm mà không tốn phí chuyển nhượng. Dù vậy, họ sẽ phải đáp ứng mức lương “trên trời” của tuyển thủ Áo.

Theo nguồn tin uy tín tại Đức là Sport Bild, với tình hình tài chính hiện tại, Real Madrid cùng Barcelona không thể trả lương cho Alaba, bất chấp đây là những bến đỗ mà anh muốn tới nhất. Vì lẽ đó, người đại diện của ngôi sao 28 tuổi, “siêu cò” Pini Zahavi sẽ tính đến các phương án khác với Chelsea là ưu tiên hàng đầu.

Sport Bild tiết lộ, Zahavi sẽ bắt đầu đàm phán với Chelsea vào tháng 1. Nhờ tiềm lực tài chính hùng mạnh, đội chủ sân Stamford Bridge có thể thỏa mãn những “yêu sách” của Alaba. Bên cạnh đó, viễn cảnh được chơi bóng tại Premier League cũng hấp dẫn cầu thủ đa năng này.

Ngoài Chelsea, Zahavi còn muốn tiến cử thân chủ mình cho PSG, cũng là một đại gia “lắm tiền nhiều của”. Tuy vậy, Alaba được cho là không muốn sang Pháp thi đấu bởi tính cạnh tranh không cao của Ligue 1.', 2, CAST(N'2020-11-29T00:00:00.000' AS DateTime), 7, 2, 5, 1, 0)
INSERT [dbo].[TinTuc] ([id], [title], [tomTat], [thumb], [cover], [noiDung], [id_User], [ngayDang], [luotXem], [doUuTien], [idLoai], [idGiaiDau], [tinhTrang]) VALUES (4, N'Man City chiêu dụ Messi bằng hợp đồng 1 thập kỉ', N'Theo tờ The Times, để thuyết phục Leo Messi về Etihad, BLĐ Man City sẵn sàng dành cho tuyển thủ Argentina 1 hợp đồng kéo dài đến 10 năm.', N'news_thumbnail3.jpg', N'https://i.dailymail.co.uk/1s/2020/11/24/00/36028586-8979539-image-a-4_1606179533591.jpg', N'Hợp đồng của Messi với Barcelona còn thời hạn đến tháng 6/2021. Điều này đồng nghĩa với việc El Pulga có thể đàm phán với bất cứ đội bóng nào mình muốn vào tháng 1/2021. Chân sút 33 tuổi sẽ ra đi theo dạng chuyển nhượng tự do sau mùa 2020/21, nếu không gia hạn hợp đồng mới với Barcelona.

Theo truyền thông Tây Ban Nha và Anh, rất nhiều đội bóng muốn chiêu mộ Messi, điển hình là Man City. Tờ The Times hôm nay đã tung một tin độc quyền liên quan đến tương lai của tuyển thủ Argentina.

Tờ The Times khẳng định, để thuyết phục Messi đến Etihad, Man City sẵn sàng dành cho El Pulga một hợp đồng không tưởng. Theo đó, đội bóng nước Anh chiêu dụ Messi bằng giao kèo có thời hạn 10 năm. 

Cụ thể, nếu kí hợp đồng với Man City, Messi sẽ thi đấu cho đội quân của HLV Pep Guardiola. Sau khi không còn thể trạng tốt nhất để thi đấu đỉnh cao, Messi có quyền chọn chơi cho 1 trong 8 đội bóng thuộc tập đoàn City Football (tập đoàn sở hữu Man City) là New York City FC (Mỹ), Yokohama F Marinos (Nhật Bản) hoặc Melbourne City (Australia)...  

Sau khi treo giày, Messi sẽ được chọn làm đại sứ toàn cầu của Man City. Đây là 1 phần trong hợp đồng kéo dài 1 thập kỉ đội chủ sân Etihad muốn dành cho El Pulga. Nếu đặt bút kí giao kèo kỉ lục này, Messi sẽ gắn bó với Man City trên tư cách cầu thủ và đại sứ đến năm anh 43 tuổi.

Cũng theo The Times, trong hợp đồng dài siêu tưởng nói trên, Man City còn dành cho Messi mức lương và thưởng rất hậu hĩnh. Được biết, đội bóng của HLV Pep Guardiola sẽ nỗ lực chiêu mộ Messi ngay tháng 1/2021. Nếu thương vụ không thành công, họ sẽ chờ đến hè 2021 để đón El Pulga theo dạng miễn phí.', 2, CAST(N'2020-11-29T00:00:00.000' AS DateTime), 5, 2, 5, 1, 0)
INSERT [dbo].[TinTuc] ([id], [title], [tomTat], [thumb], [cover], [noiDung], [id_User], [ngayDang], [luotXem], [doUuTien], [idLoai], [idGiaiDau], [tinhTrang]) VALUES (5, N'Tương lai của Joachim Low chính thức được ấn định', N'Các nhân vật quyền lực nhất của bóng đá Đức đã quyết định tiếp tục đặt niềm tin vào HLV Joachim Low, ít nhất là đến hết EURO 2020, bất chấp thất bại muối mặt ở Nations League.', N'news_thumbnail3.jpg', N'http://media.bongda.com.vn/files/phong.lu/2020/11/30/6-1338.jpg', N'Sau hàng loạt kết quả đáng thất vọng của đội tuyển Đức mà trận thua nhục nhã 0-6 trước Tây Ban Nha là “giọt nước tràn ly”, HLV Joachim Low đã trở thành tâm điểm bị chỉ trích tại quê nhà. Phần đông dư luận Đức đồng tình rằng chiến lược gia 60 tuổi không còn phù hợp để dẫn dắt Die Mannschaft, bất chấp hào quang quá khứ là chức vô địch World Cup 2014.

HLV Low vẫn chắc chắn tại vị sau trận thua lịch sử trước Tây Ban Nha

Thực tế, Liên đoàn bóng đá Đức (DFB) cũng có cuộc họp khẩn với sự tham gia của 19 thành viên chủ chốt cách đây gần 2 tuần. Các vị lãnh đạo đã thống nhất rằng sẽ xem xét lại tương lai vị trí “thuyền trưởng” tuyển Đức. Giám đốc phụ trách đội tuyển quốc gia Oliver Bierhoff sẽ phải họp bàn với HLV Low, trợ lý HLV Marcus Sorg cũng như HLV thủ môn Andreas Kopke để làm rõ một số vấn đề.

Mới đây, DFB đã tổ chức một “phiên điều trần” trực tuyến để nghe Low cùng các cộng sự trình bày về thất bại trước Tây Ban Nha, tình hình hiện tại cũng như kế hoạch dành cho đội tuyển Đức từ khâu chuẩn bị đến chinh chiến ở EURO 2020 diễn ra vào hè 2021. Kết quả, Low lại “thoát nạn” và tiếp tục được tin tưởng cho đến ít nhất là hết giải vô địch các quốc gia châu Âu.

“DFB thống nhất rằng, các mục tiêu quan trọng gồm vượt qua vòng loại EURO, tiếp tục có mặt ở League A của Nations League và nằm trong nhóm hạt giống số 1 vòng loại World Cup đều đã được hoàn thành. Do vậy, Joachim Low tiếp tục nhận được sự tin tưởng của DFB.

Thất bại trước Tây Ban Nha cũng đã được thảo luận giữa HLV trưởng đội tuyển quốc gia và DFB. Với tất cả, đó là một nỗi thất vọng nhưng chúng tôi cần tập trung để hướng đến mục tiêu cao hơn là EURO vào năm tới. Joachim Low sẽ có trách nhiệm mang lại thành công tại giải đấu này”, trích thông báo từ phía DFB.

Như vậy, tương lai của Low đã chính thức được ấn định. Tuy nhiên, NHM vẫn thắc mắc liệu DFB có đề cập đến việc gọi lại 3 công thần gồm Thomas Muller, Jerome Boateng cùng Mats Hummels với chiến lược gia 60 tuổi hay không. Từ tháng 3 năm ngoái, 3 cái tên dày dặn kinh nghiệm này đã bị ông loại khỏi mọi kế hoạch để trao cơ hội cho các cầu thủ trẻ, bất chấp phong độ của họ ở CLB có ra sao đi chăng nữa.', 2, CAST(N'2020-11-29T00:00:00.000' AS DateTime), 54, 3, 4, 1, 0)
INSERT [dbo].[TinTuc] ([id], [title], [tomTat], [thumb], [cover], [noiDung], [id_User], [ngayDang], [luotXem], [doUuTien], [idLoai], [idGiaiDau], [tinhTrang]) VALUES (6, N'Zidane cảnh báo M.U: Varane không phải để bán!', N'Mới đây, HLV Zinedine Zidane vừa lên tiếng khẳng định Real Madrid sẽ không bán Raphael Varane bằng bất cứ giá nào.', N'news_thumbnail3.jpg', N'http://media.bongda.com.vn/files/thach.pham/2020/12/01/gettyimages-1284397406-0541.jpg', N'Trong suốt kỳ chuyển nhượng hè 2019, Man Utd được cho là rất muốn chiêu mộ một trung vệ chất lượng để đá cặp cùng đội trưởng Harry Maguire. Đây là vị trí mà HLV Ole Gunnar Solskjaer rất muốn bổ sung vào đội hình. Tuy nhiên, cuối cùng đã không có thương vụ nào xảy ra.

Mặc dù vậy, M.U được cho là đã quay trở lại với kế hoạch tìm trung vệ. Cách đây ít ngày, báo chí liên tục đưa tin Raphael Varane đã lọt vào tầm ngắm của Quỷ đỏ. Họ đã bắt đầu thăm dò khả năng có thể đưa ngôi sao người Pháp về Old Trafford vào hè năm sau.

Tuy nhiên, trong những phát biểu mới nhất, HLV Zinedine Zidane đã dập tắt mọi lời đồn đoán. Chiến lược gia người Pháp khẳng định chắc nịch rằng Varane không phải là cầu thủ để bán bởi có vai trò vô cùng quan trọng đối với Real Madrid. 

“Không chỉ riêng tôi muốn giữ Varane ở lại. Cậu ấy là một phần của Real Madrid. Chúng tôi đã rất may mắn khi có thể đưa cậu ấy về CLB. 

Varane đã có một sự nghiệp tuyệt vời. Từ khi đến đây, cậu ấy đã gặt hái được rất nhiều thành công. Đối với Real, đối với HLV là tôi hay với tất cả mọi người nói chung ở CLB, Varane không phải cầu thủ để bán. Điều này là rất rõ ràng. 

Người ta cứ nói về Varane không ngừng nghỉ. Mà không chỉ cậu ấy, tất cả các cầu thủ của chúng tôi đều dính dáng đến các tin đồn. Đối với riêng trường hợp của Varane, quan điểm của tôi luôn rất rõ ràng. Đây cũng là quan điểm của CLB”, HLV Zidane chia sẻ. 

Varane chính thức gia nhập Real vào hè 2011 với giá 10 triệu euro. Từ đó đến nay, sau hơn 9 năm gắn bó, trung vệ người Pháp đã có tổng cộng 329 lần ra sân, ghi 15 bàn thắng và có 7 kiến tạo cho Kền kền trắng. Cùng Los Blancos, anh đã giành được nhiều danh hiệu lớn nhỏ, trong đó có 4 chức vô địch Champions League và 3 La Liga. ', 2, CAST(N'2020-12-01T00:00:00.000' AS DateTime), 43, 2, 4, 1, 0)
INSERT [dbo].[TinTuc] ([id], [title], [tomTat], [thumb], [cover], [noiDung], [id_User], [ngayDang], [luotXem], [doUuTien], [idLoai], [idGiaiDau], [tinhTrang]) VALUES (7, N'Molde 0-3 Arsenal: Hoàn tất mục tiêu', N'Đánh bại Molde với tỉ số 3-0, Arsenal đã chính thức đoạt vé dự vòng knock-out Europa League sớm 2 vòng đấu.', N'news_thumbnail3.jpg', N'https://cdn.24h.com.vn/upload/4-2020/images/2020-12-01/Cavani-hoi-han-vi-thong-diep-gay-tranh-cai-co-nen-da-chinh-truoc-PSG-fdgh-1606820112-659-width640height480.jpg', N'Trái ngược với phong độ phập phù ở Premier League, Arsenal thi đấu rất thành công ở Europa League do nằm ở bảng đấu dễ thở. Rạng sáng nay, Pháo thủ tiếp tục giành chiến thắng với tỉ số 3-0 ở màn tái đấu Molde dù không sử dụng đội hình mạnh nhất. Với 12 điểm trọn vẹn, thầy trò Arteta đã chính thức giành vé vào vòng 1/16 sớm trước 2 vòng đấu.


Toàn thắng 4 trận, Arsenal sớm đoạt vé dự vòng 1/16 Europa League

Giống như các trận đấu trước ở Europa League, HLV Arteta đã cất nhiều trụ cột quan trọng ở màn tái đấu Molde. Mặc dù vậy, với những tên tuổi nổi bật như Pepe, Willock, Nelson, Lacazette hay Nketiah, hàng công của Pháo thủ vẫn được đánh giá rất cao trước đội bóng của Na Uy.

Thực tế, Molde là đội nhập cuộc tốt hơn. Với quyết tâm giành 3 điểm, đội bóng của Na Uy không ngần ngại đẩy cao đội hình chơi tấn công sau tiếng còi khai cuộc. Phút 15, Molde đã có cơ hội không thể tốt hơn để mở tỉ số nhưng tiền vệ Sheriff Sinyan lại dứt điểm khá tệ khi đối mặt khung thành rộng mở của Arsenal. Thay vì đệm bóng vào lưới trống, cầu thủ của đội chủ nhà lại dứt điểm đưa bóng tới đúng vị trí của thủ thành Runarsson.

Ở mặt trận tấn công, Arsenal có khá nhiều khoảng trống để thể hiện lối chơi tốc độ. Tuy nhiên, sự thiếu chính xác trong các pha phối hợp đã khiến Pháo thủ không tạo ra những cơ hội rõ rệt để mở tỉ số. Vì vậy, 45 phút đầu tiên đã kết thúc mà không có bàn thắng nào được ghi.

Khác với hiệp 1, ở hiệp đấu thứ 2, Arsenal khởi đầu tốt hơn. Phút 49, may mắn đã đứng về phía Molde khi cú đặt lòng hiểm hóc ngoài vòng cấm của Nicolas Pepe lại đưa bóng trúng xà ngang. Nicolas Pepe không quá tiếc nuối với pha bỏ lỡ này bởi chỉ 1 phút sau đó, với một cú đặt lòng khác trong vòng cấm, anh đã xé lưới Molde, đưa Arsenal vượt lên dẫn trước 1-0.

Hưng phấn sau bàn mở tỉ số, Arsenal tiếp tục vùng lên tấn công. Và chỉ mất thêm 5 phút, Pháo thủ đã ghi bàn thắng thứ 2. Từ cú căng ngang của Willock bên cánh phải, tài năng trẻ Reiss Nelson đã ập vào dứt điểm cận thành nâng tỉ số lên 2-0 cho Pháo thủ.


Arsenal bùng nổ với 3 bàn thắng trong hiệp đấu thứ 2

Ghi 2 bàn thắng chóng vánh, Arsenal đã tạo ra lợi thế rất lớn. HLV Arteta lần lượt tung Ceballos, Smith-Rowe, Tierney và Balogun vào sân. Pháo thủ vẫn tạo ra thế trận lấn lướt về số cơ hội nhưng các chân sút của họ lại tỏ ra khá vô duyên. Ở phút 71, Lacazette tung ra cú sút rất hiểm hóc ở mép ngoài vòng cấm nhưng thủ thành Linde đã xuất sắc bay người cứu thua.

Tạo ra nhiều cơ hội, cuối cùng Arsenal đã có được bàn thắng thứ 3 ở phút 83. Nhận đường chuyền của Smith-Rowe, Folarin Balogun đã xoay người dứt điểm hạ gục thủ thành Linde, ấn định chiến thắng 3-0 cho Pháo thủ.

Với chiến thắng này, Arsenal đã giành trọn vẹn 12 điểm sau 4 lượt trận. Như vậy, thầy trò HLV Arteta đã sớm đoạt vé dự vòng 1/16. Ở 2 trận hạ màn vòng bảng, họ sẽ lần lượt tiếp đón Rapid Wien trên sân nhà và làm khách của Dundalk. 

ĐỘI HÌNH THI ĐẤU

MOLDE: Linde, Wingo, Gregersen (Knudtzon 85''), Sinyan, Risa (Pedersen 82''), Aursnes, Hussain (Omoijuanto 61''), Hestad, Eikrem (Brynhidsen 81''), Ellingsen, James (Boly 61'').

ARSENAL: Runarsson, Soares, Mustafi, David Luiz (Holding 45''), Maitland-Niles, Xhaka (Ceballos 62''), Pepe, Willock (Tierney 75''), Nelson, Lacazette (Smith-Rowe 75''), Nketiah (Balogun 82'').', 2, CAST(N'2020-12-01T00:00:00.000' AS DateTime), 123, 2, 5, 1, 0)
INSERT [dbo].[TinTuc] ([id], [title], [tomTat], [thumb], [cover], [noiDung], [id_User], [ngayDang], [luotXem], [doUuTien], [idLoai], [idGiaiDau], [tinhTrang]) VALUES (8, N'Toàn thắng 4 trận, Man City sớm đoạt vé dự vòng 1/8', N'Bàn thắng duy nhất của tiền vệ Phil Foden đã giúp Man City giành trọn 3 điểm ở màn tái đấu Olympiacos. Với 12 điểm trọn vẹn sau 4 lượt trận, thầy trò Guardiola đã sớm đoạt vé dự vòng 1/8 Champions League.', N'news_thumbnail3.jpg', N'https://cdn.24h.com.vn/upload/4-2020/images/2020-11-20/Nhan-dinh-bong-da-MU---West-Brom-Quan-bai-tay-Cavani-tranh-bi-kich-43-nam-0_gettyimages-1249244206-1605887303-319-width660height439.jpg', N'Nằm ở bảng đấu dễ thở, Man City đã thể hiện sức mạnh vượt trội với 3 trận ra quân toàn thắng. Ở lượt trận thứ 4 đêm qua, thầy trò Guardiola tiếp tục ca khúc khải hoàn với chiến thắng 1-0 trên sân của Olympiacos. Bàn thắng duy nhất của trận đấu được ghi bởi Phil Foden. Với 12 điểm trọn vẹn, Man City đã sớm đoạt vé dự vòng 1/8 Champions League.


Với 12 điểm trọn vẹn, Man City sớm đoạt vé dự vòng 1/8

Trong chuyến viếng thăm Hy Lạp đêm qua, Man City không mang theo ngôi sao số 1 là Kevin De Bruyne. Dù vậy, hàng tiền vệ của Pep vẫn đáng gờm với Rodri, Gundogan và Foden. Trên hàng công, bộ 3 Bernardo Silva - Jesus - Sterling được trao cơ hội. Aguero đã trở lại nhưng xuất phát từ băng ghế dự bị.

Man City chỉ cần kết quả hòa để sớm đoạt vé đi tiếp nhưng Pep Guardiola không giấu giếm quyết tâm giành 3 điểm. Ngay sau tiếng còi khai cuộc, gã nhà giàu thành Manchester đã triển khai thế trận tấn công với tỉ lệ cầm bóng vượt trội. Chỉ trong vòng hơn 10 phút, các vị khách đã tung ra 3 cú dứt điểm trúng đích.

Tạo ra thế trận áp đảo nhưng Man City lại gặp khó khăn trước hàng thủ số đông của Olympiacos. Các pha hãm thành của đội bóng Anh vẫn thiếu đi sự chính xác để biến thành nhưng cơ hội rõ rệt. Cộng với sự xuất sắc của thủ thành Sa, Man City đã bế tắc trong hơn nửa giờ thi đấu.

Trong thế trận bế tắc, Man City cần những khoảnh khắc ngôi sao để tạo ra sự khác biệt. Và Raheem Sterling đã lên tiếng ở phút 36 với cú giật gót đầy bất ngờ cho Phil Foden. Tài năng trẻ người Anh không bỏ lỡ cơ hội hạ gục thủ thành Sa đưa Man City vượt lên dẫn trước 1-0.

Trong phần còn lại của hiệp 1, Man City còn tạo ra 2 cơ hội nữa nhưng Sterling đều bỏ lỡ một cách đáng tiếc. Hiệp 1 kết thúc với tỉ số 1-0 tạm nghiêng về đội bóng nước Anh.


Foden ghi bàn thắng duy nhất mang về chiến thắng cho Man City

Bước sang hiệp đấu thứ 2, thế trận không thay đổi đáng kể! Man City vẫn tạo ra thế trận áp đảo về tỉ lệ cầm bóng. Dù cần bàn thắng gỡ hòa nhưng Olympiacos gần như không có bóng để triển khai tấn công. Trong thế trận đó, đội bóng của Guardiola đã tạo ra nhiều cơ hội ghi bàn.

Nhưng khá đen đủi cho Man City là ở trận đấu này, các chân sút của họ tỏ ra khá vô duyên trước khung thành của Olympiacos. Rất nhiều cơ hội mà Man City tạo ra ở hiệp đấu thứ 2 đều bị Jesus, Gundogan, Sterling và Bernardo Silva bỏ lỡ.

Ở thời điểm cuối trận, Pep đã thay đổi hàng công với sự góp mặt của Riyad Mahrez và Sergio Aguero (thay Sterling và Jesus). Mặc dù vậy, Man City vẫn không thể xé lưới Olympiacos lần thứ 2. Bên kia chiến tuyến, Olympiacos vùng lên tấn công ở thời điểm cuối trận nhưng cũng không thể giật lại 1 điểm từ tay Man City.

Với chiến thắng 1-0, Man City đã đoạt vé dự vòng 1/8 Champions League. Thầy trò Guardiola vẫn đang dẫn đầu bảng C với 12 điểm, hơn 3 điểm so với Porto.

ĐỘI HÌNH THI ĐẤU

OLYMPIACOS: Sa; Semedo, Ba, Cisse; Drager (Vrousai 66''), M''Vila, Pepe (Bouchalakis 71''), Rafinha; Camara, Masouras (Soudani 78''), Fortounis.

MAN CITY: Ederson, Cancelo, Dias, Stones, Mendy (Zinchenko 78''), Gundogan (Doyle 86''), Rodrigo (Fernandinho 76''), Foden, Bernardo, Sterling (Mahrez 76''), Jesus (Agüero 78'').

', 2, CAST(N'2020-12-01T00:00:00.000' AS DateTime), 112, 2, 5, 1, 0)
INSERT [dbo].[TinTuc] ([id], [title], [tomTat], [thumb], [cover], [noiDung], [id_User], [ngayDang], [luotXem], [doUuTien], [idLoai], [idGiaiDau], [tinhTrang]) VALUES (9, N'Liverpool 0-2 Atalanta: Kết cục khó lường', N'Những tưởng Liverpool sẽ có thêm một chiến thắng khác trước Atalanta, nhưng đội bóng của Jurgen Klopp đã thua trắng ngay tại Anfield.', N'news_thumbnail3.jpg', N'https://cdn.24h.com.vn/upload/4-2020/images/2020-11-20/Nhan-dinh-bong-da-MU---West-Brom-Quan-bai-tay-Cavani-tranh-bi-kich-43-nam-0_gettyimages-1284403932-1605887303-154-width660height439.jpg', N'Ở trận lượt đi, Liverpool đã đè bẹp Atalanta với tỉ số 5-0 ngay tại Italia. Chính vì thế, nhiều người tin rằng The Reds sẽ đánh bại đối thủ tại Anfield ở trận lượt về, qua đó giành vé sớm vào vòng knock-out Champions League mùa này. Tuy nhiên, điều đó đã không xảy ra.

Ở trận này, HLV Jurgen Klopp đã thay đổi một loạt vị trí so với chiến thắng trước Leicester City cách đây ít ngày. Đáng chú ý, "hung thần" của Atalanta, Diogo Jota  và tiền đạo Firmino được cho nghỉ trong khi Mo Salah trở lại sau Covid-19. HLV người Đức cũng lần đầu tiên sử dụng hàng thủ chắp vá với 3 cái tên non kinh nghiệm là Rhys Williams, Konstantinos Tsimikas và Neco Williams. 

Có thể nói với 9 điểm trong tay, Klopp và Liverpool tỏ ra tự tin thái quá trước Atalanta, đội tung ra đội hình gần như mạnh nhất có thể. Ngay sau tiếng còi khai cuộc, Atalanta đã tổ chức chơi áp sát nhanh, vây bắt liên tục khiến các cầu thủ áo đỏ lúng túng. Trong suốt hiệp một, đội khách hoàn toàn làm chủ sân đấu và liên tục tạo ra cơ hội, trong khi Liverpool rơi vào thế bế tắc.

Salah mờ nhạt trong ngày trở lại

Phút thứ 9, Robin Gosens thoát xuống bên cánh trái và tung ra cú sút cực mạnh từ góc hẹp khiến thủ môn Alisson phải vất vả cứu thua. Ít phút sau, đến lượt Alejandro Gomez có cơ hội sau pha mất bóng của Jones, nhưng tiền đạo người Argentina lại sút thiếu chính xác. Lúc này, Liverpool cố gắng lấy lại thế trận và chơi giằng co với đội khách. Gần 20 phút sau đó diễn ra khá buồn tẻ khi không có cơ hội nào thực sự xảy ra.

Phút 44, Liverpool mới có tình huống hãm thành nguy hiểm đầu tiên, nhưng Salah lại sút bóng vọt xà ngang. Tỉ số 0-0 được giữ hết hiệp một. Bước sang hiệp hai, tình thế không thay đổi, Atalanta vẫn là đội nhỉnh hơn trong khi Liverpool chơi rất chật vật với hàng thủ non nớt. Cuối cùng, điều gì phải đến cũng đến. Phút 60, từ đường tạt đẹp mắt của Gomez, Josip Ilicic đã băng vào đệm bóng cận thành, ghi bàn mở tỉ số cho Atalanta.

Hàng thủ non nớt khiến Liverpool trả giá

Sau bàn thua, Klopp thực hiện liền 4 sự thay đổi. Jota, Firmino, Robertson và Fabinho được tung vào sân thay Origi, Salah, Wijnaldum và Tsimikas. Tuy nhiên, các ngôi sao này chưa kịp làm gì, Liverpool đã thủng lưới bàn thứ hai. Phút 64, vẫn là Gomez tạt bóng từ cánh trái, nhưng Hans Hateboer không dứt điểm ngày mà đánh đầu chuyền bóng cho Gosens ghi bàn ở tư thế không ai kèm. Trong pha bóng này, trung vệ trẻ Rhys Williams đã phạm sai lầm nghiêm trọng khi bỏ mặc Gosens thoát xuống hạ Alisson.

Alisson bất lực trước Gosens

Dẫn trước 2-0, Atalanta chủ động chơi chậm lại, HLV Gasperini lần lượt sử dụng các quyền thay người để tung Zapata và Mojica vào sân. Lúc này, Liverpool rất cố gắng đẩy cao đội hình, nhưng họ không thể phối hợp tấn công trước hàng thủ kín kẽ của đối thủ. Cuối trận, Klopp chơi tất tay khi tung Takumi Minamino vào thay Joel Matip. Thế nhưng, sự thay đổi này cũng không mang lại kết quả và Liverpool phải chấp nhận thất bại với tỉ số 0-2.

Trận thua này không khiến Liverpool mất ngôi đầu bảng D, nhưng họ chỉ còn hơn Atalanta và Ajax 2 điểm. Điều này có nghĩa Liverpool phải rất cẩn thận trong trận đấu tiếp theo với Ajax nếu không muốn "đêm dài lắm mộng".', 2, CAST(N'2020-12-01T00:00:00.000' AS DateTime), 25, 2, 5, 4, 0)
INSERT [dbo].[TinTuc] ([id], [title], [tomTat], [thumb], [cover], [noiDung], [id_User], [ngayDang], [luotXem], [doUuTien], [idLoai], [idGiaiDau], [tinhTrang]) VALUES (10, N'PSG tính ‘buông’ Mbappe để Neymar được tái hợp Messi', N'Theo nguồn tin uy tín tại Pháp, PSG đang gặp khó trong việc giữ chân Kylian Mbappe và có thể để tiền đạo người Pháp ra đi, lấy chỗ cho Lionel Messi.', N'news_thumbnail3.jpg', N'Tin/images/11hoho.jpg', N'<img src="/images/Article/Upload/201204_094905_87.jpg" alt="" width="500" align="none"><img src="http://bongdaso.com/images/Article/Upload/201204_094905_87.jpg" alt="haha" align="none"><div style="text-align: center;"><font size="2" face="arial" color="#0000ff"><i>Để Messi tái hợp Neymar, Mbappe sẽ rời PSG?</i></font></div><div style="text-align: justify;"><font size="2" face="arial"><br></font></div><div style="text-align: justify;"><font size="2" face="arial">Sau chiến thắng 3-1 của PSG trước Man Utd, Neymar đã công khai mong muốn được sát cánh với Lionel Messi một lần nữa. Siêu sao người Brazil thậm chí còn tuyên bố chắc nịch rằng mục tiêu này phải được hiện thực hóa vào mùa giải tới dù không nói rõ là ở Paris hay Barcelona.</font></div><div style="text-align: justify;"><font size="2" face="arial"><br></font></div><div style="text-align: justify;"><font size="2" face="arial">Tuy nhiên, theo báo giới Pháp, Neymar không còn nuôi ý định trở lại Barcelona nên nguyện vọng của anh chính là được tái hợp với Messi ở PSG. 2 nhà báo uy tín hàng đầu tại đất nước hình lục lăng là Loic Tanzi và Mohamed Bouhafsi đồng loạt khẳng định khẳng định điều đó.</font></div><div style="text-align: justify;"><font size="2" face="arial"><br></font></div><div style="text-align: justify;"><font size="2" face="arial">Theo Tanzi cũng như Bouhafsi, thực tế Neymar đã chèo kéo Messi về với PSG ngay từ kì chuyển nhượng hè vừa qua. Siêu sao người Brazil nói với thủ quân Barca rằng anh thực sự hạnh phúc tại Parc des Princes, đồng thời thuyết phục M10 bằng kế hoạch đầy tham vọng của CLB thủ đô Paris.</font></div><div style="text-align: justify;"><font size="2" face="arial"><br></font></div><font size="2" face="arial"><div class="art_center_banner"><iframe scrolling="no" marginwidth="0" marginheight="0" src="_BannerSlot.aspx?PCat=*%2cNewsPage%2cArticle.aspx&amp;Pos=ARTCENTER&amp;rnd=301193&amp;TopMenu=-1&amp;Lang=VN&amp;Page=Article.aspx%3fArticleID%3d224074" width="640" height="100" frameborder="0"><p>Liên hệ quảng cáo: 04.3719.1456</p></iframe></div></font><div style="text-align: justify;"><font size="2" face="arial">Mức phí chuyển nhượng chính là rào cản khiến PSG phải chấp nhận từ bỏ Messi ở phiên chợ hè vừa qua nhưng họ sẽ có cơ hội lớn vào hè 2021, thời điểm tuyển thủ Argentina hết hợp đồng với Barca. Tất nhiên, nhà đương kim vô địch Ligue 1 vẫn sẽ phải bỏ ra rất nhiều tiền, bao gồm phí lót tay cùng khoản lương thưởng “trên trời”.</font></div><div style="text-align: justify;"><font size="2" face="arial"><br></font></div><div style="text-align: justify;"><font size="2" face="arial">Bởi vậy, theo Tanzi và Bouhafsi, PSG có thể để Kylian Mbappe ra đi vào hè 2021. Tiền đạo người Pháp chỉ còn hợp đồng đến hè 2022 nhưng bất chấp những nỗ lực đầy thiện chí từ BLĐ đội bóng suốt thời gian qua, anh vẫn không có ý định gia hạn.</font></div><div style="text-align: justify;"><font size="2" face="arial"><br></font></div><div style="text-align: justify;"><font size="2" face="arial">Nếu Mbappe nhất quyết không kí hợp đồng mới, PSG sẽ phải tính tới việc bán chân sút 21 tuổi vào hè 2021 để tránh cảnh mất trắng. Đội bóng Pháp có khả năng thu về không dưới 200 triệu euro từ thương vụ này và giúp họ có đủ ngân sách để chiêu mộ Messi.</font></div><div style="text-align: justify;"></div>', 1, CAST(N'2020-12-07T13:15:37.043' AS DateTime), 23, 0, 3, 2, 2)
INSERT [dbo].[TinTuc] ([id], [title], [tomTat], [thumb], [cover], [noiDung], [id_User], [ngayDang], [luotXem], [doUuTien], [idLoai], [idGiaiDau], [tinhTrang]) VALUES (11, N'Huyền thoại Paolo Rossi qua đời ở tuổi 64', N'Người hùng World Cup 1982 của đội tuyển Italia, ông Paolo Rossi đã trút hơi thở cuối cùng ở tuổi 64.', N'news_thumbnail3.jpg', N'Tin/images/11haha.png', N'<font size="2" face="arial">Thông tin này đã được phát trên RAI Sport bởi BTV Enrico Varriale. Sau đó, vợ của Paolo Rossi, bà Federica Cappelletti cũng xác nhận thông tin trên mạng xã hội. NHM bóng đá Italia không khỏi thương tiếc khi phải nói lời từ biệt tới huyền thoại Paolo Rossi.</font><div style="text-align: justify;"><font size="2" face="arial"><br></font></div><div style="text-align: justify;"><font size="2" face="arial">Paolo Rossi có mối quan hệ khá thân thiết với Rai Sport bởi trong nhiều năm qua, ông làm việc ở đài truyền hình này với tư cách bình luận viên. BTV Enrico Varriale không giấu nổi nỗi buồn khi đưa tin về cái chết của huyền thoại người Italia "Paolo Rossi đã rời bỏ chúng ta. Chúng ta không thể quên Pablito với những khoảnh khắc đáng nhớ vào mùa hè năm 1982. Yên nghỉ nhé Paolo".</font></div><div style="text-align: justify;"><font size="2" face="arial"><br></font></div><font size="2" face="arial"><div class="art_center_banner"><iframe scrolling="no" marginwidth="0" marginheight="0" src="_BannerSlot.aspx?PCat=*%2cNewsPage%2cArticle.aspx&amp;Pos=ARTCENTER&amp;rnd=454763&amp;TopMenu=-1&amp;Lang=VN&amp;Page=Article.aspx%3fArticleID%3d224253" width="640" height="100" frameborder="0"><p>Liên hệ quảng cáo: 04.3719.1456</p></iframe></div></font><div style="text-align: justify;"><font size="2" face="arial">Paolo Rossi sinh năm 1956 ở Prato (Italia). Trong sự nghiệp thi đấu, ông từng khoác áo Juventus, Como, Vicenza, Perugia, Milan và Hellas Verona. Khoảnh khắc chói sáng nhất trong sự nghiệp của Rossi là chiến tích đưa Italia lên ngôi vô địch World Cup 1982.</font></div><div style="text-align: justify;"><font size="2" face="arial"><br></font></div><div style="text-align: center;"><font size="2" face="arial"><img src="/images/Article/Upload/201210_091940_163.jpg" alt="" align="none"><br><i><font color="#0000ff">Khoảnh khắc Paolo Rossi nâng cao chức vô địch World Cup vào năm 1982</font></i></font></div><div style="text-align: justify;"><font size="2" face="arial"><br></font></div><div style="text-align: justify;"><font size="2" face="arial">Ở giải đấu đó, Paolo Rossi đã ghi 6 bàn thắng, trong đó có 3 bàn ở bán kết và chung kết. Cùng với ngôi vô địch, ông cũng đã được vinh danh với giải Vua phá lưới và cầu thủ xuất sắc nhất. Cũng trong năm 1982, Rossi đã được nhận danh hiệu Quả bóng Vàng.</font></div><div style="text-align: justify;"><font size="2" face="arial"><br></font></div><div style="text-align: justify;"><font size="2" face="arial">Sự góp mặt của Paolo Rossi ở World Cup 1982 là bất ngờ lớn bởi ông vừa hoàn tất án treo giò 2 năm do bê bối dàn xếp tỉ số. Nhưng đúng ở thời điểm đó, Rossi lại tỏa sáng, đưa Italia từ đội bóng bị nghi ngờ trở thành nhà vô địch thế giới. Tính tới khi từ giã màu áo Azzurri, Rossi ghi được 20 bàn sau 48 trận.</font></div><div style="text-align: justify;"><font size="2" face="arial"><br></font></div><div style="text-align: justify;"><font size="2" face="arial">Ở cấp CLB, Paolo Rossi từng cùng Juventus giành nhiều danh hiệu lớn, trong đó có 2 chức vô địch Serie A và 1 danh hiệu Champions League (1985). Vào năm 2004, ông đã được FIFA ghi tên vào danh sách 125 nhân vật vĩ đại nhất của bóng đá thế giới.</font></div>', 1, CAST(N'2020-12-10T17:04:09.270' AS DateTime), 0, 0, 2, 4, 0)
GO
INSERT [dbo].[Users] ([id], [userName], [pass], [id_loai]) VALUES (1, N'admin', N'admin', 1)
INSERT [dbo].[Users] ([id], [userName], [pass], [id_loai]) VALUES (2, N'partner', N'123', 2)
INSERT [dbo].[Users] ([id], [userName], [pass], [id_loai]) VALUES (3, N'viewer', N'123', 3)
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
/****** Object:  StoredProcedure [dbo].[TinTuc_Insert]    Script Date: 20/12/2020 9:00:11 SA ******/
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
/****** Object:  StoredProcedure [dbo].[Users_Search]    Script Date: 20/12/2020 9:00:11 SA ******/
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
