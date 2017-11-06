-- Tao CSDL
USE MASTER
CREATE DATABASE QLBH
Use QLBH
--drop database qlbh

-- Tao quan he, khoa chinh cua quan he
CREATE TABLE KHACHHANG
(
	MAKH 	CHAR(4) PRIMARY KEY,
	HOTEN	VARCHAR(40),
	DCHI	VARCHAR(50),
	SODT	VARCHAR(20),
	NGSINH	SMALLDATETIME,
	DOANHSO	MONEY,
	NGDK	SMALLDATETIME
)
CREATE TABLE NHANVIEN
(
	MANV	CHAR(4) PRIMARY KEY,
	HOTEN	VARCHAR(40),
	SODT	VARCHAR(20),
	NGVL	SMALLDATETIME
)
CREATE TABLE SANPHAM
(
	MASP	CHAR(4) PRIMARY KEY,
	TENSP	VARCHAR(40),
	DVT	VARCHAR(20),
	NUOCSX	VARCHAR(40),
	GIA	MONEY
)
CREATE TABLE HOADON
(
	SOHD	INT PRIMARY KEY,
	NGHD	SMALLDATETIME,
	MAKH	CHAR(4),
	MANV	CHAR(4),
	TRIGIA	MONEY
)
CREATE TABLE CTHD
(
	SOHD	INT FOREIGN KEY REFERENCES HOADON(SOHD),
	MASP	CHAR(4)FOREIGN KEY REFERENCES SANPHAM(MASP),
	SL	INT,
	CONSTRAINT PK_CTHD PRIMARY KEY (SOHD,MASP)
)

-- Nhap lieu

Set dateformat dmy

insert into KHACHHANG values('KH01','Nguyen Van A','731 Tran Hung Dao, Q5, TpHCM','08823451','22/10/1960',13060000,'22/07/2006')
insert into KHACHHANG values('KH02','Tran Ngoc Han','23/5 Nguyen Trai, Q5, TpHCM','0908256478','3/4/1974',280000,'30/07/2006')
insert into KHACHHANG values('KH03','Tran Ngoc Linh','45 Nguyen Canh Chan, Q1, TpHCM','0938776266','12/6/1980',3860000,'05/08/2006')
insert into KHACHHANG values('KH04','Tran Minh Long','50/34 Le Dai Hanh, Q10, TpHCM','0917325476','9/3/1965',250000,'02/10/2006')
insert into KHACHHANG values('KH05','Le Nhat Minh','34 Truong Dinh, Q3, TpHCM','08246108','10/3/1950',21000,'28/10/2006')
insert into KHACHHANG values('KH06','Le Hoai Thuong','227 Nguyen Van Cu, Q5, TpHCM','08631738','31/12/1981',915000,'24/11/2006')
insert into KHACHHANG values('KH07','Nguyen Manh Tam','32/3 Tran Binh Trong, Q5, TpHCM','0916783565','6/4/1971',12500,'01/12/2006')
insert into KHACHHANG values('KH08','Phan Thi Thanh Tam','45/2 An Duong Vuong, Q5, TpHCM','0938435756','10/1/1971',365000,'13/12/2006')
insert into KHACHHANG values('KH09','Le Ha Vinh','873 Cach Mang Thang Tam, QTB, TpHCM','08654763','3/9/1979',70000,'14/01/2007')
insert into KHACHHANG values('KH10','Ha Duy Lap','34/34B Nguyen Trai, Q1, TpHCM','08768904','2/5/1983',67500,'16/01/2007')

insert into NHANVIEN values('NV01','Nguyen Nhu Nhut','0927345678','13/4/2006')
insert into NHANVIEN values('NV02','Le Thi Phi Yen','0987567390','21/4/2006')
insert into NHANVIEN values('NV03','Nguyen Van B','0997047382','27/4/2006')
insert into NHANVIEN values('NV04','Ngo Thanh Tuan','0913758498','24/6/2006')
insert into NHANVIEN values('NV05','Nguyen Thi Truc Thanh','0918590387','20/7/2006')

