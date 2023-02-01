CREATE TABLE Benhnhan (
   ID_benh_nhan nvarchar(20) NOT NULL,
   hoten nvarchar(20) NOT NULL,
   cccd nvarchar(20) NOT NULL,
   ngaysinh date NOT NULL,
   sdt nvarchar(20) NOT NULL,
   gioitinh nvarchar(5) NOT NULL,
   email varchar(30) NOT NULL,
   PRIMARY KEY (ID_benh_nhan) 
);

INSERT INTO Benhnhan VALUES ('BN01',N'Nguyễn Văn A','03630202345','2000-10-20','0931245465','Nam','drastra3102@gmail.com');
INSERT INTO Benhnhan VALUES ('BN02',N'Nguyễn Thị A','03612203345','2000-11-20','0945645222',N'Nữ','nta@gmail.com');
INSERT INTO Benhnhan VALUES ('BN03',N'Nguyễn Văn B','03486543345','2000-12-20','0353947563','Nam','nvb@gmail.com');
INSERT INTO Benhnhan VALUES ('BN04',N'Nguyễn Thị B','03987654345','2000-10-20','0917463284',N'Nữ','ntb@gmail.com');
INSERT INTO Benhnhan VALUES ('BN05',N'Nguyễn Văn C','03630111111','2000-09-20','0943846378','Nam','nvc@gmail.com');
INSERT INTO Benhnhan VALUES ('BN06',N'Nguyễn Thị C','03223344345','2000-08-20','0887433334',N'Nữ','ntc@gmail.com');
INSERT INTO Benhnhan VALUES ('BN07',N'Nguyễn Văn D','01010102345','2000-07-20','0935645645','Nam','nvd@gmail.com');
INSERT INTO Benhnhan VALUES ('BN08',N'Nguyễn Thị D','03630555544','2000-06-20','0978764535',N'Nữ','ntd@gmail.com');
INSERT INTO Benhnhan VALUES ('BN09',N'Nguyễn Văn E','03630222234','2000-05-20','0954765745','Nam','nve@gmail.com');
INSERT INTO Benhnhan VALUES ('BN10',N'Nguyễn Thị E','01454333333','2000-04-20','0909834957',N'Nữ','nte@gmail.com');

CREATE TABLE Bacsi(
    madinhdanh nvarchar(20) NOT NULL,
	tenbacsi nvarchar(20) NOT NULL,
	tuoi int NOT NULL,
	chucdanh nvarchar(20) NOT NULL,
	sđt_bacsi nvarchar(20) NOT NULL,
	PRIMARY KEY (madinhdanh)
);

INSERT INTO Bacsi VALUES ('BS001',N'Trần Văn A',40,N'Trường Khoa','0746382773');
INSERT INTO Bacsi VALUES ('BS002',N'Trần Thị A',31,N'Bác sĩ','0744535773');
INSERT INTO Bacsi VALUES ('BS003',N'Trần Văn B',27,N'Bác sĩ','0956464556');
INSERT INTO Bacsi VALUES ('BS004',N'Trần Thị B',33,N'Phó Khoa','0734562773');
INSERT INTO Bacsi VALUES ('BS005',N'Trần Văn C',28,N'Bác sĩ','0936463273');
INSERT INTO Bacsi VALUES ('BS006',N'Trần Thị C',27,N'Bác sĩ','0986544322');
INSERT INTO Bacsi VALUES ('BS007',N'Trần Văn D',35,N'Bác sĩ','0888342364');
INSERT INTO Bacsi VALUES ('BS008',N'Trần Thị D',29,N'Bác sĩ','0932747324');
INSERT INTO Bacsi VALUES ('BS009',N'Trần Văn E',31,N'Bác sĩ','0936345454');
INSERT INTO Bacsi VALUES ('BS010',N'Trần Thị E',31,N'Bác sĩ','0927625222');

CREATE TABLE Thuoctiem(
     masothuoc nvarchar(20) NOT NULL,
	 tenthuoc nvarchar(20) NOT NULL,
	 soluong float NOT NULL,
	 somuicantiem int NOT NULL,
	 songaytiemmuitiep int NULL,
	 dongia float NOT NULL,
	 PRIMARY KEY (masothuoc)
);

INSERT INTO Thuoctiem VALUES ('ID001','Pfizer',2500,2,30,25000);
INSERT INTO Thuoctiem VALUES ('ID002','Morena',2000,2,40,55000);
INSERT INTO Thuoctiem VALUES ('ID003','Astra',3500,2,60,25000);
INSERT INTO Thuoctiem VALUES ('ID004','Bio',5500,2,30,30000);
INSERT INTO Thuoctiem VALUES ('ID005','Cecas',6500,2,30,40000);
INSERT INTO Thuoctiem VALUES ('ID006','Sputnik',2700,2,45,35000);
INSERT INTO Thuoctiem VALUES ('ID007','Sinopharm',3000,2,90,25000);
INSERT INTO Thuoctiem VALUES ('ID008','Spikevax',5000,2,90,50000);
INSERT INTO Thuoctiem VALUES ('ID009','H5N1',4000,2,90,45000);
INSERT INTO Thuoctiem VALUES ('ID010','Abdala',1500,2,50,60000);

CREATE TABLE Phieutiem(
    ID_phieutiem nvarchar(20) NOT NULL,
	ID_benh_nhan nvarchar(20) NOT NULL,
	madinhdanh nvarchar(20) NOT NULL,
	masothuoc nvarchar(20) NOT NULL,
	somuidatiem int NOT NULL,
	ngaydatiem date NULL,
	ngaytiem date NOT NULL,
	PRIMARY KEY(ID_phieutiem),
	FOREIGN KEY (ID_benh_nhan) REFERENCES Benhnhan(ID_benh_nhan)
);
ALTER TABLE Phieutiem
ADD FOREIGN KEY (madinhdanh) REFERENCES Bacsi(madinhdanh);

ALTER TABLE Phieutiem
ADD FOREIGN KEY (masothuoc) REFERENCES Thuoctiem(masothuoc);

INSERT INTO Phieutiem VALUES ('PT001','BN01','BS001','ID001',1,'2022-7-10','2023-1-10');
INSERT INTO Phieutiem VALUES ('PT002','BN02','BS002','ID002',0,NULL,'2023-2-11');
INSERT INTO Phieutiem VALUES ('PT003','BN03','BS003','ID003',1,'2022-5-18','2022-7-12');
INSERT INTO Phieutiem VALUES ('PT004','BN04','BS004','ID004',0,NULL,'2022-8-13');
INSERT INTO Phieutiem VALUES ('PT005','BN05','BS005','ID005',1,'2022-3-16','2022-9-14');
INSERT INTO Phieutiem VALUES ('PT006','BN06','BS006','ID006',0,NULL,'2022-10-15');
INSERT INTO Phieutiem VALUES ('PT007','BN07','BS007','ID007',1,'2022-1-14','2022-9-16');
INSERT INTO Phieutiem VALUES ('PT008','BN08','BS008','ID008',0,NULL,'2022-9-17');
INSERT INTO Phieutiem VALUES ('PT009','BN09','BS009','ID009',1,'2022-9-12','2023-8-18');
INSERT INTO Phieutiem VALUES ('PT010','BN10','BS010','ID010',0,NULL,'2023-5-19');
