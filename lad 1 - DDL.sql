--Data Definition Language (DDL) là ngôn ngữ định nghĩa dữ liệu 

-- Tạo cơ sở dữ liệu:
CREATE DATABASE lad1
GO

-- sử dụng cơ sở dữ liệu ttkh vừa tạo
USE lad1
GO

-- Tạo bảng trong cơ sở dữ liệu
CREATE TABLE thongtin
(Mail VARCHAR(30),
 Name VARCHAR(30),
 TelephoneNumber INT)
/* tạo 1 bảng có 3 trường là 
Mail với kiểu dữ liệu là VARCHAR, kích thước 30
Name kiểu dữ liệu NTEX
TelephoneNumber kiểu INT
  */

-- Thêm một cột vào trong bảng đó
ALTER TABLE thongtin ADD Address NVARCHAR(50)
/* ALTER là chỉnh sửa 1 đối tượng
   TABLE thongtin là bảng thongtin = đối tượng được chỉnh sửa
   ADD Address NVARCHAR(50) là thêm một trường vào bảng với kiểu NVARCHAR gồm 50 ký tự
   */

-- Thêm dữ liệu vào bảng thông tin
INSERT INTO thongtin values ('minh@yahoo.com','minhminh',9898,'Hà Nội')
INSERT INTO thongtin values ('min11@yahoo.com','leee',342,'Hà Nột')
INSERT INTO thongtin values ('mih22@yahoo.com','hoang',1198,'Hàm Nội')
INSERT INTO thongtin values ('mi44@yahoo.com','mlemi',653,'Hà Lội')

--Lấy ra tất cả các dữ liệu trong bảng
SELECT * FROM thongtin

--xóa bản ghi có Mail=minh@yahoo.com
DELETE FROM thongtin WHERE Mail ='minh@yahoo.com'

-- sửa bản ghi có Mail=mi44@yahoo.com
UPDATE thongtin SET Name='okem' WHERE Mail='mi44@yahoo.com'

-- Tạo login account để test GRANT
CREATE LOGIN nguoi1 WITH PASSWORD='123456'

--Tạo use từ login account vừa tạo 
CREATE USER nguoi1 FROM LOGIN nguoi1

-- Hủy bỏ tất cả các quyền của USER nguoi1 trên bảng thongtin
REVOKE ALL ON thongtin FROM nguoi1

-- Gán quyền SELECT cho nguoi1 trên bảng thongtin
GRANT SELECT ON thongtin TO nguoi1