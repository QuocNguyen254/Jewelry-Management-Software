CREATE DATABASE QuanLyKinhDoanhVangBacDaQuy
USE QuanLyKinhDoanhVangBacDaQuy

Create table PHIEUMUAHANG
(
	MaPhieuMua int identity (1,1) primary key,
	MaNhaCungCap int,
	MaSanPham int,
	NgayMua date,
	SoLuong int,
	DonGia float,
)


Create table NHACUNGCAP
(
	MaNhaCungCap int identity (1,1) primary key,
	TenNhaCungCap nvarchar(50),
	SoDienThoai nvarchar(50),
	DiaChi  nvarchar(50)

)

Create table SANPHAM
(
	MaSanPham int identity (1,1) primary key,
	TenSanPham nvarchar(50),
	MaLoai int,
	SoLuong int,
	DonGia float,
	TinhTrang bit
)

Create table LICHSUKHO
(
	Ma int identity (1,1) primary key,
	MaSanPham int,
	LoaiGiaoDich nvarchar(50),
	Ngay date,
	SoLuongTruoc int,
	SoLuongSau int
)

Create table LOAISANPHAM
(
	MaLoaiSP int identity (1,1) primary key,
	TenLoaiSanPham nvarchar(50),
	DonViTinh nvarchar(10),
	LoiNhuan int
)


Create table PHIEUBANHANG
(
	MaPhieuBan int identity (1,1) primary key,
	MaKhachHang int,
	MaNhanVien int,
	MaSanPham int,
	SoLuong int,
	NgayBan date
)

Create table KHACHHANG
(
	MaKhachHang int identity (1,1) primary key,
	SoDienThoai nvarchar(50),
	TenKhachHang nvarchar(50),
)

Create table PHIEUDICHVU
(
	MaPhieuDichVu int identity (1,1) primary key,
	MaKhachHang int,
	MaNhanVien int,
	MaDichVu int,
	SoLuong int,
	DonGia float,
	NgayBan date
)

Create table LOAIDICHVU
(
	MaDichVu int identity (1,1) primary key,
	TenLoaiDichVu nvarchar(50),
	DonGia float,
	LoiNhuan int
)

Create table NHANVIEN
(
	MaNhanVien int identity (1,1) primary key,
	TenNhanVien nvarchar(50),
	TaiKhoan nvarchar(50),
	MatKhau nvarchar(50),
	ChucVu nvarchar(50)
)

/*Foreign key*/

Alter table PHIEUMUAHANG
Add constraint FK_PHIEUMUAHANG_SANPHAM_MaSanPham 
Foreign Key(MaSanPham) References SANPHAM(MaSanPham)

Alter table PHIEUMUAHANG
Add constraint FK_PHIEUMUAHANG_NHACUNGCAP_MaNhaCungCap
Foreign Key(MaNhaCungCap) References NHACUNGCAP(MaNhaCungCap)

Alter table SANPHAM
Add constraint FK_SANPHAM_LOAISANPHAM_MaLoai
Foreign Key(MaLoai) References LOAISANPHAM(MaLoaiSP)

Alter table LICHSUKHO
Add constraint FK_LICHSUKHO_SANPHAM_MaSanPham
Foreign Key(MaSanPham) References SANPHAM(MaSanPham)

Alter table PHIEUBANHANG
Add constraint FK_PHIEUBANHANG_SANPHAM_MaSanPham
Foreign Key(MaSanPham) References SANPHAM(MaSanPham)

Alter table PHIEUBANHANG
Add constraint FK_PHIEUBANHANG_KHACHHANG_MaKhachHang
Foreign Key(MaKhachHang) References KHACHHANG(MaKhachHang)

Alter table PHIEUDICHVU
Add constraint FK_PHIEUDICHVU_KHACHHANG_MaKhachHang
Foreign Key(MaKhachHang) References KHACHHANG(MaKhachHang)

Alter table PHIEUDICHVU
Add constraint FK_PHIEUDICHVU_LOAIDICHVU_MaLoaiDV
Foreign Key(MaDichVu) References LOAIDICHVU(MaDichVu)

Alter table PHIEUDICHVU
Add constraint FK_PHIEUDICHVU_NHANVIEN_MaNhanVien
Foreign Key(MaNhanVien) References NHANVIEN(MaNhanVien)

Alter table PHIEUBANHANG
Add constraint FK_PHIEUBANHANG_NHANVIEN_MaNhanVien
Foreign Key(MaNhanVien) References NHANVIEN(MaNhanVien)

/*Insert data*/
INSERT INTO NHACUNGCAP (TenNhaCungCap, SoDienThoai, DiaChi)
VALUES
    ('PNJ', '0886134456', N'214 Đường Hồ Gươm, Q.1, TP.HCM'),
    ('DOJI', '0909100900', N'412 Võ Nguyên Giáp, Q.5, TP.HCM'),
    ('SJC','0931224301', N'92 Đường Phan Xích Long, Q.1, TP.HCM'),
    (N'Bảo Tín Minh Châu','0966146979', N'24 Đường Lý Thường Kiệt, Q.9, TP.HCM');

