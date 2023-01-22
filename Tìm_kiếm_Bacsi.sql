-- Function tìm kiếm theo tên
CREATE FUNCTION tim_Bacsi 
(
    @name nvarchar(20)
)
RETURNS TABLE
AS
RETURN
    SELECT * FROM Bacsi 
	WHERE Bacsi.tenbacsi LIKE @name;

SELECT * FROM tim_Bacsi(N'%Trần Văn%')