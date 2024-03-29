USE [QLTiemChungVaccine]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 18/12/2023 8:46:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaHD] [int] NOT NULL,
	[MaVC] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[ThanhTien] [int] NULL,
 CONSTRAINT [pk_MaHD_MaVC_CTHD] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaVC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 18/12/2023 8:46:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[MaKH] [int] NOT NULL,
	[MaVC] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[TongThanhTien] [int] NULL,
	[TongSL] [int] NULL,
 CONSTRAINT [pk_MaKH_MaVC_GioHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC,
	[MaVC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 18/12/2023 8:46:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[NgayLap] [datetime] NULL,
	[MaNTC] [int] NULL,
	[ThoiGianTiem] [datetime] NULL,
	[TongSL] [int] NULL,
	[TongTien] [int] NULL,
	[TrangThaiHD] [nvarchar](100) NULL,
 CONSTRAINT [pk_MaHD_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 18/12/2023 8:46:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTenKH] [nvarchar](100) NOT NULL,
	[GioiTinhKH] [nvarchar](5) NOT NULL,
	[NgaySinhKH] [date] NOT NULL,
	[SoDienThoaiKH] [varchar](10) NOT NULL,
	[EmailKH] [varchar](50) NULL,
	[DiaChiKH] [nvarchar](100) NOT NULL,
	[TenTK] [varchar](30) NULL,
 CONSTRAINT [pk_MaKH_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiVaccine]    Script Date: 18/12/2023 8:46:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiVaccine](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [pk_MaLoai_LoaiVaccin] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoVaccine]    Script Date: 18/12/2023 8:46:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoVaccine](
	[MaLoVC] [int] IDENTITY(1,1) NOT NULL,
	[HanSuDung] [datetime] NULL,
	[MaVC] [int] NULL,
	[SoLuongLoVC] [int] NULL,
 CONSTRAINT [pk_MaLoVC_LoVaccine] PRIMARY KEY CLUSTERED 
(
	[MaLoVC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MoiQuanHe]    Script Date: 18/12/2023 8:46:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MoiQuanHe](
	[MaQH] [int] IDENTITY(1,1) NOT NULL,
	[TenQH] [nvarchar](30) NOT NULL,
 CONSTRAINT [pk_TenQ_MoiQuanHe] PRIMARY KEY CLUSTERED 
(
	[MaQH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiTiemChung]    Script Date: 18/12/2023 8:46:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiTiemChung](
	[MaNTC] [int] IDENTITY(1,1) NOT NULL,
	[HoTenNTC] [nvarchar](100) NOT NULL,
	[GioiTinhNTC] [nvarchar](5) NOT NULL,
	[NgaySinhNTC] [date] NOT NULL,
	[SoDienThoaiNTC] [varchar](10) NOT NULL,
	[DiaChiNTC] [nvarchar](100) NOT NULL,
	[MaQH] [int] NULL,
	[MaKH] [int] NULL,
 CONSTRAINT [pk_MaNTC_NguoiTiemChung] PRIMARY KEY CLUSTERED 
(
	[MaNTC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCC]    Script Date: 18/12/2023 8:46:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCC](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](100) NOT NULL,
	[DiaChiNCC] [nvarchar](100) NOT NULL,
	[SoDienThoaiNCC] [varchar](10) NOT NULL,
 CONSTRAINT [pk_MaNCC_NhaCC] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 18/12/2023 8:46:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[CCCD] [varchar](12) NOT NULL,
	[HoTenNV] [nvarchar](100) NOT NULL,
	[GioiTinhNV] [nvarchar](5) NOT NULL,
	[SoDienThoaiNV] [varchar](10) NOT NULL,
	[DiaChiNV] [nvarchar](max) NOT NULL,
	[NgaySinhNV] [date] NULL,
	[EmailNV] [varchar](50) NULL,
	[TenTK] [varchar](30) NULL,
 CONSTRAINT [pk_MaNV_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhapKho]    Script Date: 18/12/2023 8:46:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhapKho](
	[MaNK] [int] NOT NULL,
	[MaLoVC] [int] NOT NULL,
	[ThoiGianNK] [datetime] NULL,
	[MaNV] [int] NULL,
	[MaNCC] [int] NULL,
 CONSTRAINT [pk_MaNK_MaLoVC_NhapKho] PRIMARY KEY CLUSTERED 
(
	[MaNK] ASC,
	[MaLoVC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhomVaccine]    Script Date: 18/12/2023 8:46:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhomVaccine](
	[MaNhom] [int] IDENTITY(1,1) NOT NULL,
	[TenNhom] [nvarchar](50) NOT NULL,
	[MaLoai] [int] NULL,
 CONSTRAINT [fk_MaNhom_NhomVaccin] PRIMARY KEY CLUSTERED 
(
	[MaNhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 18/12/2023 8:46:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenTK] [varchar](30) NOT NULL,
	[MatKhau] [varchar](max) NOT NULL,
 CONSTRAINT [pk_TenTK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[TenTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vaccine]    Script Date: 18/12/2023 8:46:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vaccine](
	[MaVC] [int] IDENTITY(1,1) NOT NULL,
	[TenVC] [nvarchar](100) NOT NULL,
	[HinhAnhVC] [nvarchar](max) NULL,
	[NguonGocVC] [nvarchar](50) NULL,
	[MoTaVC] [nvarchar](max) NULL,
	[TinhTrangVC] [nvarchar](10) NOT NULL,
	[GiaBanVC] [int] NULL,
	[GiaNhapVC] [int] NULL,
	[SoLuongVC] [int] NULL,
	[MaLoai] [int] NULL,
	[MaNhom] [int] NULL,
 CONSTRAINT [pk_MaVC_Vaccine] PRIMARY KEY CLUSTERED 
(
	[MaVC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaVC], [SoLuong], [ThanhTien]) VALUES (21, 1, 1, 2950000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaVC], [SoLuong], [ThanhTien]) VALUES (21, 2, 1, 1790000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaVC], [SoLuong], [ThanhTien]) VALUES (22, 3, 1, 356000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaVC], [SoLuong], [ThanhTien]) VALUES (22, 4, 1, 1190000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaVC], [SoLuong], [ThanhTien]) VALUES (1022, 1, 1, 2950000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaVC], [SoLuong], [ThanhTien]) VALUES (1022, 9, 1, 315000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaVC], [SoLuong], [ThanhTien]) VALUES (1023, 1, 1, 2950000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaVC], [SoLuong], [ThanhTien]) VALUES (1023, 2, 2, 3580000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaVC], [SoLuong], [ThanhTien]) VALUES (1023, 6, 1, 165000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaVC], [SoLuong], [ThanhTien]) VALUES (1024, 29, 1, 17082432)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaVC], [SoLuong], [ThanhTien]) VALUES (1025, 5, 1, 795000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaVC], [SoLuong], [ThanhTien]) VALUES (1026, 2, 1, 1790000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaVC], [SoLuong], [ThanhTien]) VALUES (1027, 1, 1, 2950000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaVC], [SoLuong], [ThanhTien]) VALUES (1027, 2, 1, 1790000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaVC], [SoLuong], [ThanhTien]) VALUES (1028, 1, 1, 2950000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaVC], [SoLuong], [ThanhTien]) VALUES (1028, 4, 1, 1190000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaVC], [SoLuong], [ThanhTien]) VALUES (1029, 3, 1, 356000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaVC], [SoLuong], [ThanhTien]) VALUES (1029, 10, 1, 225000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaVC], [SoLuong], [ThanhTien]) VALUES (1030, 1, 1, 2950000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaVC], [SoLuong], [ThanhTien]) VALUES (1030, 6, 1, 165000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaVC], [SoLuong], [ThanhTien]) VALUES (1031, 1, 1, 2950000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaVC], [SoLuong], [ThanhTien]) VALUES (1032, 9, 1, 315000)
