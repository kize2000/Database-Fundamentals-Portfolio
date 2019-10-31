-- Two CTEs and a query that uses them
   WITH Summary AS -- this defines Summary as the following CTE
   (
        SELECT VendorState, VendorName, SUM(InvoiceTotal) AS SumOfInvoices -- selects the columns VendorState, VendorName, and the SUM of InvoiceTotal defined as SumofInvoices
        FROM Invoices --table used
          JOIN Vendors ON Invoices.VendorID = Vendors.VendorID  -- join of both VendorID from tables Invoices and Vendors
        GROUP BY VendorState, VendorName -- groups columns by Vendor state and VendorName 
   ),
   TopInState AS -- defines TopInState
   (
        SELECT VendorState, MAX(SumOfInvoices) AS SumOfInvoices -- selects the columns VendorState and defines the sum of SumOfInvoices as SumOfInvoices or redefines them
        FROM Summary -- table used
        GROUP BY VendorState -- groups result by VendorState
   )
    SELECT Summary.VendorState, Summary.VendorName, TopInState.SumOfInvoices -- selects previously defined values
    FROM Summary JOIN TopInState -- joins previously defined values 
        ON Summary.VendorState = TopInState.VendorState AND --combines the values of VendorState from Summary and TopInState
            Summary.SumOfInvoices = TopInState.SumOfInvoices -- as well as the SumOfInvoices from Summary and TopInState
    ORDER BY Summary.VendorState; -- sorts results aphabetically 
