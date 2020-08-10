
USE AdventureWorks2019 -- sử dụng cơ sở dữ liệu Adventure Diagrams

SELECT * FROM HumanResources.Employee --
GO

-- Khai báo biến
--1 khai báo biến cục bộ
DECLARE @bien1 INT -- Khai báo biến cục bộ tên là bien1 kiểu int 
SELECT @bien1=1    -- Gán giá trị cho biến bằng 1
SELECT GroupName FROM HumanResources.Department WHERE DepartmentID = @bien1
GO 

--2 khai báo biến toàn cục 
SELECT @@LANGUAGE  -- Hiển thị thông tin của biến toàn cục @@LANGUAGE, trả lại thông tin ngôn ngữ sử dụng trong SQL server 
SELECT @@DATEFIRST -- Hiển thị thông tin của biến toàn cục @@DATEFIRST, trả lại thông tin DATEFIRST sử dụng trong SQL server
SELECT @@VERSION   -- Hiển thị thông tin của biến toàn cục @@VERSION, trả lại thông tin phiên bản version của SQL 

--Hàm trong SQl 
-- hàm Sum lấy tổng tất cả các giá trị các bản ghi trường StadardCost thuộc bảng ProductCostHistory
SELECT SUM(StandardCost) FROM Production.ProductCostHistory

-- Hàm AVG Tính giá trị trung bình của trường StadardCost thuộc bảng ProductCostHistory
SELECT AVG(StandardCost) FROM Production.ProductCostHistory

-- Hàm MAX,MIN lấy ra gái trị lớn nhất và nhỏ nhất của trường StadardCost thuộc bảng ProductCostHistory
SELECT MAX(StandardCost) FROM Production.ProductCostHistory
SELECT MIN(StandardCost) FROM Production.ProductCostHistory

-- Hàm COUNT đếm tổng số bản ghi tỏng bảng Productphoto
SELECT COUNT(*) FROM Production.ProductPhoto

-- Hàm lấy ra ngày giờ hệ thống:
SELECT GETDATE()

-- HÀM lấy ra giờ, ngày, tháng, năm trong hệ thống:
SELECT DATEPART(HH,GETDATE())
SELECT DATEPART(DD,GETDATE())
SELECT DATEPART(MM,GETDATE())
SELECT DATEPART(YY,GETDATE())

-- Hàm CONVERT dùng định dạng ngày
SELECT CONVERT(nvarchar(50),GETDATE(),103)
/* CONVERT(datatype(leght), expression(),Style)
datatype là kiểu giữ liệu cần chuyển sang
leght chỉ ra độ dài của dữ liệu 
expressinon chỉ ra tên cột, hằng số, hàm biến hoặc là câu truy vấn con
style chỉ ra kiểu hiển thị giá trị ngày tháng(dd/mm/yyyy hay mm/đ/yyyy)
*/


-- Lấy ra định danh của cơ sở dữ liệu
SELECT DB_ID ('AventureWorks2019')