GO
INSERT [dbo].[GioHang] ([MaKH], [MaVC], [SoLuong], [TongThanhTien], [TongSL]) VALUES (4, 1, 1, NULL, NULL)
INSERT [dbo].[GioHang] ([MaKH], [MaVC], [SoLuong], [TongThanhTien], [TongSL]) VALUES (6, 1, 1, NULL, NULL)
INSERT [dbo].[GioHang] ([MaKH], [MaVC], [SoLuong], [TongThanhTien], [TongSL]) VALUES (6, 2, 2, NULL, NULL)
INSERT [dbo].[GioHang] ([MaKH], [MaVC], [SoLuong], [TongThanhTien], [TongSL]) VALUES (6, 3, 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [MaNTC], [ThoiGianTiem], [TongSL], [TongTien], [TrangThaiHD]) VALUES (21, CAST(N'2023-12-11T00:04:45.643' AS DateTime), 21, CAST(N'2023-12-14T00:00:00.000' AS DateTime), 2, 4740000, N'Đã thanh toán')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [MaNTC], [ThoiGianTiem], [TongSL], [TongTien], [TrangThaiHD]) VALUES (22, CAST(N'2023-12-12T09:17:55.790' AS DateTime), 22, CAST(N'2023-12-30T00:00:00.000' AS DateTime), 2, 1546000, N'Đã thanh toán')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [MaNTC], [ThoiGianTiem], [TongSL], [TongTien], [TrangThaiHD]) VALUES (1022, CAST(N'2023-12-12T10:10:04.900' AS DateTime), 1022, CAST(N'2023-12-29T00:00:00.000' AS DateTime), 2, 3265000, N'Đã thanh toán')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [MaNTC], [ThoiGianTiem], [TongSL], [TongTien], [TrangThaiHD]) VALUES (1023, CAST(N'2023-12-12T16:53:39.567' AS DateTime), 1023, CAST(N'2023-12-23T00:00:00.000' AS DateTime), 4, 6695000, N'Đã thanh toán')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [MaNTC], [ThoiGianTiem], [TongSL], [TongTien], [TrangThaiHD]) VALUES (1024, CAST(N'2023-12-12T16:55:47.540' AS DateTime), 1024, CAST(N'2024-01-26T00:00:00.000' AS DateTime), 1, 17082432, N'Đã thanh toán')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [MaNTC], [ThoiGianTiem], [TongSL], [TongTien], [TrangThaiHD]) VALUES (1025, CAST(N'2023-12-12T17:00:19.740' AS DateTime), 1025, CAST(N'2023-12-22T00:00:00.000' AS DateTime), 1, 795000, N'Đang xác nhận')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [MaNTC], [ThoiGianTiem], [TongSL], [TongTien], [TrangThaiHD]) VALUES (1026, CAST(N'2023-12-12T17:02:24.980' AS DateTime), 1026, CAST(N'2023-12-30T00:00:00.000' AS DateTime), 1, 1790000, N'Đã thanh toán')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [MaNTC], [ThoiGianTiem], [TongSL], [TongTien], [TrangThaiHD]) VALUES (1027, CAST(N'2023-12-12T17:44:10.307' AS DateTime), 1027, CAST(N'2023-12-17T00:00:00.000' AS DateTime), 2, 4740000, N'Đã thanh toán')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [MaNTC], [ThoiGianTiem], [TongSL], [TongTien], [TrangThaiHD]) VALUES (1028, CAST(N'2023-12-13T12:55:27.360' AS DateTime), 1028, CAST(N'2023-12-17T00:00:00.000' AS DateTime), 2, 4140000, N'Đang xác nhận')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [MaNTC], [ThoiGianTiem], [TongSL], [TongTien], [TrangThaiHD]) VALUES (1029, CAST(N'2023-12-13T12:58:10.857' AS DateTime), 1029, CAST(N'2023-12-16T00:00:00.000' AS DateTime), 2, 581000, N'Đang xác nhận')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [MaNTC], [ThoiGianTiem], [TongSL], [TongTien], [TrangThaiHD]) VALUES (1030, CAST(N'2023-12-13T13:27:54.717' AS DateTime), 1030, CAST(N'2023-12-24T00:00:00.000' AS DateTime), 2, 3115000, N'Đã thanh toán')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [MaNTC], [ThoiGianTiem], [TongSL], [TongTien], [TrangThaiHD]) VALUES (1031, CAST(N'2023-12-13T13:45:25.307' AS DateTime), 1031, CAST(N'2024-01-06T00:00:00.000' AS DateTime), 1, 2950000, N'Đã thanh toán')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [MaNTC], [ThoiGianTiem], [TongSL], [TongTien], [TrangThaiHD]) VALUES (1032, CAST(N'2023-12-13T13:45:39.353' AS DateTime), 1032, CAST(N'2024-03-16T00:00:00.000' AS DateTime), 1, 315000, N'Đã thanh toán')
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [HoTenKH], [GioiTinhKH], [NgaySinhKH], [SoDienThoaiKH], [EmailKH], [DiaChiKH], [TenTK]) VALUES (4, N'Công Đạt', N'Nam', CAST(N'2002-11-02' AS Date), N'0156472846', N'dat@gmail.com', N'Hồ Chí Minh', N'Congdat')
INSERT [dbo].[KhachHang] ([MaKH], [HoTenKH], [GioiTinhKH], [NgaySinhKH], [SoDienThoaiKH], [EmailKH], [DiaChiKH], [TenTK]) VALUES (5, N'Nhựt Phi', N'Nam', CAST(N'2002-11-21' AS Date), N'0856472723', N'phi@gmail.com', N'Hồ Chí Minh', N'nhutphi')
INSERT [dbo].[KhachHang] ([MaKH], [HoTenKH], [GioiTinhKH], [NgaySinhKH], [SoDienThoaiKH], [EmailKH], [DiaChiKH], [TenTK]) VALUES (6, N'Phan Nguyễn', N'Nam', CAST(N'2002-07-25' AS Date), N'0758472632', N'phannguyen@gmail.com', N'Long An', N'phannguyen')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiVaccine] ON 

INSERT [dbo].[LoaiVaccine] ([MaLoai], [TenLoai]) VALUES (1, N'Vắc-xin gói')
INSERT [dbo].[LoaiVaccine] ([MaLoai], [TenLoai]) VALUES (2, N'Vắc-xin lẻ')
SET IDENTITY_INSERT [dbo].[LoaiVaccine] OFF
GO
SET IDENTITY_INSERT [dbo].[LoVaccine] ON 

INSERT [dbo].[LoVaccine] ([MaLoVC], [HanSuDung], [MaVC], [SoLuongLoVC]) VALUES (1, CAST(N'2023-12-29T00:00:00.000' AS DateTime), 23, 20)
INSERT [dbo].[LoVaccine] ([MaLoVC], [HanSuDung], [MaVC], [SoLuongLoVC]) VALUES (2, CAST(N'2024-02-10T00:00:00.000' AS DateTime), 14, 20)
INSERT [dbo].[LoVaccine] ([MaLoVC], [HanSuDung], [MaVC], [SoLuongLoVC]) VALUES (3, CAST(N'2023-12-30T00:00:00.000' AS DateTime), 1, 20)
INSERT [dbo].[LoVaccine] ([MaLoVC], [HanSuDung], [MaVC], [SoLuongLoVC]) VALUES (7, CAST(N'2023-12-30T00:00:00.000' AS DateTime), 11, 2)
INSERT [dbo].[LoVaccine] ([MaLoVC], [HanSuDung], [MaVC], [SoLuongLoVC]) VALUES (8, CAST(N'2023-12-29T00:00:00.000' AS DateTime), 8, 2)
SET IDENTITY_INSERT [dbo].[LoVaccine] OFF
GO
SET IDENTITY_INSERT [dbo].[MoiQuanHe] ON 

INSERT [dbo].[MoiQuanHe] ([MaQH], [TenQH]) VALUES (1, N'Bản thân')
INSERT [dbo].[MoiQuanHe] ([MaQH], [TenQH]) VALUES (2, N'Con')
INSERT [dbo].[MoiQuanHe] ([MaQH], [TenQH]) VALUES (3, N'Cha')
INSERT [dbo].[MoiQuanHe] ([MaQH], [TenQH]) VALUES (4, N'Mẹ')
INSERT [dbo].[MoiQuanHe] ([MaQH], [TenQH]) VALUES (5, N'Vợ')
INSERT [dbo].[MoiQuanHe] ([MaQH], [TenQH]) VALUES (6, N'Chồng')
INSERT [dbo].[MoiQuanHe] ([MaQH], [TenQH]) VALUES (7, N'Anh')
INSERT [dbo].[MoiQuanHe] ([MaQH], [TenQH]) VALUES (8, N'Chị')
INSERT [dbo].[MoiQuanHe] ([MaQH], [TenQH]) VALUES (9, N'Em')
INSERT [dbo].[MoiQuanHe] ([MaQH], [TenQH]) VALUES (10, N'Ông')
INSERT [dbo].[MoiQuanHe] ([MaQH], [TenQH]) VALUES (11, N'Bà')
INSERT [dbo].[MoiQuanHe] ([MaQH], [TenQH]) VALUES (12, N'Họ hàng')
INSERT [dbo].[MoiQuanHe] ([MaQH], [TenQH]) VALUES (13, N'Khác')
SET IDENTITY_INSERT [dbo].[MoiQuanHe] OFF
GO
SET IDENTITY_INSERT [dbo].[NguoiTiemChung] ON 

