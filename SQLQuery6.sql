CREATE PROCEDURE GetBookCopiesByLibrary
    @LibraryID INT
)
AS
BEGIN
    SELECT , COUNT(*) AS NumberOfCopies
    FROM LibraryBranch
    JOIN Books ON Books.Copies = libraryBranch.BranchName
    WHERE LibraryBranch.BranchName = @LibraryID
    GROUP BY Books.Title
END;
EXEC GetBookCopiesByLibrary @LibraryID = BranchID