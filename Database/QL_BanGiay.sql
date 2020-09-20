/*=================Tạo Database=================*/

USE MASTER
CREATE DATABASE QL_BanGiay
USE QL_BanGiay
Go

/*=================Tạo Table=================*/

CREATE TABLE HangGiay
(
	MaHang char(10),
	TenHang varchar(30),
	Logo varchar(30),

	Constraint PK_HangGiay primary key(MaHang)
)
CREATE TABLE Giay
(
	MaGiay char(10),
	TenGiay varchar(30),
	GiaBan money,
	MaHang char(10),
	AnhGiay varchar(30),

	Constraint PK_Giay primary key(MaGiay),
	Constraint FK_Giay_HangGiay foreign key(MaHang) references HangGiay(MaHang)
)

/*=================Nhập liệu=================*/

INSERT INTO HangGiay VALUES ('HG01', 'Nike', 'Nike.png')
INSERT INTO HangGiay VALUES ('HG02', 'Adidas', 'Adidas.png')
INSERT INTO HangGiay VALUES ('HG03', 'Yeezy', 'Yeezy.jpg')
INSERT INTO HangGiay VALUES ('HG04', 'Jordan', 'Jordan.png')

INSERT INTO Giay VALUES ('G01', 'AIR FORCE 1', 2400000, 'HG01', 'air force 1.jpg')
INSERT INTO Giay VALUES ('G02', 'AIR MAX 270 PHOTO BLUE', 3900000, 'HG01', 'air max 270 photo blue.jpg')
INSERT INTO Giay VALUES ('G03', 'AIR MAX 720 WHITE', 5200000, 'HG01', 'air max 720 white.jpg')
INSERT INTO Giay VALUES ('G04', 'JOYRIDE RUN FK', 5200000, 'HG01', 'joyride run fk.jpg')

