--From Murach's SQL Server 2016 for Developers
--Page 341

--A statement that creates a table with column attributes
CREATE TABLE Invoices
(InvoiceID		INT					PRIMARY KEY IDENTITY,
--defines InvoiceID data as Integer as well as primary key which means all values must be unique
VendorID		INT					NOT NULL,
--defines VendorID data as Integer and says it cannot be NULL
InvoiceDate		SMALLDATETIME		NULL,
--defines InvoiceDate data as SMALLDATETIME and allows NULL values
InvoiceTotal	MONEY				NULL DEFAULT 0);
--defines InvoiceTotal data as money and allows NULL values but also creates the default as )

--Sample result

/*
Commands completed successfully.

Completion time: 2019-11-30T21:09:43.9915050-08:00
*/