INSERT [dbo].[NguoiTiemChung] ([MaNTC], [HoTenNTC], [GioiTinhNTC], [NgaySinhNTC], [SoDienThoaiNTC], [DiaChiNTC], [MaQH], [MaKH]) VALUES (21, N'Công Đạt', N'Nam', CAST(N'2002-11-02' AS Date), N'0156472846', N'Hồ Chí Minh', 6, 4)
INSERT [dbo].[NguoiTiemChung] ([MaNTC], [HoTenNTC], [GioiTinhNTC], [NgaySinhNTC], [SoDienThoaiNTC], [DiaChiNTC], [MaQH], [MaKH]) VALUES (22, N'Công Đạt', N'Nam', CAST(N'2002-11-02' AS Date), N'0156472846', N'Hồ Chí Minh', 1, 4)
INSERT [dbo].[NguoiTiemChung] ([MaNTC], [HoTenNTC], [GioiTinhNTC], [NgaySinhNTC], [SoDienThoaiNTC], [DiaChiNTC], [MaQH], [MaKH]) VALUES (1022, N'Nhựt Phi', N'Nam', CAST(N'2002-11-21' AS Date), N'0856472723', N'Hồ Chí Minh', 1, 5)
INSERT [dbo].[NguoiTiemChung] ([MaNTC], [HoTenNTC], [GioiTinhNTC], [NgaySinhNTC], [SoDienThoaiNTC], [DiaChiNTC], [MaQH], [MaKH]) VALUES (1023, N'Nhựt Phi', N'Nam', CAST(N'2002-11-21' AS Date), N'0856472723', N'Hồ Chí Minh', 12, 5)
INSERT [dbo].[NguoiTiemChung] ([MaNTC], [HoTenNTC], [GioiTinhNTC], [NgaySinhNTC], [SoDienThoaiNTC], [DiaChiNTC], [MaQH], [MaKH]) VALUES (1024, N'Nhựt Phi', N'Nam', CAST(N'2002-11-21' AS Date), N'0856472723', N'Hồ Chí Minh', 8, 5)
INSERT [dbo].[NguoiTiemChung] ([MaNTC], [HoTenNTC], [GioiTinhNTC], [NgaySinhNTC], [SoDienThoaiNTC], [DiaChiNTC], [MaQH], [MaKH]) VALUES (1025, N'Phan Nguyễn', N'Nam', CAST(N'2002-07-25' AS Date), N'0758472632', N'Long An', 1, 6)
INSERT [dbo].[NguoiTiemChung] ([MaNTC], [HoTenNTC], [GioiTinhNTC], [NgaySinhNTC], [SoDienThoaiNTC], [DiaChiNTC], [MaQH], [MaKH]) VALUES (1026, N'Phan Nguyễn', N'Nam', CAST(N'2002-07-25' AS Date), N'0758472632', N'Long An', 1, 6)
INSERT [dbo].[NguoiTiemChung] ([MaNTC], [HoTenNTC], [GioiTinhNTC], [NgaySinhNTC], [SoDienThoaiNTC], [DiaChiNTC], [MaQH], [MaKH]) VALUES (1027, N'Công Đạt', N'Nam', CAST(N'2002-11-02' AS Date), N'0156472846', N'Hồ Chí Minh', 1, 4)
INSERT [dbo].[NguoiTiemChung] ([MaNTC], [HoTenNTC], [GioiTinhNTC], [NgaySinhNTC], [SoDienThoaiNTC], [DiaChiNTC], [MaQH], [MaKH]) VALUES (1028, N'Công Đạt', N'Nam', CAST(N'2002-11-02' AS Date), N'0156472846', N'Hồ Chí Minh', 1, 4)
INSERT [dbo].[NguoiTiemChung] ([MaNTC], [HoTenNTC], [GioiTinhNTC], [NgaySinhNTC], [SoDienThoaiNTC], [DiaChiNTC], [MaQH], [MaKH]) VALUES (1029, N'Công Đạt', N'Nam', CAST(N'2002-11-02' AS Date), N'0156472846', N'Hồ Chí Minh', 1, 4)
INSERT [dbo].[NguoiTiemChung] ([MaNTC], [HoTenNTC], [GioiTinhNTC], [NgaySinhNTC], [SoDienThoaiNTC], [DiaChiNTC], [MaQH], [MaKH]) VALUES (1030, N'Nhựt Phi', N'Nam', CAST(N'2002-11-21' AS Date), N'0856472723', N'Hồ Chí Minh', 1, 5)
INSERT [dbo].[NguoiTiemChung] ([MaNTC], [HoTenNTC], [GioiTinhNTC], [NgaySinhNTC], [SoDienThoaiNTC], [DiaChiNTC], [MaQH], [MaKH]) VALUES (1031, N'Nhựt Phi', N'Nam', CAST(N'2002-11-21' AS Date), N'0856472723', N'Hồ Chí Minh', 1, 5)
INSERT [dbo].[NguoiTiemChung] ([MaNTC], [HoTenNTC], [GioiTinhNTC], [NgaySinhNTC], [SoDienThoaiNTC], [DiaChiNTC], [MaQH], [MaKH]) VALUES (1032, N'Nhựt Phi', N'Nam', CAST(N'2002-11-21' AS Date), N'0856472723', N'Hồ Chí Minh', 1, 5)
SET IDENTITY_INSERT [dbo].[NguoiTiemChung] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaCC] ON 

INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChiNCC], [SoDienThoaiNCC]) VALUES (1, N'Nhà cung cấp thảo dược Mộc Châu 4', N'Sơn La 2', N'0944756334')
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChiNCC], [SoDienThoaiNCC]) VALUES (3, N'Nhà cung cấp thảo dược An Khang', N'Hồ Chí Minh', N'0944754442')
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChiNCC], [SoDienThoaiNCC]) VALUES (4, N'Nhà cung cấp thảo dược Điện Biên', N'Hà Nội', N'0947564734')
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChiNCC], [SoDienThoaiNCC]) VALUES (11, N'Nhà cung cấp thảo dược Bạc Liêu 3', N'Hồ Chí Minh', N'0944754442')
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChiNCC], [SoDienThoaiNCC]) VALUES (13, N'Nhà cung cấp thảo dược An Khang 2', N'Hồ Chí Minh', N'0947564734')
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChiNCC], [SoDienThoaiNCC]) VALUES (14, N'Nhà cung cấp thảo dược An Khang 233', N'Hồ Chí Minh', N'0947564734')
SET IDENTITY_INSERT [dbo].[NhaCC] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNV], [CCCD], [HoTenNV], [GioiTinhNV], [SoDienThoaiNV], [DiaChiNV], [NgaySinhNV], [EmailNV], [TenTK]) VALUES (1, N'043049834123', N'Trần Quốc Cường', N'Nam', N'0434682341', N'TP.HCM', CAST(N'2000-02-13' AS Date), N'CuongLuuBanSG@gmail.com', N'CuongDoLa')
INSERT [dbo].[NhanVien] ([MaNV], [CCCD], [HoTenNV], [GioiTinhNV], [SoDienThoaiNV], [DiaChiNV], [NgaySinhNV], [EmailNV], [TenTK]) VALUES (8, N'024241231313', N'Trần Nhựt Phi', N'Nam', N'0975647323', N'Hồ Chí Minh', CAST(N'2002-11-21' AS Date), N'PhiVNAD@gmail.com', N'admin')
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
INSERT [dbo].[NhapKho] ([MaNK], [MaLoVC], [ThoiGianNK], [MaNV], [MaNCC]) VALUES (1, 1, CAST(N'2023-12-17T12:25:06.303' AS DateTime), 8, 1)
INSERT [dbo].[NhapKho] ([MaNK], [MaLoVC], [ThoiGianNK], [MaNV], [MaNCC]) VALUES (2, 2, CAST(N'2023-12-17T12:28:57.540' AS DateTime), 8, 14)
INSERT [dbo].[NhapKho] ([MaNK], [MaLoVC], [ThoiGianNK], [MaNV], [MaNCC]) VALUES (3, 3, CAST(N'2023-12-17T12:31:34.400' AS DateTime), 8, 11)
INSERT [dbo].[NhapKho] ([MaNK], [MaLoVC], [ThoiGianNK], [MaNV], [MaNCC]) VALUES (4, 7, CAST(N'2023-12-17T13:54:04.207' AS DateTime), 8, 13)
INSERT [dbo].[NhapKho] ([MaNK], [MaLoVC], [ThoiGianNK], [MaNV], [MaNCC]) VALUES (4, 8, CAST(N'2023-12-17T13:54:04.207' AS DateTime), 8, 13)
GO
SET IDENTITY_INSERT [dbo].[NhomVaccine] ON 

