CREATE DATABASE GIAOVAN;
USE GIAOVAN;
CREATE TABLE Shipper (
    EmployeeID CHAR(5) PRIMARY KEY,
    LastName VARCHAR(10),
    MiddleName VARCHAR(10),
    FirstName VARCHAR(10) not null,
    Gender CHAR(6),
    Birthday DATE,
    Phone VARCHAR(10) unique not null,
    Address VARCHAR(45) not null,
    Ward VARCHAR(45),
    District VARCHAR(45),
    City VARCHAR(30)
);
INSERT INTO Shipper (EmployeeID, LastName, MiddleName, FirstName, Gender, Birthday, Phone, Address, Ward, District, City)
VALUES
  ('SP001', 'Nguyen', 'Van', 'Anh', 'Male', '1990-07-15', '0987123456', 'So 10, Duong Tran Hung Dao', 'Dong Hoa', 'Cau Giay', 'Ha Noi'),
  ('SP002', 'Tran', 'Thi', 'Binh', 'Female', '1995-03-02', '0912345678', 'So 25, Duong Nguyen Van Linh', 'An Phu', 'Quan 2', 'Ho Chi Minh'),
  ('SP003', 'Le', 'Hong', 'Cuong', 'Male', '1988-11-10', '0905678901', 'So 8, duong Tran Phu', 'Nghia Chanh', 'Hai Chau', 'Da Nang'),
  ('SP004', 'Pham', 'Thi', 'Dung', 'Female', '1992-09-25', '0978234567', 'So 35, duong Le Thanh Loi', 'Ben Thanh', 'Quan 1', 'Ho Chi Minh'),
  ('SP005', 'Hoang', 'Minh', 'Duc', 'Male', '1993-05-08', '0943567890', 'So 12, duong Ly Thuong Kiet', 'Tran Hung Dao', 'Hoan Kiem', 'Ha Noi'),
  ('SP006', 'Tran', 'Van', 'Hai', 'Male', '1991-12-12', '0966789012', 'So 17A, duong Tran Quang Khai', 'Tan Dinh', 'Quan 1', 'Ho Chi Minh'),
  ('SP007', 'Hoang', 'Thu', 'Ha', 'Female', '1994-09-03', '0934012345', 'So 5, duong Nguyen Van Cu', 'An Hoa', 'Ninh Kieu', 'Can Tho'),
  ('SP008', 'Le', 'Thi', 'Kim Anh', 'Female', '1996-06-18', '0956345678', 'So 22, duong Mai Dien Thi Luu', 'Thao Dien', 'Quan 2', 'Ho Chi Minh'),
  ('SP009', 'Chu', 'Thi', 'Mai', 'Female', '1990-04-29', '0923678901', 'So 14, duong Le An Loi', 'Truong An', 'Ninh Kieu', 'Can Tho'),
  ('SP010', 'Le', 'Van', 'Quang', 'Male', '1986-11-07', '0999901234', 'So 22, duong Ly Tu Trong', 'Ben Thanh', 'Quan 1', 'Ho Chi Minh'),
  ('SP011', 'Tran', 'Quoc', 'Anh', 'Male', '1989-12-11', '0907234567', 'So 9, duong Tran Phu', 'Phan Chu Trinh', 'Hoan Kiem', 'Ha Noi'),
  ('SP012', 'Pham', 'Minh', 'Nhat', 'Male', '1994-05-01', '0945567890', 'So 18, duong Nguyen Dinh Chieu', 'Da Kao', 'Quan 1', 'Ho Chi Minh'),
  ('SP013', 'Lai', 'Thien', 'Loc', 'Male', '1997-09-14', '0988789012', 'So 7, duong Tran Quang Khai', 'An Hoa', 'Ninh Kieu', 'Can Tho'),
  ('SP014', 'Nguyen', 'Trung', 'Dung', 'Male', '1998-03-05', '0919012345', 'So 11, duong Nguyen Huu Canh', 'Phuong 22', 'Binh Thanh', 'Ho Chi Minh'),
  ('SP015', 'Dinh', 'Van', 'Hung', 'Male', '1996-11-19', '0967345678', 'So 6, duong Tran Phu', 'Cai Khe', 'Ninh Kieu', 'Can Tho'), 
  ('SP016', 'Le', 'Quoc', 'Huy', 'Male', '1993-08-27', '0935678901', 'So 16, duong Ly Thuong Kiet', 'Ben Nghe', 'Quan 1', 'Ho Chi Minh'),
  ('SP017', 'Tran', 'Dinh', 'Nhat Minh', 'Male', '1999-06-14', '0972901234', 'So 4, duong Nguyen Van Linh', 'Phu My Hung', 'Quan 7', 'Ho Chi Minh'),
  ('SP018', 'Vu', 'Thi', 'Quynh', 'Female', '1987-02-03', '0909234567', 'So 13, duong Mai Dien Thi Luu', 'Thao Dien', 'Quan 2', 'Ho Chi Minh'),
  ('SP019', 'Le', 'Minh', 'Khue', 'Female', '1984-06-06', '0946567890', 'So 20, duong Tran Quang Khai', 'An Hoa', 'Ninh Kieu', 'Can Tho'),
  ('SP020', 'Vu', 'Manh', 'Quan', 'Male', '1992-12-17', '0969789012', 'So 10, duong Nguyen Chi Thanh','Lam Ha', 'Phu Ly', 'Ha Nam');

