CREATE FUNCTION tim_Phieutiem 
(
    @name3 nvarchar(20)
)
RETURNS TABLE
AS
RETURN
    SELECT * FROM Phieutiem
	WHERE Phieutiem.ID_phieutiem LIKE @name3;