INSERT INTO LOAIDICHVU ( TenLoaiDichVu, DonGia, LoiNhuan)
VALUES
	(N'Dịch vụ định giá và kiểm định', 200000,20),
    (N'Dịch vụ khôi phục', 400000,30),
    (N'Dịch vụ vệ sinh', 400000,40),
    (N'Dịch vụ đánh bóng', 500000,50);

INSERT INTO NHANVIEN( TenNhanVien, TaiKhoan, MatKhau, ChucVu)
VALUES
    (N'Nguyễn Thị Ánh', N'nguyenthianh', N'nta', N'Nhân viên bán hàng'),
	(N'Cao Bảo Hà', N'caobaoha', N'cbh', N'Nhân viên thu ngân'),
    (N'Trần Nhật Long', N'trannhatlong', N'tnl', N'Quản lý');

INSERT INTO KHACHHANG( SoDienThoai,TenKhachHang)
VALUES
    ('0913987654', N'Nguyễn Hồng Loan'),
    ('0913765432', N'Cao Quang Long'),
    ('0913554321', N'Huỳnh Anh Minh'),
    ('0913123456', N'Trần Minh Hiếu');

INSERT INTO LOAISANPHAM ( TenLoaiSanPham, DonViTinh, LoiNhuan)
VALUES
    (N'Dây chuyền kim cương', N'chiếc', 25 ),
    (N'Nhẫn vàng', N'chiếc', 30),
    (N'Vòng tay vàng', N'chiếc', 20),
    (N'Nhẫn kim cương', N'cặp', 35),
    (N'Dây chuyền đá quý', N'chiếc', 40);

INSERT INTO PHIEUDICHVU ( MaKhachHang, MaNhanVien, MaDichVu, SoLuong, DonGia, NgayBan)
VALUES
    ( 1, 3, 1, 3, 400000, '2024-08-11'),
    ( 2, 2, 2, 2, 400000, '2024-08-05'),
    ( 3, 1, 3, 4, 200000, '2024-10-3'),
    ( 4, 3, 4, 7, 1000000,'2024-03-09');

INSERT INTO SANPHAM (TenSanPham, MaLoai, SoLuong, DonGia, TinhTrang)
VALUES
    ( N'Dây chuyền kim cương nam', 1, 11, 10000000, 1),
    ( N'Nhẫn vàng nam', 2, 6, 2000000, 1),
    ( N'Vòng tay vàng nam', 3, 18, 2000000, 1),
    ( N'Nhẫn kim cương nữ', 4, 6, 5000000, 1),
    ( N'Dây chuyền hồng ngọc', 5, 6, 6000000, 0);

INSERT INTO PHIEUMUAHANG ( MaNhaCungCap, MaSanPham, NgayMua, SoLuong, DonGia)
VALUES
    ( 1, 1, '2023-08-02', 12, 9000000),
    ( 2, 2, '2023-10-12', 8, 1400000),
    ( 3, 3, '2023-10-01', 16, 1000000),
    ( 4, 4, '2023-08-20', 8, 4500000),
    ( 4, 5, '2023-06-23', 6, 5000000);

INSERT INTO LICHSUKHO (MaSanPham, LoaiGiaoDich, Ngay, SoLuongTruoc, SoLuongSau)
VALUES
    ( 1, N'Xuất hàng', '2023-03-02', 11, 18),
    ( 2, N'Mua hàng', '2023-02-01', 6, 8),
    ( 3, N'Xuất hàng', '2023-07-04', 18, 24),
    ( 4, N'Mua hàng', '2023-06-10', 6, 16),
    ( 5, N'Mua hàng', '2023-12-10', 2, 6);

INSERT INTO PHIEUBANHANG( MaKhachHang, MaNhanVien, MaSanPham, SoLuong, NgayBan)
VALUES
    ( 1, 3, 1, 2, '2023-09-10'),
    ( 2, 2, 2, 3, '2023-10-05'),
    ( 3, 1, 3, 2, '2023-09-20'),
    ( 4, 3, 4, 1, '2023-09-25');

select * from PHIEUBANHANG
select * from PHIEUDICHVU
select * from KHACHHANG
select * from LICHSUKHO
select * from LOAIDICHVU
select * from LOAISANPHAM
select * from NHACUNGCAP
select * from NHANVIEN
select * from PHIEUMUAHANG
select * from SANPHAM

--use master
--ALTER DATABASE QuanLyKinhDoanhVangBacDaQuy SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
--DROP DATABASE QuanLyKinhDoanhVangBacDaQuy;

GO
CREATE PROCEDURE Danh_Sach_Nhan_Vien_Theo_ID @MaNhanVien int
AS
BEGIN
    SELECT * FROM NHANVIEN WHERE MaNhanVien = @MaNhanVien;
END;
GO

EXEC Danh_Sach_Nhan_Vien_Theo_ID @MaNhanVien = 1

GO
CREATE PROC USP_Login
@TaiKhoan nvarchar(50), @MatKhau nvarchar(50)
AS
BEGIN
	SELECT * FROM NHANVIEN WHERE TaiKhoan = @TaiKhoan And MatKhau = @MatKhau
END
Go