insert into SANPHAM values('BC01','But chi','cay','Singapore',3000)
insert into SANPHAM values('BC02','But chi','cay','Singapore',5000)
insert into SANPHAM values('BC03','But chi','cay','Viet Nam',3500)
insert into SANPHAM values('BC04','But chi','hop','Viet Nam',30000)
insert into SANPHAM values('BB01','But bi','cay','Viet Nam',5000)
insert into SANPHAM values('BB02','But bi','cay','Trung Quoc',7000)
insert into SANPHAM values('BB03','But bi','hop','Thai Lan',100000)
insert into SANPHAM values('TV01','Tap 100 trang giay mong','quyen','Trung Quoc',2500)
insert into SANPHAM values('TV02','Tap 200 trang giay mong','quyen','Trung Quoc',4500)
insert into SANPHAM values('TV03','Tap 100 trang giay tot','quyen','Viet Nam',3000)
insert into SANPHAM values('TV04','Tap 200 trang giay tot','quyen','Viet Nam',5500)
insert into SANPHAM values('TV05','Tap 100 trang','chuc','Viet Nam',23000)
insert into SANPHAM values('TV06','Tap 200 trang','chuc','Viet Nam',53000)
insert into SANPHAM values('TV07','Tap 100 trang','chuc','Trung Quoc',34000)
insert into SANPHAM values('ST01','So tay 500 trang','quyen','Trung Quoc',40000)
insert into SANPHAM values('ST02','So tay loai 1','quyen','Viet Nam',55000)
insert into SANPHAM values('ST03','So tay loai 2','quyen','Viet Nam',51000)
insert into SANPHAM values('ST04','So tay','quyen','Thai Lan',55000)
insert into SANPHAM values('ST05','So tay mong','quyen','Thai Lan',20000)
insert into SANPHAM values('ST06','Phan viet bang','hop','Viet Nam',5000)
insert into SANPHAM values('ST07','Phan viet bang khong bui','hop','Viet Nam',7000)
insert into SANPHAM values('ST08','Bong bang','cai','Viet Nam',1000)
insert into SANPHAM values('ST09','But long','cay','Viet Nam',5000)
insert into SANPHAM values('ST10','But long mau','cay','Trung Quoc',7000)

insert into HOADON values(1001,'23/07/2006','KH01','NV01',320000)
insert into HOADON values(1002,'12/8/2006','KH01','NV02',840000)
insert into HOADON values(1003,'23/08/2006','KH02','NV01',100000)
insert into HOADON values(1004,'1/9/2006','KH02','NV01',180000)
insert into HOADON values(1005,'20/10/2006','KH01','NV02',3800000)
insert into HOADON values(1006,'16/10/2006','KH01','NV03',2430000)
insert into HOADON values(1007,'28/10/2006','KH03','NV03',510000)
insert into HOADON values(1008,'28/10/2006','KH01','NV03',440000)
insert into HOADON values(1009,'28/10/2006','KH03','NV04',200000)
insert into HOADON values(1010,'1/11/2006','KH01','NV01',5200000)
insert into HOADON values(1011,'4/11/2006','KH04','NV03',250000)
insert into HOADON values(1012,'30/11/2006','KH05','NV03',21000)
insert into HOADON values(1013,'12/12/2006','KH06','NV01',5000)
insert into HOADON values(1014,'31/12/2006','KH03','NV02',3150000)
insert into HOADON values(1015,'1/1/2007','KH06','NV01',910000)
insert into HOADON values(1016,'1/1/2007','KH07','NV02',12500)
insert into HOADON values(1017,'2/1/2007','KH08','NV03',35000)
insert into HOADON values(1018,'13/01/2007','KH08','NV03',330000)
insert into HOADON values(1019,'13/01/2007','KH01','NV03',30000)
insert into HOADON values(1020,'14/01/2007','KH09','NV04',70000)
insert into HOADON values(1021,'16/01/2007','KH10','NV03',67500)
insert into HOADON values(1022,'16/01/2007',Null,'NV03',7000)
insert into HOADON values(1023,'17/01/2007',Null,'NV01',330000)

