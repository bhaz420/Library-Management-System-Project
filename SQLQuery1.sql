SELECT Borrower.Name
FROM borrower
LEFT JOIN BookLoans ON Borrower.Name = Bookloans.DateOut
WHERE BookLoans.DateOut IS NULL;
