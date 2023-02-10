-- Thêm dữ liêu
	INSERT INTO  Bacsi VALUES ('BS011',N'Trần Thị F',32,N'Bác sĩ','0927621222');
-- Xóa dữ liệu
    DELETE FROM Bacsi 
	WHERE madinhdanh = 'BS011';
-- Sửa dữ liệu
    UPDATE Bacsi 
	SET Bacsi.tuoi = 30 ,Bacsi.sđt_bacsi = '0915647543'
	WHERE Bacsi.madinhdanh = 'BS011';
-- tương tự thêm, sửa, xóa với các bàng khác

--THỐNG KÊ SỐ MŨI TIÊM CỦA CÁC BỆNH NHÂN
SELECT Benhnhan.ID_benh_nhan,Benhnhan.hoten,Thuoctiem.tenthuoc,Phieutiem.somuidatiem + 1
FROM Benhnhan,Phieutiem,Thuoctiem
WHERE Phieutiem.ID_benh_nhan = Benhnhan.ID_benh_nhan AND Thuoctiem.masothuoc = Phieutiem.masothuoc;

--THỐNG KÊ SỐ MŨI CÒN THIẾU
SELECT Benhnhan.ID_benh_nhan,Benhnhan.hoten,Thuoctiem.tenthuoc, Thuoctiem.somuicantiem - Phieutiem.somuidatiem - 1
FROM Benhnhan,Thuoctiem,Phieutiem
WHERE Benhnhan.ID_benh_nhan = Phieutiem.ID_benh_nhan AND Thuoctiem.masothuoc = Phieutiem.masothuoc AND Thuoctiem.masothuoc = Phieutiem.masothuoc;

--THỐNG KÊ NGÀY TIÊM MŨI TIẾP
SELECT Benhnhan.ID_benh_nhan,Benhnhan.hoten,Thuoctiem.tenthuoc,DATEADD(DAY,Thuoctiem.songaytiemmuitiep,Phieutiem.ngaytiem)
FROM Benhnhan,Thuoctiem,Phieutiem
WHERE Phieutiem.ID_benh_nhan = Benhnhan.ID_benh_nhan AND Thuoctiem.masothuoc = Phieutiem.masothuoc;