CREATE TABLE Warehouse (
    WarehouseID CHAR(4) PRIMARY KEY,
    WareName VARCHAR(30) NOT NULL,
    City VARCHAR(40) NOT NULL,
    District VARCHAR(30),
    Ward VARCHAR(30),
    Address VARCHAR(30)
);
INSERT INTO Warehouse (WarehouseID, WareName, Address, Ward, District, City)
VALUES
('W001', 'Kho Dien Bien', '35, Duong Hoang Dieu', 'Phuong Muong Thanh', 'Thanh pho Dien Bien Phu', 'Dien Bien'),
('W002', 'Kho Hoa Binh', '7, Duong Nguyen Trai', 'Phuong Thai Binh', 'Thanh pho Hoa Binh', 'Hoa Binh'),
('W003', 'Kho Lai Chau', '18, Duong Dien Bien Phu', 'Xa Phong Tho', 'Thanh pho Tam Duong', 'Lai Chau'),
('W004', 'Kho Lao Cai', '32, Duong Tran Hung Dao', 'Phuong Duyen Hai', 'Thanh pho Lao Cai', 'Lao Cai'),
('W005', 'Kho Son La', '69, Duong Truong Chinh', 'Phuong Chieng Le', 'Thanh pho Son La', 'Son La'),
('W006', 'Kho Yen Bai', '14, Duong Tran Phu', 'Phuong Nguyen Thai Hoc', 'Thanh pho Yen Bai', 'Yen Bai'),
('W007', 'Kho Bac Giang', '23, Duong Tran Phu', 'Phuong Ngo Quyen', 'Thanh pho Bac Giang', 'Bac Giang'),
('W008', 'Kho Bac Kan', '55, Duong Hung Vuong', 'Phuong Nguyen Trai', 'Thanh pho Bac Kan', 'Bac Kan'),
('W009', 'Kho Cao Bang', '61, Duong Tran Hung Dao', 'Phuong Song Bang', 'Thanh pho Cao Bang', 'Cao Bang'),
('W010', 'Kho Ha Giang', '12, Duong Tran Phu', 'Phuong Minh Khai', 'Thanh pho Ha Giang', 'Ha Giang'),
('W011', 'Kho Lang Son', '56, Duong Dong Da', 'Phuong Chi Lang', 'Thanh pho Lang Son', 'Lang Son'),
('W012', 'Kho Phu Tho', '77, Duong Tran Hung Dao', 'Phuong Minh Nong', 'Thanh pho Viet Tri', 'Phu Tho'),
('W013', 'Kho Quang Ninh', '4, Duong Lac Long Quan', 'Phuong Hong Hai', 'Thanh pho Cam Pha', 'Quang Ninh'),
('W014', 'Kho Thai Nguyen', '98, Duong Nguyen Van Cu', 'Phuong Quang Trung', 'Thanh pho Thai Nguyen', 'Thai Nguyen'),
('W015', 'Kho Tuyen Quang', '36, Duong Tran Phu', 'Phuong Minh Xuan', 'Thanh pho Tuyen Quang', 'Tuyen Quang'),
('W016', 'Kho Bac Ninh', '46, Duong Tran Phu', 'Phuong Kinh Bac', 'Thanh pho Bac Ninh', 'Bac Ninh'),
('W017', 'Kho Ha Nam', '21, Duong Tran Phu', 'Phuong Quang Trung', 'Thanh pho Phu Ly', 'Ha Nam'),
('W018', 'Kho Ha Noi', '87, Duong Tran Hung Dao', 'Phuong Trang Tien', 'Quan Hoan Kiem', 'Ha Noi'),
('W019', 'Kho Ha Noi', '65, Duong Nguyen Trai', 'Phuong Thanh Xuan', 'Quan Thanh Xuan', 'Ha Noi'),
('W020', 'Kho Hai Duong', '52, Duong Tran Phu', 'Phuong Lam Son', 'Thanh pho Hai Duong', 'Hai Duong'),
('W021', 'Kho Hai Phong', '58, Duong Ngo Quyen', 'Phuong Niem Nghia', 'Thanh pho Hai Phong', 'Hai Phong'),
('W022', 'Kho Hung Yen', '25, Duong Le Loi', 'Phuong Hong Chau', 'Thanh pho Hung Yen', 'Hung Yen'),
('W023', 'Kho Nam Dinh', '85, Duong Nguyen Van Cu', 'Phuong Tran Quang Dieu', 'Thanh pho Nam Dinh', 'Nam Dinh'),
('W024', 'Kho Ninh Binh', '61, Duong Le Loi', 'Phuong Nam Binh', 'Thanh pho Ninh Binh', 'Ninh Binh'),
('W025', 'Kho Thai Binh', '9, Duong Tran Phu', 'Phuong Quang Trung', 'Thanh pho Thai Binh', 'Thai Binh'),
('W026', 'Kho Vinh Phuc', '46, Duong Le Loi', 'Phuong Ngo Quyen', 'Thanh pho Vinh Yen', 'Vinh Phuc'),
('W027', 'Kho Ha Tinh', '17, Duong Tran Phu', 'Phuong Thach Trung', 'Thanh pho Ha Tinh', 'Ha Tinh'),
('W028', 'Kho Nghe An', '9, Duong Hung Vuong', 'Phuong Hung Dung', 'Thanh pho Vinh', 'Nghe An'),
('W029', 'Kho Quang Binh', '15, Duong Tran Hung Dao', 'Phuong Dong Phu', 'Thanh pho Dong Hoi', 'Quang Binh'),
('W030', 'Kho Quang Tri', '476, Duong Tran Phu', 'Phuong 1', 'Thanh pho Dong Ha', 'Quang Tri'),
('W031', 'Kho Thanh Hoa', '64, Duong Le Loi', 'Phuong Dien Bien', 'Thanh pho Thanh Hoa', 'Thanh Hoa'),
('W032', 'Kho Thua Thien Hue', '71, Duong Hung Vuong', 'Phuong Phu Hoi', 'Thanh pho Hue', 'Thua Thien Hue'),
('W033', 'Kho Dak Lak', '135, Duong Tran Phu', 'Phuong Tan An', 'Thanh pho Buon Ma Thuot', 'Dak Lak'),
('W034', 'Kho Dak Nong', '7, Duong Hung Vuong', 'Phuong Nghia Trung', 'Thanh pho Gia Nghia', 'Dak Nong'),
('W035', 'Kho Gia Lai', '62, Duong Tran Hung Dao', 'Phuong Nguyen Trai', 'Thanh pho Pleiku', 'Gia Lai'),
('W036', 'Kho Kon Tum', '96, Duong Tran Phu', 'Phuong Duy Tan', 'Thanh pho Kon Tum', 'Kon Tum'),
('W037', 'Kho Lam Dong', '84, Duong Le Loi', 'Phuong 1', 'Thanh pho Da Lat', 'Lam Dong'),
('W038', 'Kho Ba Ria Vung Tau', '123, Duong Tran Phu', 'Phuong Long Binh', 'Thanh pho Vung Tau', 'Ba Ria Vung Tau'),
('W039', 'Kho Binh Duong', '789, Duong Hung Vuong', 'Phuong Phu Cuong', 'Thanh pho Thu Dau Mot', 'Binh Duong'),
('W040', 'Kho Binh Phuoc', '71, Duong Tran Hung Dao', 'Phuong Tan Binh', 'Thanh pho Dong Xoai', 'Binh Phuoc'),
('W041', 'Kho Dong Nai', '56, Duong Tran Phu', 'Phuong Tan Mai', 'Thanh pho Bien Hoa', 'Dong Nai'),
('W042', 'Kho Ho Chi Minh', '98, Duong Le Loi', 'Quan 1', 'Thanh pho Ho Chi Minh', 'Ho Chi Minh'),
('W043', 'Kho Tay Ninh', '64, Duong Hung Vuong', 'Phuong Ninh Son', 'Thanh pho Tay Ninh', 'Tay Ninh'),
('W044', 'Kho An Giang', '81, Duong Tran Phu', 'Phuong My Thoi', 'Thanh pho Long Xuyen', 'An Giang'),
('W045', 'Kho Bac Lieu', '45, Duong Hung Vuong', 'Phuong 1', 'Thanh pho Bac Lieu', 'Bac Lieu'),
('W046', 'Kho Ben Tre', '39, Duong Tran Hung Dao', 'Phuong 2', 'Thanh pho Ben Tre', 'Ben Tre'),
('W047', 'Kho Ca Mau', '16, Duong Tran Phu', 'Phuong 7', 'Thanh pho Ca Mau', 'Ca Mau'),
('W048', 'Kho Can Tho', '84, Duong Le Loi', 'Quan Ninh Kieu', 'Thanh pho Can Tho', 'Can Tho'),
('W049', 'Kho Dong Thap', '16, Duong Hung Vuong', 'Phuong 4', 'Thanh pho Cao Lanh', 'Dong Thap'),
('W050', 'Kho Hau Giang', '58, Duong Nguyen Hue', 'Phuong My Thanh', 'Thanh pho Vi Thanh', 'Hau Giang'),
('W051', 'Kho Kien Giang', '22, Duong Ly Thuong Kiet', 'Phuong An Hoa', 'Thanh pho Rach Gia', 'Kien Giang'),
('W052', 'Kho Long An', '74, Duong Truong Dinh', 'Phuong 5', 'Thanh pho Tan An', 'Long An'),
('W053', 'Kho Soc Trang', '93, Duong Nguyen Trung Truc', 'Phuong 1', 'Thanh pho Soc Trang', 'Soc Trang'),
('W054', 'Kho Tien Giang', '82, Duong Tran Hung Dao', 'Phuong 3', 'Thanh pho My Tho', 'Tien Giang'),
('W055', 'Kho Tra Vinh', '51, Duong Le Loi', 'Phuong 2', 'Thanh pho Tra Vinh', 'Tra Vinh'),
('W056', 'Kho Vinh Long', '27, Duong Hung Vuong', 'Phuong 4', 'Thanh pho Vinh Long', 'Vinh Long'),
('W057', 'Kho Binh Dinh', '12, Duong Nguyen Hue', 'Phuong Tran Phu', 'Thanh pho Quy Nhon', 'Binh Dinh'),
('W058', 'Kho Khanh Hoa', '8, Duong Tran Phu', 'Phuong Loc Tho', 'Thanh pho Nha Trang', 'Khanh Hoa'),
('W059', 'Kho Ninh Thuan', '36, Duong 16/4', 'Phuong Phu Ha', 'Thanh pho Phan Rang-Thap Cham', 'Ninh Thuan'),
('W060', 'Kho Phu Yen', '57, Duong Tran Hung Dao', 'Phuong 7', 'Thanh pho Tuy Hoa', 'Phu Yen'),
('W061', 'Kho Binh Thuan', '123, Duong Le Loi', 'Phuong Phan Thiet', 'Thanh pho Phan Thiet', 'Binh Thuan'),
('W062', 'Kho Da Nang', '456, Duong Nguyen Van Linh', 'Phuong Hai Chau', 'Quan Hai Chau', 'Da Nang'),
('W063', 'Kho Quang Nam', '789, Duong Tran Hung Dao', 'Phuong An My', 'Thanh pho Tam Ky', 'Quang Nam'),
('W064', 'Kho Quang Ngai', '1011, Duong Ly Thuong Kiet', 'Phuong Tran Hung Dao', 'Thanh pho Quang Ngai', 'Quang Ngai');

