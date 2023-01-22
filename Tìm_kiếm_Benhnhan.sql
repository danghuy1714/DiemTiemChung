CREATE FUNCTION tim_Benhnhan 
(
    @name1 nvarchar(20)
)
RETURNS TABLE
AS
RETURN
    SELECT * FROM Benhnhan 
	WHERE Benhnhan.hoten LIKE @name1;