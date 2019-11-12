--From Murach's SQL Server 2016 for Developers
--Page 209

-- Two CTEs and a query that uses them
   WITH Summary AS 
   -- this defines Summary as the following CTE
   (
        SELECT VendorState, VendorName, SUM(InvoiceTotal) AS SumOfInvoices 
		-- selects the columns VendorState, VendorName, and the SUM of InvoiceTotal defined as SumofInvoices
        FROM Invoices 
		--table used
          JOIN Vendors ON Invoices.VendorID = Vendors.VendorID  
		  -- join of both VendorID from tables Invoices and Vendors
        GROUP BY VendorState, VendorName 
		-- groups columns by Vendor state and VendorName 
   ),
   TopInState AS 
   -- defines TopInState
   (
        SELECT VendorState, MAX(SumOfInvoices) AS SumOfInvoices -- selects the columns VendorState and defines the sum of SumOfInvoices as SumOfInvoices or redefines them
        FROM Summary 
		-- table used
        GROUP BY VendorState 
		-- groups result by VendorState
   )
    SELECT Summary.VendorState, Summary.VendorName, TopInState.SumOfInvoices 
	-- selects previously defined values
    FROM Summary JOIN TopInState 
	-- joins previously defined values 
        ON Summary.VendorState = TopInState.VendorState AND 
		--combines the values of VendorState from Summary and TopInState
            Summary.SumOfInvoices = TopInState.SumOfInvoices 
			-- as well as the SumOfInvoices from Summary and TopInState
    ORDER BY Summary.VendorState; 
	-- sorts results aphabetically 

--Sample Output
/*
AZ	Wells Fargo Bank	662.00
CA	Digital Dreamworks	7125.34
DC	Reiter's Scientific & Pro Books	600.00
MA	Dean Witter Reynolds	1367.50
MI	Malloy Lithographing Inc	119892.41
NV	United Parcel Service	23177.96
OH	Edward Data Services	207.78
PA	Cardinal Business Media, Inc.	265.36
TN	Federal Express Corporation	4378.02
TX	Ingram	2154.42
*/
