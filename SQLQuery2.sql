select * from PaidInvoices
/*this function returns the values that are different from  each other intstead of listing the entire table. 
For example, in VendorID there are multiple numbers that are the same.*/
select distinct VendorID from PaidInvoices
/*the distinct function removed all duplicates in the VendorID in the result table making it easier to see which companies have payed an invoice*/