insert into CTHD values(1001,'TV02',10)
insert into CTHD values(1001,'ST01',5)
insert into CTHD values(1001,'BC01',5)
insert into CTHD values(1001,'BC02',10)
insert into CTHD values(1001,'ST08',10)
insert into CTHD values(1002,'BC04',20)
insert into CTHD values(1002,'BB01',20)
insert into CTHD values(1002,'BB02',20)
insert into CTHD values(1003,'BB03',10)
insert into CTHD values(1004,'TV01',20)
insert into CTHD values(1004,'TV02',10)
insert into CTHD values(1004,'TV03',10)
insert into CTHD values(1004,'TV04',10)
insert into CTHD values(1005,'TV05',50)
insert into CTHD values(1005,'TV06',50)
insert into CTHD values(1006,'TV07',20)
insert into CTHD values(1006,'ST01',30)
insert into CTHD values(1006,'ST02',10)
insert into CTHD values(1007,'ST03',10)
insert into CTHD values(1008,'ST04',8)
insert into CTHD values(1009,'ST05',10)
insert into CTHD values(1010,'TV07',50)
insert into CTHD values(1010,'ST07',50)
insert into CTHD values(1010,'ST08',100)
insert into CTHD values(1010,'ST04',50)
insert into CTHD values(1010,'TV03',100)
insert into CTHD values(1011,'ST06',50)
insert into CTHD values(1012,'ST07',3)
insert into CTHD values(1013,'ST08',5)
insert into CTHD values(1014,'BC02',80)
insert into CTHD values(1014,'BB02',100)
insert into CTHD values(1014,'BC04',60)
insert into CTHD values(1014,'BB01',50)
insert into CTHD values(1015,'BB02',30)
insert into CTHD values(1015,'BB03',7)
insert into CTHD values(1016,'TV01',5)
insert into CTHD values(1017,'TV02',1)
insert into CTHD values(1017,'TV03',1)
insert into CTHD values(1017,'TV04',5)
insert into CTHD values(1018,'ST04',6)
insert into CTHD values(1019,'ST05',1)
insert into CTHD values(1019,'ST06',2)
insert into CTHD values(1020,'ST07',10)
insert into CTHD values(1021,'ST08',5)
insert into CTHD values(1021,'TV01',7)
insert into CTHD values(1021,'TV02',10)
insert into CTHD values(1022,'ST07',1)
insert into CTHD values(1023,'ST04',6)

---Bai tap---
---Cau 1---
select MASP,TENSP 
from SANPHAM 
where NUOCSX='Trung Quoc'
---cau 2---
select MASP,TENSP 
from SANPHAM 
where DVT IN ('cay','quyen')
---cau 3---
select MASP,TENSP 
from SANPHAM 
where MASP like 'B%01'
---cau 4---
select MASP,TENSP 
from SANPHAM 
where NUOCSX='Trung Quoc' 
and GIA between 30000 and 40000
---cau 5---
select MASP,TENSP 
from SANPHAM 
where NUOCSX='Trung Quoc' or NUOCSX='Thai Lan'
and GIA between 30000 and 40000
---cau 6---
select SOHD
from HOADON
where NGHD between '1/1/2007' and '2/1/2007'
---cau 7---	
select SOHD,TRIGIA
from HOADON
where month(NGHD)='1' and year(NGHD)='2007'
ORDER BY NGHD ASC, TRIGIA DESC
---cau 8---
SELECT kh.MAKH,HOTEN
FROM KHACHHANG kh
INNER JOIN HOADON ON kh.MAKH = HOADON.MAKH
WHERE NGHD = '1/1/2007'
---cau 9---
select SOHD,TRIGIA
from NHANVIEN nv
inner join HOADON on nv.MANV= HOADON.MANV
where HOTEN='Nguyen Van B' and NGHD = '28/10/2006'
---cau 10 In ra danh sách các sản phẩm (MASP,TENSP) được khách hàng có tên “Nguyen Van A” mua trong tháng 10/2006.---
select DISTINCT S.MASP, TENSP
from SANPHAM S INNER JOIN CTHD C
on S.MASP = C.MASP
AND EXISTS(SELECT *
from CTHD C INNER JOIN HOADON H
on C.SOHD = H.SOHD
AND MONTH(NGHD) = 10 AND YEAR(NGHD) = 2006 AND MAKH IN(SELECT H.MAKH
FROM HOADON H INNER JOIN KHACHHANG K
ON H.MAKH = K.MAKH
WHERE HOTEN = 'NGUYEN VAN A') AND S.MASP = C.MASP)
---cau 11---
select SOHD 
from CTHD
where MASP in ('BB01','BB02')
---cau 12---
select SOHD 
from CTHD
where MASP in ('BB01','BB02') and SL between 10 and 20
---cau 13---
select SOHD 
from CTHD
where MASP='BB01' and SL between 10 and 20
UNION
select SOHD 
from CTHD
where MASP='BB02' and SL between 10 and 20
