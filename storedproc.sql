CREATE PROCEDURE AddAuthor
    @AuthorName VARCHAR(100),
    @Country VARCHAR(50),
    @Genre VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (
        SELECT 1 FROM Authors WHERE name = @AuthorName
    )
    BEGIN
        INSERT INTO Authors (name, authorId)
        VALUES (@AuthorName, @AuthorName);
    END
    ELSE
    BEGIN
        PRINT 'Author already exists';
    END
END;

EXEC AddAuthor '101', 'India', 'Fiction';
end;








