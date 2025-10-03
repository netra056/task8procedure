
--Function to calculate total books by an author


CREATE FUNCTION GetBookCount (@AuthorID INT)
RETURNS INT
AS
BEGIN
    DECLARE @Total INT;

    SELECT @Total = COUNT(*)
    FROM Books
    WHERE AuthorID = @AuthorID;

    RETURN @Total;
END;

SELECT Name, dbo.GetBookCount(AuthorID) AS TotalBooks
FROM Authors;

