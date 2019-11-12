--From Murach's SQL Server 2016 for Developers
--Page 25

ALTER TABLE Invoices 
-- this prompts sql to ALTER the designated table "Invoices" with whatever is below
ADD BalanceDue MONEY NOT NULL DEFAULT 0; 
-- in this part it adds the column BalanceDue with the type of value MONEY and says it does not accept NULL values