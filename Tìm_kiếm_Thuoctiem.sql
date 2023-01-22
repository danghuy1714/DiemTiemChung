CREATE FUNCTION tim_Thuoctiem
(
    @name2 nvarchar(20)
)
RETURNS TABLE
AS
RETURN
    SELECT * FROM Thuoctiem 
	WHERE Thuoctiem.tenthuoc LIKE @name2;