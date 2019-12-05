--Referenced instructions from Murach's SQL Server 2016 for Developers
--Page 89
--How to format and cocatenate string data

SELECT VendorName, VendorCity + ', ' + VendorState + ', ' + VendorZipCode AS Address
-- columns used as well as the redifined values from the three columns that are added together 
-- which all have a ", " in between them now and redefined as Address in the result set
FROM Vendors;
-- table used

--Sample Result

/*
VendorName	Address
US Postal Service	Madison, WI, 53707
National Information Data Ctr	Washington, DC, 20090
Register of Copyrights	Washington, DC, 20559
Jobtrak	Los Angeles, CA, 90025
Newbrige Book Clubs	Washington, NJ, 07882
California Chamber Of Commerce	Sacramento, CA, 95827
Towne Advertiser's Mailing Svcs	Santa Ana, CA, 92704
BFI Industries	Fresno, CA, 93792
Pacific Gas & Electric	San Francisco, CA, 94152
Robbins Mobile Lock And Key	Fresno, CA, 93726
Bill Marvin Electric Inc	Fresno, CA, 93703
City Of Fresno	Fresno, CA, 93718
Golden Eagle Insurance Co	San Diego, CA, 92186
Expedata Inc	Fresno, CA, 93726
ASC Signs	Fresno, CA, 93703
Internal Revenue Service	Fresno, CA, 93888
Blanchard & Johnson Associates	Mission Viejo, CA, 92691
Fresno Photoengraving Company	Fresno, CA, 93718
Crown Printing	Fresno, CA, 93721
Diversified Printing & Pub	Brea, CA, 92621
The Library Ltd	St Louis, MO, 63105
Micro Center	Columbus, OH, 43221
Yale Industrial Trucks-Fresno	Fresno, CA, 93706
Zee Medical Service Co	Washington, IA, 52353
California Data Marketing	Fresno, CA, 93721
Small Press	Traverse City, MI, 49684
Rich Advertising	Fairfield, NJ, 07004
Vision Envelope & Printing	Gardena, CA, 90247
Costco	Fresno, CA, 93711
Enterprise Communications Inc	Mclean, VA, 22101
RR Bowker	East Brunswick, NJ, 08810
Nielson	Cincinnati, OH, 45264
IBM	San Francisco, CA, 94161
Cal State Termite	Selma, CA, 93662
Graylift	Fresno, CA, 93745
Blue Cross	Oxnard, CA, 93031
Venture Communications Int'l	New York, NY, 10010
Custom Printing Company	St Louis, MO, 63177
Nat Assoc of College Stores	Oberlin, OH, 44074
Shields Design	Fresno, CA, 93728
Opamp Technical Books	Los Angeles, CA, 90038
Capital Resource Credit	Minneapolis, MN, 55439
Courier Companies, Inc	Boston, MA, 02206
Naylor Publications Inc	Jacksonville, FL, 32231
Open Horizons Publishing	Fairfield, IA, 52556
Baker & Taylor Books	Charlotte, NC, 28217
Fresno County Tax Collector	Fresno, CA, 93715
Mcgraw Hill Companies	Chicago, IL, 60680
Publishers Weekly	Marion, OH, 43305
Blue Shield of California	Anaheim, CA, 92850
Aztek Label	Anaheim, CA, 92807
Gary McKeighan Insurance	Fresno, CA, 93711
Ph Photographic Services	Fresno, CA, 93726
Quality Education Data	Chicago, IL, 60694
Springhouse Corp	Philadelphia, PA, 19170
The Windows Deck	Santa Barbara, CA, 93101
Fresno Rack & Shelving Inc	Fresno, CA, 93722
Publishers Marketing Assoc	Manhatttan Beach, CA, 90266
The Mailers Guide Co	New Rochelle, NY, 10802
American Booksellers Assoc	Tarrytown, NY, 10591
Cmg Information Services	Boston, MA, 02107
Lou Gentile's Flower Basket	Fresno, CA, 93728
Texaco	Inglewood, CA, 90312
The Drawing Board	Carol Stream, IL, 60197
Ascom Hasler Mailing Systems	Shelton, CT, 06484
Bill Jones	Sacramento, CA, 94244
Computer Library	Phoenix, AZ, 85023
Frank E Wilber Co	Fresno, CA, 93727
Fresno Credit Bureau	Fresno, CA, 93714
The Fresno Bee	Fresno, CA, 93786
Data Reproductions Corp	Auburn Hills, MI, 48326
Executive Office Products	Fresno, CA, 93710
Leslie Company	Olathe, KS, 66061
Retirement Plan Consultants	Fresno, CA, 93704
Simon Direct Inc	East Brunswick, NJ, 08816
State Board Of Equalization	Sacramento, CA, 94208
The Presort Center	Fresno, CA, 93706
Valprint	Fresno, CA, 93777
Cardinal Business Media, Inc.	Philadelphia, PA, 19170
Wang Laboratories, Inc.	Pasadena, CA, 91185
Reiter's Scientific & Pro Books	Washington, DC, 20006
Ingram	Dallas, TX, 75284
Boucher Communications Inc	Fort Washington, PA, 19034
Champion Printing Company	Cincinnati, OH, 45225
Computerworld	San Francisco, CA, 94161
DMV Renewal	Sacramento, CA, 94294
Edward Data Services	Cleves, OH, 45002
Evans Executone Inc	Turlock, CA, 95380
Wakefield Co	Fresno, CA, 93711
McKesson Water Products	Pasadena, CA, 91109
Zip Print & Copy Center	Fresno, CA, 93777
AT&T	Phoenix, AZ, 85062
Abbey Office Furnishings	Fresno, CA, 93722
Pacific Bell	Sacramento, CA, 95887
Wells Fargo Bank	Phoenix, AZ, 85038
Compuserve	Columbus, OH, 43260
American Express	Los Angeles, CA, 90096
Bertelsmann Industry Svcs. Inc	Valencia, CA, 91355
Cahners Publishing Company	The Lake, NV, 89163
California Business Machines	Fresno, CA, 93710
Coffee Break Service	Fresno, CA, 93714
Dean Witter Reynolds	Boston, MA, 02134
Digital Dreamworks	Fresno, CA, 93711
Dristas Groom & McCormick	Fresno, CA, 93720
Ford Motor Credit Company	Los Angeles, CA, 90084
Franchise Tax Board	Sacramento, CA, 94257
Gostanian General Building	Fresno, CA, 93711
Kent H Landsberg Co	San Francisco, CA, 94160
Malloy Lithographing Inc	Ann Arbor, MI, 48106
Net Asset, Llc	Fresno, CA, 93721
Office Depot	Los Angeles, CA, 90074
Pollstar	Fresno, CA, 93722
Postmaster	Fresno, CA, 93706
Roadway Package System, Inc	Pasadena, CA, 91185
State of California	Sacramento, CA, 94230
Suburban Propane	Fresno, CA, 93706
Unocal	Pasadena, CA, 91186
Yesmed, Inc	Fresno, CA, 93718
Dataforms/West	Fresno, CA, 93711
Zylka Design	Fresno, CA, 93711
United Parcel Service	Reno, NV, 88905
Federal Express Corporation	Memphis, TN, 38101
*/