CREATE TABLE Service (
    ServiceID CHAR(5) PRIMARY KEY,
    ServiceName VARCHAR(20),
    Price DECIMAL(12,3) not null,
    MaxDistance CHAR(5)
);
INSERT INTO Service (ServiceID, ServiceName, MaxDistance, Price)
VALUES
    ('S101', 'Economy', '50', 10000),
    ('S102', 'Economy', '100', 18000),
    ('S103', 'Economy', '200', 22000),
    ('S104', 'Economy', '300', 28000),
    ('S105', 'Economy', '500', 34000),
    ('S106', 'Economy', '800', 40000),
    ('S107', 'Economy', '>800', 47000),
    ('S201', 'Express', '50', 15000),
    ('S202', 'Express', '100', 23000),
    ('S203', 'Express', '200', 29000),
    ('S204', 'Express', '300', 35000),
    ('S205', 'Express', '500', 41000),
    ('S206', 'Express', '800', 47000),
    ('S207', 'Express', '>800', 54000),
    ('S301', 'LargeItem', '50', 35000),
    ('S302', 'LargeItem', '100', 49000),
    ('S303', 'LargeItem', '200', 63000),
    ('S304', 'LargeItem', '300', 77000),
    ('S305', 'LargeItem', '500' , 91000),
    ('S306', 'LargeItem', '800' , 105000),
    ('S307', 'LargeItem', '>800' , 119000);
