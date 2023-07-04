SELECT libraryBranch.BranchName, SUM(library_books.num_copies) AS TotalCopies
FROM LibraryBranch
LEFT JOIN Books ON  = LibraryBranch.BranchID
LEFT JOIN Books ON BookCopies = books.Title
WHERE BookCopies.Number_Of_Copies = Books.Title
GROUP BY libraryBranch.BranchName