INSERT [dbo].[NhomVaccine] ([MaNhom], [TenNhom], [MaLoai]) VALUES (1, N'Trẻ em (0-9 Tháng)', 1)
INSERT [dbo].[NhomVaccine] ([MaNhom], [TenNhom], [MaLoai]) VALUES (2, N'Trẻ em (0-12 Tháng)', 1)
INSERT [dbo].[NhomVaccine] ([MaNhom], [TenNhom], [MaLoai]) VALUES (3, N'Trẻ em (0-24 Tháng)', 1)
INSERT [dbo].[NhomVaccine] ([MaNhom], [TenNhom], [MaLoai]) VALUES (4, N'Trẻ em (6-24 Tháng)', 1)
INSERT [dbo].[NhomVaccine] ([MaNhom], [TenNhom], [MaLoai]) VALUES (5, N'Trẻ em (12-24 Tháng)', 1)
INSERT [dbo].[NhomVaccine] ([MaNhom], [TenNhom], [MaLoai]) VALUES (6, N'Trẻ em (4-6 Tuổi)', 1)
INSERT [dbo].[NhomVaccine] ([MaNhom], [TenNhom], [MaLoai]) VALUES (7, N'Vị thành niên - Thanh niên (9-18 Tuổi)', 1)
INSERT [dbo].[NhomVaccine] ([MaNhom], [TenNhom], [MaLoai]) VALUES (8, N'Người trưởng thành', 1)
INSERT [dbo].[NhomVaccine] ([MaNhom], [TenNhom], [MaLoai]) VALUES (9, N'Phụ nữ chuẩn bị trước mang thai', 1)
SET IDENTITY_INSERT [dbo].[NhomVaccine] OFF
GO
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau]) VALUES (N'admin', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau]) VALUES (N'Congdat', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau]) VALUES (N'CuongDoLa', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau]) VALUES (N'nhutphi', N'67e9b3749ab46e9c64f8e1e7b5a365af185848f34ebe0a5665555d87cf64a8f7')
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau]) VALUES (N'phannguyen', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
GO
SET IDENTITY_INSERT [dbo].[Vaccine] ON 

INSERT [dbo].[Vaccine] ([MaVC], [TenVC], [HinhAnhVC], [NguonGocVC], [MoTaVC], [TinhTrangVC], [GiaBanVC], [GiaNhapVC], [SoLuongVC], [MaLoai], [MaNhom]) VALUES (1, N'VẮC XIN PHÒNG UNG THƯ CỔ TỬ CUNG VÀ SÙI MÀO GÀ GARDASIL 9', N'VẮC XIN PHÒNG UNG THƯ CỔ TỬ CUNG VÀ SÙI MÀO GÀ GARDASIL 9.jpg', N'MSD (Mỹ)', N'Vắc xin thế hệ mới Gardasil 9 được xem là vắc xin bình đẳng giới vì mở rộng cả đối tượng và phạm vi phòng bệnh rộng hơn ở nam và nữ giới, bảo vệ khỏi 9 tuýp virus HPV phổ biến 6, 11, 16, 18, 31, 33, 45, 52 và 58, với hiệu quả bảo vệ lên đến trên 94%.', N'Còn', 2950000, 900000, 133, 2, NULL)
INSERT [dbo].[Vaccine] ([MaVC], [TenVC], [HinhAnhVC], [NguonGocVC], [MoTaVC], [TinhTrangVC], [GiaBanVC], [GiaNhapVC], [SoLuongVC], [MaLoai], [MaNhom]) VALUES (2, N'VẮC XIN PHÒNG UNG THƯ CỔ TỬ CUNG GARDASIL', N'VẮC XIN PHÒNG UNG THƯ CỔ TỬ CUNG GARDASIL.png', N'MSD (Mỹ)', N'Được sản xuất tại Mỹ, vắc xin Gardasil có khả năng phòng ngừa 4 tuýp virus HPV nguy cơ cao gây ung thư cổ tử cung (6, 11, 16 và 18) và được chỉ định tiêm cho phụ nữ từ 9 - 26 tuổi. Ngoài tác dụng phòng bệnh ung thư cổ tử cung, vắc xin này còn có thể phòng các bệnh ung thư âm hộ, ung thư âm đạo, các tổn thương tiền ung thư và loạn sản, mụn cóc sinh dục, các bệnh lý do nhiễm virus HPV.', N'Còn', 1790000, 700000, 296, 2, NULL)
INSERT [dbo].[Vaccine] ([MaVC], [TenVC], [HinhAnhVC], [NguonGocVC], [MoTaVC], [TinhTrangVC], [GiaBanVC], [GiaNhapVC], [SoLuongVC], [MaLoai], [MaNhom]) VALUES (3, N'VẮC XIN TỨ GIÁ VAXIGRIP TETRA PHÒNG BỆNH CÚM MÙA', N'VẮC XIN TỨ GIÁ VAXIGRIP TETRA PHÒNG BỆNH CÚM MÙA.jpg', N'Sanofi Pasteur (Pháp)', N'Vắc xin Vaxigrip Tetra được sản xuất bởi hãng Sanofi Pasteur (Pháp), được chỉ định để phòng ngừa bệnh cúm mùa do virus cúm thuộc hai chủng cúm A (H1N1, H3N2) và hai chủng cúm B (Yamagata, Victoria) cho trẻ từ 6 tháng tuổi trở lên và người lớn, đặc biệt trên những người có nguy cơ biến chứng cao.', N'Còn', 356000, 100000, 208, 2, NULL)
INSERT [dbo].[Vaccine] ([MaVC], [TenVC], [HinhAnhVC], [NguonGocVC], [MoTaVC], [TinhTrangVC], [GiaBanVC], [GiaNhapVC], [SoLuongVC], [MaLoai], [MaNhom]) VALUES (4, N'VẮC XIN PHÒNG BỆNH DO PHẾ CẦU KHUẨN PREVENAR 13', N'VẮC XIN PHÒNG BỆNH DO PHẾ CẦU KHUẨN PREVENAR 13.jpg', N'Pfizer (Mỹ)', N'Vắc xin Prevenar 13 phòng các bệnh phế cầu khuẩn xâm lấn gây nguy hiểm cho trẻ em và người lớn như viêm phổi, viêm màng não, viêm tai giữa cấp tính, nhiễm khuẩn huyết (nhiễm trùng máu)… do phế cầu khuẩn Streptococcus Pneumoniae gây ra.', N'Còn', 1190000, 600000, 249, 2, NULL)
INSERT [dbo].[Vaccine] ([MaVC], [TenVC], [HinhAnhVC], [NguonGocVC], [MoTaVC], [TinhTrangVC], [GiaBanVC], [GiaNhapVC], [SoLuongVC], [MaLoai], [MaNhom]) VALUES (5, N'VẮC XIN 5 TRONG 1 PENTAXIM (5IN1)', N'VẮC XIN 5 TRONG 1 PENTAXIM (5IN1).jpg', N'Sanofi Pasteur (Pháp)', N'Vắc xin 5 trong 1 Pentaxim được chỉ định tiêm chủng phòng các bệnh: Bạch hầu, Ho gà, Uốn ván, Bại liệt và các bệnh viêm phổi, viêm màng não do H.influenzae tuýp B. Ưu điểm của vắc xin 5 trong 1 là phòng được 5 bệnh chỉ trong 1 mũi tiêm nên giúp hạn chế được số lần tiêm, tiết kiệm được thời gian, chi phí và bảo vệ trẻ sớm trong những năm đầu đời. Hiện nay, vắc xin 5 trong 1 Pentaxim (Pháp) là lựa chọn được nhiều phụ huynh tin tưởng.', N'Còn', 795000, 400000, 434, 2, NULL)
INSERT [dbo].[Vaccine] ([MaVC], [TenVC], [HinhAnhVC], [NguonGocVC], [MoTaVC], [TinhTrangVC], [GiaBanVC], [GiaNhapVC], [SoLuongVC], [MaLoai], [MaNhom]) VALUES (6, N'VẮC XIN TẢ MORCVAX', N'VẮC XIN TẢ MORCVAX.jpg', N'Vabiotech (Việt Nam)', N'Vắc xin mORCVAX (Việt Nam) được chỉ định phòng bệnh tả cho trẻ em trên 2 tuổi và người lớn sống trong vùng dịch tả lưu hành. mORCVAX là vắc xin được điều chế từ các chủng vi khuẩn tả 01 (gồm típ sinh học cổ điển và EI Tor) và chủng vi khuẩn tả 0139.', N'Còn', 165000, 60000, 319, 2, NULL)
INSERT [dbo].[Vaccine] ([MaVC], [TenVC], [HinhAnhVC], [NguonGocVC], [MoTaVC], [TinhTrangVC], [GiaBanVC], [GiaNhapVC], [SoLuongVC], [MaLoai], [MaNhom]) VALUES (8, N'VẮC XIN PHÒNG BẠCH HẦU - HO GÀ - UỐN VÁN - BẠI LIỆT TETRAXIM', N'VẮC XIN PHÒNG BẠCH HẦU - HO GÀ - UỐN VÁN - BẠI LIỆT TETRAXIM.jpg', N'Sanofi Pasteur (Pháp)', N'Vắc xin Tetraxim 0.5 ml là vắc xin 4 trong 1 được chỉ định để phòng ngừa các bệnh Bạch hầu - Ho gà - Uốn ván - Bại liệt ở trẻ từ 2 tháng tuổi trở lên khi tiêm chủng cơ bản hay nhắc lại trong năm tuổi thứ 2 hoặc ở trẻ em từ độ tuổi 5 - 11 tuổi và 11 - 13 tuổi tùy theo mỗi quốc gia.', N'Còn', 558000, 200000, 122, 2, NULL)
INSERT [dbo].[Vaccine] ([MaVC], [TenVC], [HinhAnhVC], [NguonGocVC], [MoTaVC], [TinhTrangVC], [GiaBanVC], [GiaNhapVC], [SoLuongVC], [MaLoai], [MaNhom]) VALUES (9, N'VẮC XIN PHÒNG HIB QUIMIHIB', N'VẮC XIN PHÒNG HIB QUIMIHIB.jpg', N'C.I.G.B (Cu Ba)', N'Vi khuẩn Hib (Haemophilus Influenzae type b) là thủ phạm gây ra bệnh viêm phổi, viêm màng não mủ và các bệnh xâm lấn khác ở trẻ nhỏ dưới 5 tuổi. Những căn bệnh này đều rất nguy hiểm khi đe dọa trực tiếp đến sức khỏe của trẻ, để lại những di chứng nặng nề, thậm chí gây tử vong. Vắc xin Quimi-Hib (CuBa) phòng ngừa bệnh viêm phổi, viêm màng não mủ do vi khuẩn Hib ở trẻ từ 2 tháng tuổi đến 15 tuổi.', N'Còn', 315000, 100000, 118, 2, NULL)
INSERT [dbo].[Vaccine] ([MaVC], [TenVC], [HinhAnhVC], [NguonGocVC], [MoTaVC], [TinhTrangVC], [GiaBanVC], [GiaNhapVC], [SoLuongVC], [MaLoai], [MaNhom]) VALUES (10, N'VẮC XIN SỞI MVVAC (LIỀU 0.5ML)', N'VẮC XIN SỞI MVVAC (LIỀU 0.5ML).jpg', N'Polyvac (Việt Nam)', N'Vắc xin MVVAC là một vắc xin sống giảm độc lực, được sản xuất trên tế bào phôi gà SPF tiên phát, được chỉ định để tạo miễn dịch chủ động phòng bệnh sởi cho trẻ từ 9 tháng tuổi trở lên và người chưa có kháng thể trước bệnh sởi.', N'Còn', 225000, 90000, 189, 2, NULL)
INSERT [dbo].[Vaccine] ([MaVC], [TenVC], [HinhAnhVC], [NguonGocVC], [MoTaVC], [TinhTrangVC], [GiaBanVC], [GiaNhapVC], [SoLuongVC], [MaLoai], [MaNhom]) VALUES (11, N'GÓI VẮC XIN HEXAXIM – ROTARIX – VARILRIX (0 - 6 THÁNG)', N'GoiVaccine.png', N'Không có', N'0-6 tháng là giai đoạn vàng trẻ cần tiêm đủ 4 loại vắc xin với 9 mũi tiêm, trong đó có nhiều vắc xin nếu bỏ lỡ, trẻ có thể mất cơ hội chủng ngừa hiệu quả suốt đời. Trẻ ở độ tuổi này sức đề kháng còn non yếu, rất dễ mắc phải các bệnh truyền nhiễm nguy hiểm, đe dọa sức khỏe, tính mạng. Tiêm chủng đúng lịch, đủ mũi giúp trẻ tăng sức đề kháng, chặn đứng những tác nhân gây bệnh từ virus, vi khuẩn.', N'Còn', 9544320, 6200000, 156, 1, 1)
INSERT [dbo].[Vaccine] ([MaVC], [TenVC], [HinhAnhVC], [NguonGocVC], [MoTaVC], [TinhTrangVC], [GiaBanVC], [GiaNhapVC], [SoLuongVC], [MaLoai], [MaNhom]) VALUES (12, N'GÓI VẮC XIN HEXAXIM – ROTARIX – VARILRIX (0 - 9 THÁNG)', N'GoiVaccine.png', N'Không có', N'Với tổng 8 loại vắc xin gồm 14 mũi cơ bản, Gói vắc xin Hexaxim - Rotarix - Varilrix (0-9 tháng) cung cấp các loại vắc xin phòng được hàng loạt bệnh truyền nhiễm nguy hiểm, kể cả các vắc xin thường xuyên khan hiếm trên thị trường như vắc xin 6 trong 1 Hexaxim, Rotarix, Synflorix, Varilrix,… để bé không bị nhỡ lịch bất kỳ một mũi tiêm nào.', N'Còn', 13577400, 9000000, 178, 1, 1)
INSERT [dbo].[Vaccine] ([MaVC], [TenVC], [HinhAnhVC], [NguonGocVC], [MoTaVC], [TinhTrangVC], [GiaBanVC], [GiaNhapVC], [SoLuongVC], [MaLoai], [MaNhom]) VALUES (13, N'GÓI VẮC XIN HEXAXIM – ROTATEQ – VARILRIX (0 - 6 THÁNG)', N'GoiVaccine.png', N'Không có', N'Giai đoạn 0-6 tháng là giai đoạn vàng trẻ cần tiêm nhiều loại vắc xin quan trọng, trong đó có nhiều vắc xin nếu bỏ lỡ, trẻ có thể mất cơ hội chủng ngừa hiệu quả suốt đời. Trẻ ở độ tuổi này sức đề kháng non yếu, rất dễ mắc các bệnh truyền nhiễm nguy hiểm, đe dọa sức khỏe, tính mạng. Tiêm chủng đúng lịch, đủ mũi giúp trẻ tăng sức đề kháng, chặn đứng virus, vi khuẩn gây bệnh.', N'Còn', 9838200, 6300000, 165, 1, 1)
INSERT [dbo].[Vaccine] ([MaVC], [TenVC], [HinhAnhVC], [NguonGocVC], [MoTaVC], [TinhTrangVC], [GiaBanVC], [GiaNhapVC], [SoLuongVC], [MaLoai], [MaNhom]) VALUES (14, N'GÓI VẮC XIN HEXAXIM – ROTARIX – VARILRIX (0 - 12 THÁNG)', N'GoiVaccine.png', N'Không có', N'Với tổng 10 loại vắc xin gồm 19 mũi cơ bản, Gói vắc xin Hexaxim - Rotarix - Varilrix (0-12 tháng) cung cấp các loại vắc xin phòng được hàng loạt bệnh truyền nhiễm nguy hiểm, không sợ hết vắc xin, kể cả các vắc xin thường xuyên khan hiếm trên thị trường như vắc xin 6 trong 1 Hexaxim, Rotarix, Synflorix, Varilrix,… để bé không bị nhỡ lịch bất kỳ một mũi tiêm nào.', N'Còn', 18202536, 10000000, 219, 1, 2)
INSERT [dbo].[Vaccine] ([MaVC], [TenVC], [HinhAnhVC], [NguonGocVC], [MoTaVC], [TinhTrangVC], [GiaBanVC], [GiaNhapVC], [SoLuongVC], [MaLoai], [MaNhom]) VALUES (15, N'GÓI VẮC XIN HEXAXIM – ROTATEQ – VARILRIX (0 - 12 THÁNG)', N'GoiVaccine.png', N'Không có', N'Với tổng 10 loại vắc xin gồm 20 liều cơ bản, Gói vắc xin Hexaxim - Rotarix - Varilrix (0-12 tháng) cung cấp các loại vắc xin phòng được hàng loạt bệnh truyền nhiễm nguy hiểm, kể cả các vắc xin thường xuyên khan hiếm trên thị trường như vắc xin 6 trong 1 Hexaxim, Rotateq, Synflorix, Varilrix,… để trẻ không bị nhỡ lịch bất kỳ một mũi tiêm nào.', N'Còn', 18591696, 11000000, 235, 1, 2)
INSERT [dbo].[Vaccine] ([MaVC], [TenVC], [HinhAnhVC], [NguonGocVC], [MoTaVC], [TinhTrangVC], [GiaBanVC], [GiaNhapVC], [SoLuongVC], [MaLoai], [MaNhom]) VALUES (16, N'GÓI VẮC XIN INFANRIX HEXA – ROTATEQ – VARILRIX (0 - 12 THÁNG)', N'GoiVaccine.png', N'Không có', N'Với 10 loại vắc xin gồm 20 liều cơ bản, Gói vắc xin Infanrix Hexa–Rotateq–Varilrix (0-12 tháng) cung cấp các loại vắc xin phòng được hàng loạt bệnh truyền nhiễm nguy hiểm, kể cả các vắc xin thường xuyên khan hiếm trên thị trường như vắc xin 6 trong 1 Infanrix Hexa, Rotateq, Synflorix, Varilrix,… Vắc xin sau khi được mua gói hoặc mua đặt trước sẽ được lưu trữ và bảo quản lên tới 2 năm, luôn sẵn sàng cho bé tiêm đúng lịch, không để bé bị nhỡ lịch bất kỳ một mũi tiêm nào.', N'Còn', 18480024, 12000000, 345, 1, 2)
INSERT [dbo].[Vaccine] ([MaVC], [TenVC], [HinhAnhVC], [NguonGocVC], [MoTaVC], [TinhTrangVC], [GiaBanVC], [GiaNhapVC], [SoLuongVC], [MaLoai], [MaNhom]) VALUES (17, N'GÓI VẮC XIN HEXAXIM – ROTARIX – VARILRIX (0 - 24 THÁNG)', N'GoiVaccine.png', N'Không có', N'Với tổng 12 loại vắc xin gồm 26 mũi cơ bản, Gói vắc xin Hexaxim - Rotarix - Varilrix (0-24 tháng) cung cấp các loại vắc xin phòng được hàng loạt bệnh truyền nhiễm nguy hiểm, kể cả các vắc xin thường xuyên khan hiếm trên thị trường như vắc xin 6 trong 1 Hexaxim, Rotarix, Synflorix, Varilrix, MMR II, Twinrix… để trẻ không bị nhỡ lịch bất kỳ một mũi tiêm nào.', N'Còn', 21693924, 1500000, 210, 1, 3)
INSERT [dbo].[Vaccine] ([MaVC], [TenVC], [HinhAnhVC], [NguonGocVC], [MoTaVC], [TinhTrangVC], [GiaBanVC], [GiaNhapVC], [SoLuongVC], [MaLoai], [MaNhom]) VALUES (18, N'GÓI VẮC XIN HEXAXIM – ROTATEQ – VARILRIX (0 - 24 THÁNG)', N'GoiVaccine.png', N'Không có', N'Với tổng 12 loại vắc xin gồm 27 liều cơ bản, Gói vắc xin Hexaxim–Rotateq–Varilrix (0-24 tháng) cung cấp các loại vắc xin phòng được hàng loạt bệnh truyền nhiễm nguy hiểm, không sợ hết vắc xin, kể cả các vắc xin thường xuyên khan hiếm trên thị trường như vắc xin 6 trong 1 Hexaxim, Rotateq, Synflorix, Varilrix, MMR II, Twinrix… Vắc xin sau khi được mua gói hoặc mua đặt trước sẽ được lưu trữ và bảo quản lên tới 2 năm, luôn sẵn sàng cho bé tiêm đúng lịch, không để bé bị nhỡ lịch bất kỳ một mũi tiêm nào.', N'Còn', 22078944, 1700000, 321, 1, 3)
INSERT [dbo].[Vaccine] ([MaVC], [TenVC], [HinhAnhVC], [NguonGocVC], [MoTaVC], [TinhTrangVC], [GiaBanVC], [GiaNhapVC], [SoLuongVC], [MaLoai], [MaNhom]) VALUES (19, N'GÓI VẮC XIN INFANRIX HEXA – ROTATEQ – VARILRIX (0 - 24 THÁNG)', N'GoiVaccine.png', N'Không có', N'Với 12 loại vắc xin gồm 27 liều cơ bản, Gói vắc xin Infanrix Hexa – Rotateq – Varilrix (0 - 24 tháng) cung cấp các loại vắc xin phòng được hàng loạt bệnh truyền nhiễm nguy hiểm, không sợ hết vắc xin, kể cả các vắc xin thường xuyên khan hiếm như vắc xin 6 trong 1 Hexaxim, Rotateq, Synflorix, Varilrix, MMR II, Twinrix… giúp trẻ có cơ hội chủng ngừa trọn vẹn trong 2 năm đầu đời.', N'Còn', 21931632, 1600000, 187, 1, 3)
INSERT [dbo].[Vaccine] ([MaVC], [TenVC], [HinhAnhVC], [NguonGocVC], [MoTaVC], [TinhTrangVC], [GiaBanVC], [GiaNhapVC], [SoLuongVC], [MaLoai], [MaNhom]) VALUES (20, N'GÓI VẮC XIN CHO TRẺ TIỀN HỌC ĐƯỜNG', N'GoiVaccine.png', N'Không có', N'Tiền học đường là giai đoạn “khoảng trống miễn dịch” của trẻ, do sức đề kháng kém khiến trẻ trở nên đặc biệt nhạy cảm với các loại vi khuẩn lây bệnh, nhất là các bệnh nguy hiểm có thể phòng ngừa. Tiêm vắc xin là cách phòng bệnh hiệu quả nhất, cho trẻ đến trường vui khỏe, bố mẹ an tâm.', N'Còn', 9226368, 5200000, 199, 1, 6)
INSERT [dbo].[Vaccine] ([MaVC], [TenVC], [HinhAnhVC], [NguonGocVC], [MoTaVC], [TinhTrangVC], [GiaBanVC], [GiaNhapVC], [SoLuongVC], [MaLoai], [MaNhom]) VALUES (21, N'GÓI VẮC XIN CHO TUỔI VỊ THÀNH NIÊN VÀ THANH NIÊN - GÓI 1 (9 - 18 TUỔI)', N'GoiVaccine.png', N'Không có', N'Nhóm tuổi vị thành niên là đối tượng rất dễ bỏ sót chủng ngừa. Khi lớn lên miễn dịch tạo được do vắc xin có thể bị suy giảm theo thời gian bởi sự tác động của nhiều yếu tố. Vì vậy việc tiêm nhắc và tiêm bổ sung là hết sức quan trọng.', N'Còn', 15609264, 1000000, 145, 1, 7)
INSERT [dbo].[Vaccine] ([MaVC], [TenVC], [HinhAnhVC], [NguonGocVC], [MoTaVC], [TinhTrangVC], [GiaBanVC], [GiaNhapVC], [SoLuongVC], [MaLoai], [MaNhom]) VALUES (23, N'GÓI VẮC XIN CHO NGƯỜI TRƯỞNG THÀNH', N'GoiVaccine.png', N'Không có', N'Vắc xin rất thiết với trẻ em và đặc biệt quan trọng với người lớn. Tiêm chủng đầy đủ, đúng lịch, đúng phác đồ không chỉ giúp mỗi cá nhân được tiêm chủng không mắc các bệnh truyền nhiễm nguy hiểm tính mạng, mà còn tạo ra “miễn dịch cộng đồng”, giúp trẻ còn quá nhỏ chưa thể chủng ngừa, những người đang được hóa trị liệu, người già và một số người không thể được tiêm chủng vì điều kiện sức khỏe cũng được bảo vệ, nhất là trong bối cảnh đại dịch COVID-19 và các bệnh truyền nhiễm nguy hiểm có những diễn biến phức tạp.', N'Còn', 8501760, 5000000, 227, 1, 8)
INSERT [dbo].[Vaccine] ([MaVC], [TenVC], [HinhAnhVC], [NguonGocVC], [MoTaVC], [TinhTrangVC], [GiaBanVC], [GiaNhapVC], [SoLuongVC], [MaLoai], [MaNhom]) VALUES (24, N'GÓI VẮC XIN CHO PHỤ NỮ CHUẨN BỊ TRƯỚC MANG THAI', N'GoiVaccine.png', N'Không có', N'Phụ nữ khi mang thai, hệ thống miễn dịch của cơ thể sẽ hoạt động kém hơn bình thường, nguy cơ nhiễm các bệnh truyền nhiễm nguy hiểm cũng vì vậy mà tăng lên. Tiêm phòng là cách tốt nhất để bảo vệ sức khỏe cho cả mẹ và thai nhi, đảm bảo nền tảng phát triển vững chắc cho con yêu.', N'Còn', 8501760, 6300000, 188, 1, 9)
INSERT [dbo].[Vaccine] ([MaVC], [TenVC], [HinhAnhVC], [NguonGocVC], [MoTaVC], [TinhTrangVC], [GiaBanVC], [GiaNhapVC], [SoLuongVC], [MaLoai], [MaNhom]) VALUES (25, N'GÓI VẮC XIN HEXAXIM – ROTATEQ – VARILRIX (0 - 9 THÁNG)', N'GoiVaccine.png', N'Không có', N'Với tổng 8 loại vắc xin gồm 15 mũi cơ bản, Gói vắc xin Hexaxim–Rotateq–Varilrix (0-9 tháng) cung cấp các loại vắc xin phòng được hàng loạt bệnh truyền nhiễm nguy hiểm, không sợ hết vắc xin, kể cả các vắc xin thường xuyên khan hiếm trên thị trường như vắc xin 6 trong 1 Hexaxim, Rotateq, Synflorix, Varilrix,… để trẻ không bị nhỡ lịch bất kỳ một mũi tiêm nào.', N'Còn', 13970700, 9500000, 96, 1, 1)
INSERT [dbo].[Vaccine] ([MaVC], [TenVC], [HinhAnhVC], [NguonGocVC], [MoTaVC], [TinhTrangVC], [GiaBanVC], [GiaNhapVC], [SoLuongVC], [MaLoai], [MaNhom]) VALUES (26, N'GÓI VẮC XIN INFANRIX HEXA – ROTATEQ – VARILRIX (0 - 6 THÁNG)', N'GoiVaccine.png', N'Không có', N'Với tổng 4 loại vắc xin gồm 10 mũi cơ bản, Gói vắc xin Infanrix Hexa – Rotateq – Varilrix (0 - 6 tháng) cung cấp các loại vắc xin phòng được hàng loạt bệnh truyền nhiễm nguy hiểm, không sợ hết vắc xin, kể cả các vắc xin thường xuyên khan hiếm trên thị trường như vắc xin Infanrix Hexa, vắc xin Rotateq, vắc xin Synflorix… để trẻ không bị nhỡ lịch bất kỳ một mũi tiêm nào.', N'Còn', 9725340, 5400000, 75, 1, 1)
INSERT [dbo].[Vaccine] ([MaVC], [TenVC], [HinhAnhVC], [NguonGocVC], [MoTaVC], [TinhTrangVC], [GiaBanVC], [GiaNhapVC], [SoLuongVC], [MaLoai], [MaNhom]) VALUES (27, N'GÓI VẮC XIN INFANRIX HEXA – ROTATEQ – VARILRIX (0 - 9 THÁNG)', N'GoiVaccine.png', N'Không có', N'Với tổng 8 loại vắc xin gồm 15 mũi cơ bản, Gói vắc xin Infanrix Hexa – Rotateq – Varilrix (0 - 9 tháng) cung cấp các loại vắc xin phòng được hàng loạt bệnh truyền nhiễm nguy hiểm, kể cả các vắc xin thường xuyên khan hiếm trên thị trường như vắc xin 6 trong 1 Infanrix Hexa, Rotateq, Synflorix, Varilrix,… Vắc xin sau khi được mua gói hoặc mua đặt trước sẽ được lưu trữ và bảo quản lên tới 2 năm, luôn sẵn sàng cho bé tiêm đúng lịch, không để bé bị nhỡ lịch bất kỳ một mũi tiêm nào.', N'Còn', 13857840, 8200000, 54, 1, 1)
INSERT [dbo].[Vaccine] ([MaVC], [TenVC], [HinhAnhVC], [NguonGocVC], [MoTaVC], [TinhTrangVC], [GiaBanVC], [GiaNhapVC], [SoLuongVC], [MaLoai], [MaNhom]) VALUES (28, N'GÓI VẮC XIN INFANRIX HEXA – ROTARIX – VARILRIX (0 - 12 THÁNG)', N'GoiVaccine.png', N'Không có', N'Với tổng 10 loại vắc xin gồm 19 mũi cơ bản, Gói vắc xin Infanrix Hexa–Rotarix–Varilrix (0-12 tháng) cung cấp các loại vắc xin phòng được hàng loạt bệnh truyền nhiễm nguy hiểm, kể cả các vắc xin thường xuyên khan hiếm trên thị trường như vắc xin 6 trong 1 Infanrix Hexa, Rotarix, Synflorix, Varilrix,… để trẻ không bị nhỡ lịch bất kỳ một mũi tiêm nào.', N'Còn', 18090864, 10000000, 25, 1, 2)
INSERT [dbo].[Vaccine] ([MaVC], [TenVC], [HinhAnhVC], [NguonGocVC], [MoTaVC], [TinhTrangVC], [GiaBanVC], [GiaNhapVC], [SoLuongVC], [MaLoai], [MaNhom]) VALUES (29, N'GÓI VẮC XIN INFANRIX HEXA – ROTARIX – VARIVAX (0-12 THÁNG)', N'GoiVaccine.png', N'Không có', N'Với 10 loại vắc xin gồm 18 mũi cơ bản, Gói vắc xin Infanrix Infanrix Hexa–Rotarix–Varivax (0-12 tháng) cung cấp các loại vắc xin phòng được hàng loạt bệnh truyền nhiễm nguy hiểm, kể cả các vắc xin thường xuyên khan hiếm trên thị trường như vắc xin 6 trong 1 Infanrix Hexa, Rotarix, Synflorix, Varivax,… để trẻ tiêm đúng lịch, đủ mũi không bị nhỡ lịch bất kỳ mũi tiêm nào.', N'Còn', 17082432, 11000000, 77, 1, 2)
INSERT [dbo].[Vaccine] ([MaVC], [TenVC], [HinhAnhVC], [NguonGocVC], [MoTaVC], [TinhTrangVC], [GiaBanVC], [GiaNhapVC], [SoLuongVC], [MaLoai], [MaNhom]) VALUES (30, N'GÓI VẮC XIN INFANRIX HEXA – ROTATEQ – VARIVAX (0 - 12 THÁNG)', N'GoiVaccine.png', N'Không có', N'Với tổng 10 loại vắc xin gồm 19 liều cơ bản, Gói vắc xin Infanrix Hexa – Rotateq – Varivax (0 - 12 tháng) cung cấp các loại vắc xin phòng được hàng loạt bệnh truyền nhiễm nguy hiểm, không sợ hết vắc xin, kể cả các vắc xin thường xuyên khan hiếm trên thị trường như vắc xin Infanrix Hexa, vắc xin Rotateq, vắc xin Varivax… Vắc xin sau khi được mua Gói hoặc mua đặt trước sẽ được lưu trữ và bảo quản lên tới 2 năm, luôn sẵn sàng cho bé tiêm đúng lịch, không để bé bị nhỡ lịch bất kỳ một mũi tiêm nào.', N'Còn', 17471592, 11500000, 82, 1, 2)
SET IDENTITY_INSERT [dbo].[Vaccine] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__LoaiVacc__E29B10423946CEE3]    Script Date: 18/12/2023 8:46:25 CH ******/
ALTER TABLE [dbo].[LoaiVaccine] ADD UNIQUE NONCLUSTERED 
(
	[TenLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NhomVacc__2B432D0DE9320FC2]    Script Date: 18/12/2023 8:46:25 CH ******/
ALTER TABLE [dbo].[NhomVaccine] ADD UNIQUE NONCLUSTERED 
(
	[TenNhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietHoaDon] ADD  DEFAULT ((0)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[ChiTietHoaDon] ADD  DEFAULT ((0)) FOR [ThanhTien]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT ((0)) FOR [TongSL]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT ((0)) FOR [TongTien]
GO
ALTER TABLE [dbo].[Vaccine] ADD  DEFAULT ((0)) FOR [GiaBanVC]
GO
ALTER TABLE [dbo].[Vaccine] ADD  DEFAULT ((0)) FOR [GiaNhapVC]
GO
ALTER TABLE [dbo].[Vaccine] ADD  DEFAULT ((0)) FOR [SoLuongVC]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [fk_MaHD_CTHD] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [fk_MaHD_CTHD]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [fk_MaVC_CTHD] FOREIGN KEY([MaVC])
REFERENCES [dbo].[Vaccine] ([MaVC])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [fk_MaVC_CTHD]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [fk_MaKH_GioHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [fk_MaKH_GioHang]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [fk_MaVC_GioHang] FOREIGN KEY([MaVC])
REFERENCES [dbo].[Vaccine] ([MaVC])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [fk_MaVC_GioHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [fk_MaNTC_HoaDon] FOREIGN KEY([MaNTC])
REFERENCES [dbo].[NguoiTiemChung] ([MaNTC])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [fk_MaNTC_HoaDon]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [fk_TenTK_KhachHang] FOREIGN KEY([TenTK])
REFERENCES [dbo].[TaiKhoan] ([TenTK])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [fk_TenTK_KhachHang]
GO
ALTER TABLE [dbo].[LoVaccine]  WITH CHECK ADD  CONSTRAINT [fk_MaVC_LoVaccine] FOREIGN KEY([MaVC])
REFERENCES [dbo].[Vaccine] ([MaVC])
GO
ALTER TABLE [dbo].[LoVaccine] CHECK CONSTRAINT [fk_MaVC_LoVaccine]
GO
ALTER TABLE [dbo].[NguoiTiemChung]  WITH CHECK ADD  CONSTRAINT [fk_MaKH_NguoiTiemChung] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[NguoiTiemChung] CHECK CONSTRAINT [fk_MaKH_NguoiTiemChung]
GO
ALTER TABLE [dbo].[NguoiTiemChung]  WITH CHECK ADD  CONSTRAINT [fk_MaQH_NguoiTiemChung] FOREIGN KEY([MaQH])
REFERENCES [dbo].[MoiQuanHe] ([MaQH])
GO
ALTER TABLE [dbo].[NguoiTiemChung] CHECK CONSTRAINT [fk_MaQH_NguoiTiemChung]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [fk_TenTK_NhanVien] FOREIGN KEY([TenTK])
REFERENCES [dbo].[TaiKhoan] ([TenTK])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [fk_TenTK_NhanVien]
GO
ALTER TABLE [dbo].[NhapKho]  WITH CHECK ADD  CONSTRAINT [fk_MaLoVC_NhapKho] FOREIGN KEY([MaLoVC])
REFERENCES [dbo].[LoVaccine] ([MaLoVC])
GO
ALTER TABLE [dbo].[NhapKho] CHECK CONSTRAINT [fk_MaLoVC_NhapKho]
GO
ALTER TABLE [dbo].[NhapKho]  WITH CHECK ADD  CONSTRAINT [fk_MaNCC_NhapKho] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCC] ([MaNCC])
GO
ALTER TABLE [dbo].[NhapKho] CHECK CONSTRAINT [fk_MaNCC_NhapKho]
GO
ALTER TABLE [dbo].[NhapKho]  WITH CHECK ADD  CONSTRAINT [fk_MaNV_NhapKho] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[NhapKho] CHECK CONSTRAINT [fk_MaNV_NhapKho]
GO
ALTER TABLE [dbo].[NhomVaccine]  WITH CHECK ADD  CONSTRAINT [fk_MaLoai_NhomVaccin] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiVaccine] ([MaLoai])
GO
ALTER TABLE [dbo].[NhomVaccine] CHECK CONSTRAINT [fk_MaLoai_NhomVaccin]
GO
ALTER TABLE [dbo].[Vaccine]  WITH CHECK ADD  CONSTRAINT [fk_MaLoai_Vaccine] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiVaccine] ([MaLoai])
GO
ALTER TABLE [dbo].[Vaccine] CHECK CONSTRAINT [fk_MaLoai_Vaccine]
GO
ALTER TABLE [dbo].[Vaccine]  WITH CHECK ADD  CONSTRAINT [fk_MaNhom_Vaccine] FOREIGN KEY([MaNhom])
REFERENCES [dbo].[NhomVaccine] ([MaNhom])
GO
ALTER TABLE [dbo].[Vaccine] CHECK CONSTRAINT [fk_MaNhom_Vaccine]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD CHECK  (([DiaChiKH]<>''))
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD CHECK  (([GioiTinhKH]=N'Nam' OR [GioiTinhKH]=N'Nữ'))
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD CHECK  (([HoTenKH]<>''))
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD CHECK  (([SoDienThoaiKH]<>''))
GO
ALTER TABLE [dbo].[LoaiVaccine]  WITH CHECK ADD CHECK  (([TenLoai]<>''))
GO
ALTER TABLE [dbo].[NguoiTiemChung]  WITH CHECK ADD CHECK  (([DiaChiNTC]<>''))
GO
ALTER TABLE [dbo].[NguoiTiemChung]  WITH CHECK ADD CHECK  (([GioiTinhNTC]=N'Nam' OR [GioiTinhNTC]=N'Nữ'))
GO
ALTER TABLE [dbo].[NguoiTiemChung]  WITH CHECK ADD CHECK  (([HoTenNTC]<>''))
GO
ALTER TABLE [dbo].[NguoiTiemChung]  WITH CHECK ADD CHECK  (([SoDienThoaiNTC]<>''))
GO
ALTER TABLE [dbo].[NhaCC]  WITH CHECK ADD CHECK  (([DiaChiNCC]<>''))
GO
ALTER TABLE [dbo].[NhaCC]  WITH CHECK ADD CHECK  (([SoDienThoaiNCC]<>''))
GO
ALTER TABLE [dbo].[NhaCC]  WITH CHECK ADD CHECK  (([TenNCC]<>''))
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD CHECK  (([CCCD]<>''))
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD CHECK  (([DiaCHiNV]<>''))
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD CHECK  (([GioiTinhNV]=N'Nam' OR [GioiTinhNV]=N'Nữ'))
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD CHECK  (([HoTenNV]<>''))
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD CHECK  (((datepart(year,getdate())-datepart(year,[NgaySinhNV]))>=(18)))
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD CHECK  (([SoDienThoaiNV]<>''))
GO
ALTER TABLE [dbo].[NhomVaccine]  WITH CHECK ADD CHECK  (([TenNhom]<>''))
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD CHECK  ((len([MatKhau])>=(5)))
GO
ALTER TABLE [dbo].[Vaccine]  WITH CHECK ADD CHECK  (([TenVC]<>''))
GO
ALTER TABLE [dbo].[Vaccine]  WITH CHECK ADD CHECK  (([TinhTrangVC]=N'Còn' OR [TinhTrangVC]=N'Hết'))
GO
