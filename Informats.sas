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
Lindell    Boat1 $678.23	* dollar_sign+digits+period = 7 and .2 means 2 decimals;
Noria      Boat2 $724.68
;
run;


* Example-2;
data patients;
	format Intake_Date MMDDYY10.;
	input Name $10. Age 2. +1 Weight 6.2 +1 Intake_Date MMDDYY10.;
	datalines;
Josephine 52 172.36 04-12-2015
Robert    67 264.32 04-26-2015
;
run;



* Example-3;
data MRI_data;
	format MRI_DATE MMDDYY7.;
	infile '/home/u64300968/Quick-Start-Git/Files/MRI.txt' dlm=' ' firstobs=2;
	input Patient_ID $4. MRI_DATE MMDDYY7.;
	