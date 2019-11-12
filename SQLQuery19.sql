--From Murach's SQL Server 2016 for Developers
--Page 35

--A CREATE VIEW statement for a view named VendorMin
CREATE VIEW VendorMin AS
SELECT VendorName, VendorState, VendorPhone 
--columns selected
FROM Vendors;
--table selected
--A SELECT statement that uses the VendorsMin view
SELECT * FROM VendorMin
WHERE VendorState = 'CA'
ORDER BY VendorName;

--Sample Result
/*
	VendorName				VendorState		  VendorPhone
Abbey Office Furnishings		CA			(559) 555-8300
American Express				CA			(800) 555-3344
ASC Signs						CA			NULL
Aztek Label						CA			(714) 555-9000
Bertelsmann Industry Svcs. Inc	CA			(805) 555-0584
BFI Industries					CA			(559) 555-1551
Bill Jones						CA			NULL
Bill Marvin Electric Inc		CA			(559) 555-5106
Blanchard & Johnson Associates	CA			(214) 555-3647
Blue Cross						CA			(800) 555-0912
Blue Shield of California		CA			(415) 555-5103
Cal State Termite				CA			(559) 555-1534
California Business Machines	CA			(559) 555-5570
California Chamber Of Commerce	CA			(916) 555-6670
California Data Marketing		CA			(559) 555-3801
City Of Fresno					CA			(559) 555-9999
Coffee Break Service			CA			(559) 555-8700
Computerworld					CA			(617) 555-0700
Costco							CA			NULL
Crown Printing					CA			(559) 555-7473
Dataforms/West					CA			NULL
Digital Dreamworks				CA			NULL
Diversified Printing & Pub		CA			(714) 555-4541
DMV Renewal						CA			NULL
Dristas Groom & McCormick		CA			(559) 555-8484
Evans Executone Inc				CA			NULL
Executive Office Products		CA			(559) 555-1704
Expedata Inc					CA			(559) 555-9586
Ford Motor Credit Company		CA			(800) 555-7000
Franchise Tax Board				CA			NULL
Frank E Wilber Co				CA			(559) 555-1881
Fresno County Tax Collector		CA			(559) 555-3482
Fresno Credit Bureau			CA			(559) 555-7900
Fresno Photoengraving Company	CA			(559) 555-3005
Fresno Rack & Shelving Inc		CA			NULL
Gary McKeighan Insurance		CA			(559) 555-2420
Golden Eagle Insurance Co		CA			NULL
Gostanian General Building		CA			(559) 555-5100
Graylift						CA			(559) 555-6621
IBM								CA			(800) 555-4426
Internal Revenue Service		CA			NULL
Jobtrak							CA			(800) 555-8725
Kent H Landsberg Co				CA			(916) 555-8100
Lou Gentile's Flower Basket		CA			(559) 555-6643
McKesson Water Products			CA			(800) 555-7009
Net Asset, Llc					CA			NULL
Office Depot					CA			(800) 555-1711
Opamp Technical Books			CA			(213) 555-4322
Pacific Bell					CA			(209) 555-7500
Pacific Gas & Electric			CA			(800) 555-6081
Ph Photographic Services		CA			(559) 555-0765
Pollstar						CA			(559) 555-2631
Postmaster						CA			(559) 555-7785
Publishers Marketing Assoc		CA			(310) 555-2732
Retirement Plan Consultants		CA			(559) 555-7070
Roadway Package System, Inc		CA			NULL
Robbins Mobile Lock And Key		CA			(559) 555-9375
Shields Design					CA			(559) 555-8060
State Board Of Equalization		CA			(916) 555-4911
State of California				CA			(209) 555-5132
Suburban Propane				CA			(559) 555-2770
Texaco							CA			NULL
The Fresno Bee					CA			(559) 555-4442
The Presort Center				CA			(559) 555-6151
The Windows Deck				CA			(800) 555-3353
Towne Advertiser's Mailing Svcs	CA			NULL
Unocal							CA			(415) 555-7600
Valprint						CA			(559) 555-3112
Vision Envelope & Printing		CA			(310) 555-7062
Wakefield Co					CA			(559) 555-4744
Wang Laboratories, Inc.			CA			(800) 555-0344
Yale Industrial Trucks-Fresno	CA			(559) 555-2993
Yesmed, Inc						CA			(559) 555-0600
Zip Print & Copy Center			CA			(233) 555-6400
Zylka Design					CA			(559) 555-8625
*/