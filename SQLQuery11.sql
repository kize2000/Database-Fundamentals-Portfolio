--From Murach's SQL Server 2016 for Developers
--Page 25

CREATE TABLE Invoices 
--creates a table with the following defined columns with Invoice date as the Primary Key
(
	InvoiceID		INT				NOT NULL IDENTITY PRIMARY KEY,
	VendorID		INT				NOT NULL REFERENCES Vendors(VendorID),
	InvoiceNumber   VARCHAR(50)		NOT NULL,
	InvoiceDate		SMALLDATETIME	NOT NULL,
	InvoiceTotal	MONEY			NOT NULL,
	PaymentTotal	MONEY			NOT NULL DEFAULT 0,
	CreditTotal		MONEY			NOT NULL DEFAULT 0,
	TermsID			INT				NOT NULL REFERENCES Terms(TermsID),
	InvoiceDueDate	SMALLDATETIME	NOT NULL,
	PaymentDate		SMALLDATETIME	NULL
); --this also defines each columns values. For example, InvoiceID and VendorID are and should be Integers
--it also defines whether or not it accepts null values and some default values
--This table has already been created 