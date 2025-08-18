/* Informats are used when reading in "non-standard" data:
	-> hyphens
	-> slashes
	-> dollar signs
	-> percent signs
	-> commas
	
	3 types of informats
	-> character - $informatw. - always denoted by $ sign, "w" stands for width
	-> numeric - informatw.d - comes with decimals, "w" stands for width
	-> date - informatw.
	( DO NOT FORGET THE PERIOD(.) after the width! )
*/

data customers;
	input Name $10. Product $6. Price_Paid Dollar7.2;
	datalines;
Lindell    Boat1 $678.23
Noria      Boat2 $724.68
;
run;