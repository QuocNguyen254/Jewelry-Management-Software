CREATE DATABASE QuanLyKinhDoanhVangBacDaQuy
USE QuanLyKinhDoanhVangBacDaQuy

Create table PHIEUMUAHANG
(
	MaPhieuMua int ,
	MaNhaCungCap int,
	MaSanPham int,
	NgayMua datetime,
	SoLuong int,
	DonGia float,
	ThanhTien float
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
	Ngay datetime,
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
	MaPhieuBan int ,
	MaKhachHang int,
	MaNhanVien int,
	MaSanPham int,
	SoLuong int,
	NgayBan datetime,
	DonGia float,
	ThanhTien float
)

Create table KHACHHANG
(
	MaKhachHang int identity (1,1) primary key,
	SoDienThoai nvarchar(50),
	TenKhachHang nvarchar(50),
)

Create table PHIEUDICHVU
(
	MaPhieuDichVu int ,
	MaKhachHang int,
	MaNhanVien int,
	MaDichVu int,
	SoLuong int,
	DonGia float,
	TraTruoc float,
	TinhTrang nvarchar(50),
	NgayBan datetime,
	ThanhTien float
)

Create table LOAIDICHVU
(
	MaDichVu int identity (1,1) primary key,
	TenLoaiDichVu nvarchar(50),
	DonGia float
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
Foreign Key(MaSanPham) References SANPHAM(MaSanPham) ON DELETE CASCADE

Alter table PHIEUMUAHANG
Add constraint FK_PHIEUMUAHANG_NHACUNGCAP_MaNhaCungCap
Foreign Key(MaNhaCungCap) References NHACUNGCAP(MaNhaCungCap) ON DELETE CASCADE

Alter table SANPHAM
Add constraint FK_SANPHAM_LOAISANPHAM_MaLoai
Foreign Key(MaLoai) References LOAISANPHAM(MaLoaiSP) ON DELETE CASCADE

Alter table LICHSUKHO
Add constraint FK_LICHSUKHO_SANPHAM_MaSanPham
Foreign Key(MaSanPham) References SANPHAM(MaSanPham) ON DELETE SET NULL

Alter table PHIEUBANHANG
Add constraint FK_PHIEUBANHANG_SANPHAM_MaSanPham
Foreign Key(MaSanPham) References SANPHAM(MaSanPham) ON DELETE SET NULL

Alter table PHIEUBANHANG
Add constraint FK_PHIEUBANHANG_KHACHHANG_MaKhachHang
Foreign Key(MaKhachHang) References KHACHHANG(MaKhachHang) ON DELETE CASCADE

Alter table PHIEUDICHVU
Add constraint FK_PHIEUDICHVU_KHACHHANG_MaKhachHang
Foreign Key(MaKhachHang) References KHACHHANG(MaKhachHang) ON DELETE CASCADE

Alter table PHIEUDICHVU
Add constraint FK_PHIEUDICHVU_LOAIDICHVU_MaLoaiDV
Foreign Key(MaDichVu) References LOAIDICHVU(MaDichVu)  ON DELETE SET NULL

Alter table PHIEUDICHVU
Add constraint FK_PHIEUDICHVU_NHANVIEN_MaNhanVien
Foreign Key(MaNhanVien) References NHANVIEN(MaNhanVien) ON DELETE SET NULL

Alter table PHIEUBANHANG
Add constraint FK_PHIEUBANHANG_NHANVIEN_MaNhanVien
Foreign Key(MaNhanVien) References NHANVIEN(MaNhanVien) ON DELETE SET NULL

/*Insert data*/
/*Nhớ sửa lại data bảng PHIEUBANHANG,PHIEUMUAHANG,PHIEUDICHVU */
INSERT INTO NHACUNGCAP (TenNhaCungCap, SoDienThoai, DiaChi)
VALUES
    ('PNJ', '0886134456', N'214 Đường Hồ Gươm, Q.1, TP.HCM'),
    ('DOJI', '0909100900', N'412 Võ Nguyên Giáp, Q.5, TP.HCM'),
    ('SJC','0931224301', N'92 Đường Phan Xích Long, Q.1, TP.HCM'),
    (N'Bảo Tín Minh Châu','0966146979', N'24 Đường Lý Thường Kiệt, Q.9, TP.HCM');

INSERT INTO LOAIDICHVU (TenLoaiDichVu, DonGia)
VALUES
	(N'Dịch vụ định giá và kiểm định', 200000),
    (N'Dịch vụ khôi phục', 400000),
    (N'Dịch vụ vệ sinh', 400000),
    (N'Dịch vụ đánh bóng', 500000);

INSERT INTO NHANVIEN(TenNhanVien, TaiKhoan, MatKhau, ChucVu)
VALUES
    (N'Nguyễn Thị Ánh', N'nguyenthianh', N'nta', N'Nhân viên bán hàng'),
	(N'Cao Bảo Hà', N'caobaoha', N'cbh', N'Nhân viên thu ngân'),
    (N'Trần Nhật Long', N'trannhatlong', N'tnl', N'Quản lý');

INSERT INTO KHACHHANG(SoDienThoai,TenKhachHang)
VALUES
    ('0913987654', N'Nguyễn Hồng Loan'),
    ('0913765432', N'Cao Quang Long'),
    ('0913554321', N'Huỳnh Anh Minh'),
    ('0913123456', N'Trần Minh Hiếu');

INSERT INTO LOAISANPHAM (TenLoaiSanPham, DonViTinh, LoiNhuan)
VALUES
    (N'Dây chuyền kim cương', N'chiếc', 25 ),
    (N'Nhẫn vàng', N'chiếc', 30),
    (N'Vòng tay vàng', N'chiếc', 20),
    (N'Nhẫn kim cương', N'cặp', 35),
    (N'Dây chuyền đá quý', N'chiếc', 40);

INSERT INTO PHIEUDICHVU (MaPhieuDichVu,MaKhachHang, MaNhanVien, MaDichVu, SoLuong,TraTruoc, TinhTrang, NgayBan)
VALUES (6,1, 1, 1, 3, 300000, N'Đã giao', '2024-08-11 04:52:12.000'),
	   (6,1, 1, 2, 2, 400000, N'Đã giao', '2024-08-11 04:52:12.000');

INSERT INTO PHIEUDICHVU (MaPhieuDichVu,MaKhachHang, MaNhanVien, MaDichVu, SoLuong,TraTruoc, TinhTrang, NgayBan)
VALUES (1,1, 1, 3, 1, 10000001, N'Đã giao', '2024-08-11'),
	   (1,1, 1, 4, 2, 5000001, N'Chưa giao', '2024-08-11');

INSERT INTO PHIEUDICHVU (MaKhachHang, MaNhanVien, MaDichVu, SoLuong,TraTruoc, TinhTrang, NgayBan)
VALUES (2, 2, 3, 4, 800000, N'Đã giao', '2024-10-3'),
	   (2, 2, 4, 7, 1750000, N'Chưa giao', '2024-10-3');
 
INSERT INTO PHIEUDICHVU (MaKhachHang, MaNhanVien, MaDichVu, SoLuong,TraTruoc, TinhTrang, NgayBan)
VALUES (2, 2, 3, 4, 800000, N'Đã giao', '2024-10-3'),
	   (2, 2, 4, 7, 1750000, N'Đã giao', '2024-10-3');

INSERT INTO PHIEUDICHVU (MaKhachHang, MaNhanVien, MaDichVu, SoLuong,TraTruoc, TinhTrang, NgayBan)
VALUES (2, 2, 3, 4, 800000, N'Chưa giao', '2024-10-3'),
	   (2, 2, 4, 7, 1750000, N'Chưa giao', '2024-10-3');
SELECT * FROM PHIEUDICHVU

INSERT INTO SANPHAM (TenSanPham, MaLoai)
VALUES
( N'Dây chuyền kim cương nam', 1),
    ( N'Nhẫn vàng nam', 2),
    ( N'Vòng tay vàng nam', 3),
    ( N'Nhẫn kim cương nữ', 4),
    ( N'Dây chuyền hồng ngọc', 5);
INSERT INTO SANPHAM (TenSanPham, MaLoai) VALUES ( N'Dây chuyền kim cương nữ', 1);

INSERT INTO PHIEUMUAHANG (MaPhieuMua, MaNhaCungCap, MaSanPham, NgayMua, SoLuong, DonGia) VALUES(2, 1, 1, '2027-10-04', 12,9000000);
INSERT INTO PHIEUMUAHANG (MaPhieuMua, MaNhaCungCap, MaSanPham, NgayMua, SoLuong, DonGia) VALUES(2, 2, 2, '2027-10-04', 8, 1000000);
INSERT INTO PHIEUMUAHANG (MaPhieuMua, MaNhaCungCap, MaSanPham, NgayMua, SoLuong, DonGia) VALUES(2, 3, 3, '2027-10-04', 16, 1000000);
INSERT INTO PHIEUMUAHANG (MaPhieuMua, MaNhaCungCap, MaSanPham, NgayMua, SoLuong, DonGia) VALUES(2, 4, 4, '2027-10-04', 8, 4500000);
INSERT INTO PHIEUMUAHANG (MaPhieuMua, MaNhaCungCap, MaSanPham, NgayMua, SoLuong, DonGia) VALUES(2, 4, 5, '2027-10-04', 6, 5000000);
INSERT INTO PHIEUMUAHANG (MaPhieuMua, MaNhaCungCap, MaSanPham, NgayMua, SoLuong, DonGia) VALUES(2, 1, 6, '2027-10-04', 12,10000000);

INSERT INTO PHIEUBANHANG(MaPhieuBan,MaKhachHang, MaNhanVien, MaSanPham, SoLuong, NgayBan) VALUES (1, 1, 3, 1, 12, '2026-07-10');
INSERT INTO PHIEUBANHANG(MaPhieuBan,MaKhachHang, MaNhanVien, MaSanPham, SoLuong, NgayBan) VALUES (1, 2, 2, 2, 8,  '2026-07-10');
INSERT INTO PHIEUBANHANG(MaPhieuBan,MaKhachHang, MaNhanVien, MaSanPham, SoLuong, NgayBan) VALUES (1, 3, 1, 3, 16, '2026-07-10');
INSERT INTO PHIEUBANHANG(MaPhieuBan,MaKhachHang, MaNhanVien, MaSanPham, SoLuong, NgayBan) VALUES (1, 4, 3, 4, 8,  '2026-07-10');
INSERT INTO PHIEUBANHANG(MaPhieuBan,MaKhachHang, MaNhanVien, MaSanPham, SoLuong, NgayBan) VALUES (1, 4, 3, 5, 6,  '2026-07-10');
INSERT INTO PHIEUBANHANG(MaPhieuBan,MaKhachHang, MaNhanVien, MaSanPham, SoLuong, NgayBan) VALUES (1, 4, 3, 6, 12,  '2026-07-10');


DELETE FROM PHIEUBANHANG
DELETE FROM PHIEUDICHVU
DELETE FROM KHACHHANG
DELETE FROM LICHSUKHO
DELETE FROM LOAIDICHVU
DELETE FROM LOAISANPHAM 
DELETE FROM NHACUNGCAP
DELETE FROM NHANVIEN
DELETE FROM PHIEUMUAHANG
DELETE FROM SANPHAM
DELETE FROM SANPHAM WHERE MaSanPham = 7
DELETE FROM SANPHAM WHERE MaSanPham = 8 
DELETE FROM PHIEUMUAHANG WHERE MaPhieuMua = 3

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

UPDATE LOAISANPHAM SET LoiNhuan = 25 WHERE MaLoaiSP = 1;
UPDATE LOAISANPHAM SET TenLoaiSanPham = N'Dây chuyền kim cương' WHERE MaLoaiSP = 1;
UPDATE LOAISANPHAM SET DonViTinh = N'chiếc' WHERE MaLoaiSP = 1;
UPDATE SANPHAM SET MaLoai = 1 WHERE MaSanPham = 1;
UPDATE SANPHAM SET MaLoai = 1 WHERE MaSanPham = 6;
use master
ALTER DATABASE QuanLyKinhDoanhVangBacDaQuy SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE QuanLyKinhDoanhVangBacDaQuy;


CREATE PROCEDURE Danh_Sach_Nhan_Vien_Theo_ID @MaNhanVien int
AS
BEGIN
    SELECT * FROM NHANVIEN WHERE MaNhanVien = @MaNhanVien
END
--
CREATE PROC USP_Login
@TaiKhoan nvarchar(50), @MatKhau nvarchar(50)
AS
BEGIN
	SELECT * FROM NHANVIEN WHERE TaiKhoan = @TaiKhoan And MatKhau = @MatKhau
END
--

--SEARCH_FUNCTION
CREATE PROC Search_Table
    @TenBang NVARCHAR(50),@ParaJSON NVARCHAR(MAX) -- JSON chứa các cặp {Tên cột, Giá trị}
AS
BEGIN
    DECLARE @TenCot NVARCHAR(50), @GiaTri NVARCHAR(50)
    DECLARE @index INT = 0
	PRINT @ParaJSON
	DECLARE @sql NVARCHAR(MAX) = N'SELECT * FROM ' + QUOTENAME(@TenBang) +   N' WHERE 1 = 1'
    WHILE 1 = 1
    BEGIN
        SELECT 
            @TenCot = JSON_VALUE(@ParaJSON, '$[' + CAST(@index AS NVARCHAR) + '].TenCot'),
            @GiaTri = JSON_VALUE(@ParaJSON, '$[' + CAST(@index AS NVARCHAR) + '].GiaTri')
		PRINT @sql + 'SQL:'
        IF @TenCot IS NULL BREAK
		IF @GiaTri <> ''
		BEGIN
			IF TRY_CAST(@GiaTri AS INT) IS NOT NULL
			BEGIN
				SET @sql = @sql + N' AND CAST(' + QUOTENAME(@TenCot) + N' AS NVARCHAR) = ''' + @GiaTri + ''''
			END
			ELSE
			BEGIN
				SET @sql = @sql + N' AND ' + QUOTENAME(@TenCot) + N' = N''' + @GiaTri + N''''
			END
		END
        SET @index = @index + 1
		PRINT @sql + 'SQL:'
    END
    -- Thực thi câu lệnh SQL động
    EXEC sp_executesql @sql
END
--SHOW_FUNCTION
--PHIEUDICHVU
CREATE PROC Show_Phieu_Dich_Vu
AS 
BEGIN
SELECT DISTINCT BCDV3.BCDV1MaPhieu AS [Số phiếu] , BCDV3.[Ngày lập],KH.TenKhachHang AS[Khách hàng],BCDV3.[Tổng tiền],
	   BCDV3.[Trả trước],BCDV3.[Tổng tiền] - BCDV3.[Trả trước] AS [Còn lại] , BCDV3.[Tình trạng]
FROM
	(
		SELECT *
		FROM 
		(
			SELECT PDV.MaPhieuDichVu AS [BCDV1MaPhieu],
			(
				SELECT DISTINCT(PDV1.NgayBan)
				FROM PHIEUDICHVU PDV1
				WHERE PDV1.MaPhieuDichVu = PDV.MaPhieuDichVu
			) as [Ngày lập],
			(
				SELECT SUM(PDV1.ThanhTien)
				FROM PHIEUDICHVU PDV1
				WHERE PDV1.MaPhieuDichVu = PDV.MaPhieuDichVu
			)as [Tổng tiền],
			(
				SELECT SUM(PDV1.TraTruoc)
				FROM PHIEUDICHVU PDV1
				WHERE PDV1.MaPhieuDichVu = PDV.MaPhieuDichVu
			)as [Trả trước]
			FROM PHIEUDICHVU PDV
			GROUP BY PDV.MaPhieuDichVu
		) AS BCDV1,
		(	
			SELECT TTDV.MaPhieuDichVu AS [BCDV2MaPhieu],
			CASE
				WHEN TTDV.[Tình trạng] = N'Hoàn thành' THEN 'Hoàn thành'
				ELSE N'Chưa hoàn thành'
			END AS [Tình trạng]
			FROM
			(
				SELECT PDV1.MaPhieuDichVu
				,

				(
					SELECT TRANGTHAI1.[Tình trạng]
					FROM
					(
						SELECT TONG.MaPhieuDichVu, 
						CASE 
							WHEN TONGGIAO.TongDaGiao = TONG.TongSoPhieu THEN 'Hoàn thành'
							ELSE 'Chưa hoàn thành'
						END AS [Tình trạng]
						FROM
							(
								SELECT PDV2.MaPhieuDichVu,COUNT(*) as TongDaGiao
								FROM PHIEUDICHVU PDV2
								WHERE PDV2.TinhTrang = N'Đã giao' 
								GROUP BY PDV2.MaPhieuDichVu
							) AS TONGGIAO,
							(
								SELECT PDV2.MaPhieuDichVu,COUNT(*) as TongSoPhieu
								FROM PHIEUDICHVU PDV2						
								GROUP BY PDV2.MaPhieuDichVu
							) AS TONG
						WHERE TONG.MaPhieuDichVu = TONGGIAO.MaPhieuDichVu 
					) AS TRANGTHAI1
					WHERE TRANGTHAI1.MaPhieuDichVu = PDV1.MaPhieuDichVu
				) AS [Tình trạng]
				FROM PHIEUDICHVU PDV1
				GROUP BY PDV1.MaPhieuDichVu
			) AS TTDV
		) AS BCDV2
		WHERE BCDV1.BCDV1MaPhieu = BCDV2.BCDV2MaPhieu
	) AS BCDV3,KHACHHANG KH,PHIEUDICHVU PDV
WHERE BCDV3.BCDV1MaPhieu = PDV.MaPhieuDichVu AND PDV.MaKhachHang = KH.MaKhachHang
END

--LICHSUKHO
CREATE PROC Show_Lich_Su_Kho
@Thang int,@Nam int
AS BEGIN
	SELECT BCTK.MaSanPham AS [Mã sản phẩm] ,SP.TenSanPham AS [Tên sản phẩm],
	CASE
	 WHEN BCTK.[Tồn đầu] IS NOT NULL THEN BCTK.[Tồn đầu] 
	 ELSE 0
	END AS [Tồn đầu],
	CASE
	 WHEN BCTK.[Số lượng mua vào] IS NOT NULL THEN BCTK.[Số lượng mua vào]
	 ELSE 0
	END AS [Số lượng mua vào],
	CASE
	 WHEN BCTK.[Số lượng bán ra] IS NOT NULL THEN BCTK.[Số lượng bán ra]
	 ELSE 0
	END AS [Số lượng bán ra],
	CASE
	 WHEN BCTK.[Tồn cuối] IS NOT NULL THEN BCTK.[Tồn cuối]
	 ELSE 0
	END AS [Tồn cuối],
	LSP.DonViTinh AS [Đơn vị tính]
	FROM 
	(
		SELECT LSK.MaSanPham,
		(
			SELECT LSK1.SoLuongTruoc		
			FROM LICHSUKHO LSK1
			WHERE LSK1.Ngay = (
							SELECT MIN(LSK2.Ngay) 
							FROM LICHSUKHO LSK2
							WHERE LSK2.MaSanPham = LSK1.MaSanPham AND MONTH(LSK2.Ngay) = @Thang AND YEAR(LSK2.Ngay) = @Nam
							)
				 AND LSK1.MaSanPham = LSK.MaSanPham 
		) as [Tồn đầu],
		(
			SELECT SUM(LSK1.SoLuongSau - LSK1.SoLuongTruoc)
			FROM LICHSUKHO LSK1
			WHERE LSK1.MaSanPham = LSK.MaSanPham AND LSK1.LoaiGiaoDich = 'Mua' AND MONTH(LSK1.Ngay) = @Thang AND YEAR(LSK1.Ngay) = @Nam
		) as [Số lượng mua vào],
		(
			SELECT SUM(LSK1.SoLuongTruoc - LSK1.SoLuongSau)
			FROM LICHSUKHO LSK1
			WHERE LSK1.MaSanPham = LSK.MaSanPham AND LSK1.LoaiGiaoDich = N'Bán' AND MONTH(LSK1.Ngay) = @Thang AND YEAR(LSK1.Ngay) = @Nam
		) as [Số lượng bán ra],
		(
			SELECT LSK1.SoLuongSau		
			FROM LICHSUKHO LSK1
			WHERE LSK1.Ngay = (
							SELECT MAX(LSK2.Ngay) 
							FROM LICHSUKHO LSK2
							WHERE LSK2.MaSanPham = LSK1.MaSanPham AND MONTH(LSK2.Ngay) = @Thang AND YEAR(LSK2.Ngay) = @Nam
							)
				 AND LSK1.MaSanPham = LSK.MaSanPham
		) as [Tồn cuối]
		FROM LICHSUKHO LSK
		GROUP BY LSK.MaSanPham
	) as BCTK,SANPHAM SP,LOAISANPHAM LSP
	WHERE BCTK.MaSanPham = SP.MaSanPham  AND SP.MaLoai = LSP.MaLoaiSP

END
DROP PROC Show_Lich_Su_Kho
--THANHTOAN-PHIEUMUAHANG
--SANPHAM
CREATE PROC Thanh_Toan_Phieu_Mua_Hang
@MaSanPham int
AS
BEGIN
	SELECT  SP.TenSanPham as [Tên sản phẩm],LSP.TenLoaiSanPham as [Loại sản phẩm],
	LSP.DonViTinh as [Đơn vị tính]
	FROM SANPHAM SP,LOAISANPHAM LSP
	WHERE SP.MaSanPham = @MaSanPham and SP.MaLoai = LSP.MaLoaiSP
END

DROP PROC Thanh_Toan_Phieu_Mua_Hang
--THANHTOAN-PHIEUMUAHANG
--SANPHAM
CREATE PROC Thanh_Toan_Phieu_Ban_Hang
@MaSanPham int
AS
BEGIN
	SELECT  SP.TenSanPham as [Tên sản phẩm],SP.DonGia as [Đơn giá],
	LSP.DonViTinh as [Đơn vị tính],LSP.TenLoaiSanPham as [Tên loại sản phẩm]
	FROM SANPHAM SP,LOAISANPHAM LSP
	WHERE SP.MaSanPham = @MaSanPham and SP.MaLoai = LSP.MaLoaiSP
END

DROP PROC Thanh_Toan_Phieu_Ban_Hang
--KHACHHANG
CREATE PROC Thanh_Toan_Phieu_Ban_Hang_Khach_Hang
@MaKhachHang int
AS
BEGIN
	SELECT TenKhachHang as [Tên khách hàng],SoDienThoai as [Số điện thoại]
	FROM KHACHHANG
	WHERE MaKhachHang = @MaKhachHang
END
DROP PROC Thanh_Toan_Phieu_Ban_Hang_Khach_Hang
--NHANVIEN
CREATE PROC Thanh_Toan_Phieu_Ban_Hang_Nhan_Vien
@MaNhanVien int
AS
BEGIN
	SELECT TenNhanVien as [Tên nhân viên]
	FROM NHANVIEN
	WHERE MaNhanVien = @MaNhanVien
END
DROP PROC Thanh_Toan_Phieu_Ban_Hang_Nhan_Vien
--NHACUNGCAP

--THANH-TOAN-PHIEUDICHVU
CREATE PROC Thanh_Toan_Phieu_Dich_Vu
@MaDichVu int
AS
BEGIN
	SELECT TenLoaiDichVu as [Tên loại dịch vụ],DonGia as [Đơn giá]
	FROM LOAIDICHVU
	WHERE MaDichVu = @MaDichVu
END
DROP PROC Thanh_Toan_Phieu_Dich_Vu
--NHACUNGCAP
CREATE PROC Thanh_Toan_Phieu_Ban_Hang_Khach_hang
@MaNhaCungCap int
AS
BEGIN
	SELECT TenNhaCungCap as [Tên nhà cung cấp],DiaChi as [Địa chỉ],SoDienThoai as [Số điện thoại]
	FROM NHACUNGCAP
	WHERE MaNhaCungCap = @MaNhaCungCap
END
DROP PROC Thanh_Toan_Phieu_Mua_Hang_Nha_Cung_Cap
--SHOW-RECEIPT-ID

--TRIGGER SANPHAM(DONGIA) - PHIEUBANHANG(DONGIA),(THANHTIEN) - LICHSUKHO
DROP TRIGGER TG_PHIEUBANHANG_SANPHAM_LICHSUKHO_INSERT
CREATE TRIGGER TG_PHIEUBANHANG_SANPHAM_LICHSUKHO_INSERT
ON PHIEUBANHANG
INSTEAD OF INSERT
AS
BEGIN
	DECLARE @SoLuongBan int;
	SELECT @SoLuongBan = SoLuong FROM INSERTED I ;

	IF (@SoLuongBan <= 0) BEGIN
		PRINT 'SO LUONG BAN PHAI LON HON 0'
	END
	ELSE BEGIN
		INSERT INTO PHIEUBANHANG (MaPhieuBan,MaKhachHang, MaNhanVien, MaSanPham, SoLuong,NgayBan, DonGia,ThanhTien)
		SELECT 
			i.MaPhieuBan,
			i.MaKhachHang,
			i.MaNhanVien,
			i.MaSanPham,
			i.SoLuong,
			i.NgayBan,
			sp.DonGia,
			i.SoLuong * sp.DonGia as ThanhTien
			-- Lấy DonGia từ bảng SANPHAM
		FROM
			inserted i,SANPHAM SP
		WHERE i.MaSanPham = SP.MaSanPham;
		DECLARE @SoLuongMoiNhat int;
		SELECT @SoLuongMoiNhat = SP.SoLuong
		FROM SANPHAM SP ,inserted i
		WHERE i.MaSanPham = SP.MaSanPham

		IF (@SoLuongMoiNhat IS NULL  )
		BEGIN
			PRINT 'HẾT HÀNG,KHÔNG THỂ BÁN ĐƯỢC'
		END
		ELSE 
		BEGIN
			IF (@SoLuongMoiNhat - @SoLuongBan > 0 )
			BEGIN
				INSERT INTO LICHSUKHO (MaSanPham,LoaiGiaoDich,Ngay,SoLuongTruoc,SoLuongSau)
				SELECT 
					i.MaSanPham,
					N'Bán',
					i.NgayBan,
					@SoLuongMoiNhat,
					@SoLuongMoiNhat - i.SoLuong
				FROM
					inserted i;
				UPDATE SANPHAM 
				SET SoLuong = @SoLuongMoiNhat - i.SoLuong,TinhTrang = 1
				FROM SANPHAM SP,INSERTED I
				WHERE SP.MaSanPham = I.MaSanPham;
			END
			ELSE IF (@SoLuongMoiNhat - @SoLuongBan = 0 )
			BEGIN
				INSERT INTO LICHSUKHO (MaSanPham,LoaiGiaoDich,Ngay,SoLuongTruoc,SoLuongSau)
				SELECT 
					i.MaSanPham,
					N'Bán',
					i.NgayBan,
					@SoLuongMoiNhat,
					@SoLuongMoiNhat - i.SoLuong
				FROM
					inserted i;
				UPDATE SANPHAM 
				SET SoLuong = @SoLuongMoiNhat - i.SoLuong,TinhTrang = 0
				FROM SANPHAM SP,INSERTED I
				WHERE SP.MaSanPham = I.MaSanPham;
			END
			ELSE
			BEGIN
				PRINT 'KHÔNG THỂ BÁN QUÁ SỐ LƯỢNG TỒN KHO'
			END
		END
	END
END;
--TRIGGER PHIEUMUAHANG(THANHTIEN)-LICHSUKHO (SOLUONGTRUOC,SOLUONGSAU)
DROP TRIGGER TG_PHIEUMUAHANG_LICHSUKHO_INSERT
CREATE TRIGGER TG_PHIEUMUAHANG_LICHSUKHO_INSERT
ON PHIEUMUAHANG
INSTEAD OF INSERT
AS
BEGIN
	DECLARE @SoLuongMua int;
	SELECT @SoLuongMua = SoLuong FROM INSERTED I ;

	IF (@SoLuongMua <= 0) BEGIN
		PRINT 'SỐ LƯỢNG NHẬP VÀO PHẢI LỚN HƠN 0'
	END
	ELSE BEGIN
	   INSERT INTO PHIEUMUAHANG (MaPhieuMua,MaNhaCungCap, MaSanPham, NgayMua, SoLuong, DonGia,ThanhTien)
		SELECT 
			i.MaPhieuMua,
			i.MaNhaCungCap,
			i.MaSanPham,
			i.NgayMua,
			i.SoLuong,
			i.DonGia,
			i.SoLuong * i.DonGia as ThanhTien
		FROM
			inserted i;
		DECLARE @SoLuongMoiNhat int;
		SELECT @SoLuongMoiNhat = SP.SoLuong
		FROM SANPHAM SP,inserted i
		WHERE SP.MaSanPham = i.MaSanPham;
		IF (@SoLuongMoiNhat IS NULL)
		BEGIN
			INSERT INTO LICHSUKHO (MaSanPham,LoaiGiaoDich,Ngay,SoLuongTruoc,SoLuongSau)
			SELECT 
				i.MaSanPham,
				N'Mua',
				i.NgayMua,
				0,
				i.SoLuong
			FROM
				inserted i;
			UPDATE SANPHAM 
			SET SoLuong = I.SoLuong,TinhTrang = 1,DonGia = I.DonGia + I.DonGia * (LSP.LoiNhuan/CAST(100 AS FLOAT))
			FROM SANPHAM SP,INSERTED I,LOAISANPHAM LSP
			WHERE SP.MaSanPham = I.MaSanPham AND SP.MaLoai = LSP.MaLoaiSP ;
		END
		ELSE 
		BEGIN
			INSERT INTO LICHSUKHO (MaSanPham,LoaiGiaoDich,Ngay,SoLuongTruoc,SoLuongSau)
			SELECT 
				i.MaSanPham,
				N'Mua',
				i.NgayMua,
				@SoLuongMoiNhat,
				@SoLuongMoiNhat + i.SoLuong
			FROM
				inserted i;
			
			UPDATE SANPHAM 
			SET SoLuong = @SoLuongMoiNhat + I.SoLuong ,TinhTrang = 1 , DonGia = I.DonGia + I.DonGia * (LSP.LoiNhuan/CAST(100 AS FLOAT))
			FROM SANPHAM SP,INSERTED I ,LOAISANPHAM LSP
			WHERE SP.MaSanPham = I.MaSanPham AND SP.MaLoai = LSP.MaLoaiSP;
		END
	END
END;

--TG-PHIEUDICHVU-INSERT
CREATE TRIGGER TG_PHIEUDICHVU_INSERT
ON PHIEUDICHVU
INSTEAD OF INSERT
AS
BEGIN
	DECLARE @TraTruoc float,@DonGia float,@SoLuong int,@MaPhieuMoi int;
	SELECT @TraTruoc = I.TraTruoc, @DonGia = LDV.DonGia ,@SoLuong = I.SoLuong
	FROM INSERTED I,LOAIDICHVU LDV
	WHERE I.MaDichVu = LDV.MaDichVu
	DECLARE @ThanhTien float = @DonGia*@SoLuong;


	IF (@TraTruoc >= (50/CAST(100 AS FLOAT))*@ThanhTien)
	BEGIN
		INSERT INTO PHIEUDICHVU (MaPhieuDichVu,MaKhachHang,MaNhanVien,MaDichVu,SoLuong,DonGia,TraTruoc,TinhTrang,NgayBan,ThanhTien)
		SELECT
			i.MaPhieuDichVu,
			i.MaKhachHang,
			i.MaNhanVien,
			i.MaDichVu,
			i.SoLuong,
			LDV.DonGia,
			i.TraTruoc,
			i.TinhTrang,
			i.NgayBan,
			i.SoLuong * LDV.DonGia as ThanhTien
		FROM inserted i,LOAIDICHVU LDV
		WHERE i.MaDichVu = LDV.MaDichVu
	END
	ELSE
	BEGIN
		PRINT 'TRA TRUOC PHAI BANG IT NHAT MOT NUA THANH TIEN'
	END
END
DROP TRIGGER TG_PHIEUDICHVU_INSERT
--TG_LOAISANPHAM_LOINHUAN_UPDATE
CREATE TRIGGER TG_LOAISANPHAM_LOINHUAN_UPDATE
ON LOAISANPHAM
FOR UPDATE
AS 
BEGIN
	DECLARE @DonGiaCu FLOAT,@LoiNhuan int,@DonGiaMoi FLOAT;
	UPDATE SANPHAM 
	SET DonGia = SANPHAMNEW.DonGiaMoi
	FROM SANPHAM,
		(SELECT SP2.MaSanPham, SP2.TenSanPham,SP2.MaLoai,SP2.SoLuong,BangDonGiaMoi.DonGiaMoi,SP2.TinhTrang
		 FROM
			(SELECT GiaMoiNhat.MaSanPham,GiaMoiNhat.MaLoaiSP,GiaMoiNhat.DonGia,I.LoiNhuan,GiaMoiNhat.DonGia + GiaMoiNhat.DonGia*(I.LoiNhuan/CAST(100 AS FLOAT)) as DonGiaMoi
			 FROM
				(SELECT SP.MaSanPham,LSP.MaLoaiSP,PMH.DonGia
				 FROM LOAISANPHAM LSP,SANPHAM SP,PHIEUMUAHANG PMH
				 WHERE LSP.MaLoaiSP = SP.MaLoai AND SP.MaSanPham = PMH.MaSanPham
				 AND PMH.NgayMua = (
								   SELECT MAX(PMH1.NgayMua)
								   FROM LOAISANPHAM LSP1,SANPHAM SP1,PHIEUMUAHANG PMH1
								   WHERE LSP1.MaLoaiSP = SP1.MaLoai AND SP1.MaSanPham = PMH1.MaSanPham 
								   )
				) as GiaMoiNhat,INSERTED I
			 WHERE GiaMoiNhat.MaLoaiSP = I.MaLoaiSP) AS BangDonGiaMoi,SANPHAM SP2
		WHERE BangDonGiaMoi.MaSanPham = SP2.MaSanPham) AS SANPHAMNEW
	WHERE SANPHAM.MaSanPham = SANPHAMNEW.MaSanPham
	
END
--TG_SANPHAM_MALOAI_UPDATE

CREATE TRIGGER TG_SANPHAM_MALOAI_SOLUONG_UPDATE
ON SANPHAM
FOR UPDATE
AS
BEGIN
	UPDATE SANPHAM
	SET DonGia = DonGiaMoi.DonGiaVoiMaLoaiMoi
	FROM
	(
		SELECT LoiNhuanMoi.MaSanPham,PMH.DonGia + PMH.DonGia*(LoiNhuanMoi.LoiNhuan/CAST(100 AS FLOAT)) as DonGiaVoiMaLoaiMoi
		FROM
		(	
			SELECT * 
			FROM INSERTED I,LOAISANPHAM LSP
			WHERE I.MaLoai = LSP.MaLoaiSP
		) AS LoiNhuanMoi,PHIEUMUAHANG PMH
		WHERE LoiNhuanMoi.MaSanPham = PMH.MaSanPham AND PMH.NgayMua = (
																		SELECT MAX(PMH1.NgayMua)
																		FROM PHIEUMUAHANG PMH1,INSERTED I1
																		WHERE PMH1.MaSanPham = I1.MaSanPham
																	  )
	) AS DonGiaMoi,SANPHAM 
	WHERE DonGiaMoi.MaSanPham = SANPHAM.MaSanPham

	DECLARE @SoLuongMoi int;
	SELECT @SoLuongMoi = SoLuong
	FROM INSERTED

	IF (@SoLuongMoi = 0)
	BEGIN
		UPDATE
		SANPHAM SET TinhTrang = 0
		FROM SANPHAM SP,INSERTED I
		WHERE SP.MaSanPham = I.MaSanPham

	END
	ELSE IF (@SoLuongMoi < 0)
	BEGIN
		PRINT 'SO LUONG MOI KHONG HOP LE'

	END
END
DROP TRIGGER TG_SANPHAM_MALOAI_SOLUONG_UPDATE
--TG_SANPHAM_SOLUONG_UPDATE

DROP TRIGGER TG_SANPHAM_SOLUONG_UPDATE
--EXEC-PROCEDURE
EXEC Danh_Sach_Nhan_Vien_Theo_ID 1

DECLARE @DieuKien NVARCHAR(MAX) = N'[
	{"TenCot": "MaKhachHang", "GiaTri": "1"},
	{"TenCot": "SoDienThoai", "GiaTri": "" },
    {"TenCot": "TenKhachHang", "GiaTri": "" }
]';
EXEC Search_Table 'KHACHHANG',@DieuKien;
EXEC Show_Phieu_Dich_Vu;
EXEC Show_Lich_Su_Kho @Thang = 10
EXEC Thanh_Toan_Phieu_Mua_Hang_Nha_Cung_Cap @MaNhaCungCap = 1

--DROP-TRIGGER
DROP PROCEDURE IF EXISTS Search_Table;
DROP PROC Show_Phieu_Dich_Vu;
DROP PROC Show_Lich_Su_Kho
DROP PROC Thanh_Toan_Phieu_Mua_Hang_Nha_Cung_Cap 
DROP TRIGGER TG_PHIEUBANHANG_SANPHAM_LICHSUKHO_INSERT
DROP TRIGGER TG_PHIEUMUAHANG_LICHSUKHO_INSERT
DROP TRIGGER TG_PHIEUDICHVU_INSERT
DROP TRIGGER TG_LOAISANPHAM_LOINHUAN_UPDATE
DROP TRIGGER TG_SANPHAM_MALOAI_UPDATE

DECLARE @sql NVARCHAR(MAX) = '';
-- Tạo danh sách các câu lệnh DROP TRIGGER cho tất cả các trigger
SELECT @sql = @sql + 'DROP TRIGGER IF EXISTS ' + QUOTENAME(t.name) + ';' + CHAR(13)
FROM sys.triggers t
WHERE t.is_ms_shipped = 0; -- Chỉ xóa các trigger người dùng tạo, không xóa trigger hệ thống
-- Thực thi câu lệnh DROP TRIGGER
EXEC sp_executesql @sql;




