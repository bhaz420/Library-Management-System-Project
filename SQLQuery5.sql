CREATE PROCEDURE 

AS
BEGIN
SELECT Books.Title, COUNT(*) AS NumberOfBookCopies
FROM Books
JOIN Books ON LibraryBranch.BranchName = Books.Title
WHERE BookCopies.Number_Of_Copies = LibraryBranch
GROUP BY Books.Title;
END;