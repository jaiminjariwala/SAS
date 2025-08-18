* Example-1;
data demographics;
	input Name $ Age State $ Weight;
	datalines;
	Marie 25 WV 132
	Adam 41 CA 210
run;



* Example-2;
/* You can add column number range of each variable in your INPUT
	statement if you choose.
	THIS IS A COUNTING GAME SO MAKE SURE THAT YOUR DATALINES
	START AT THE BEGINNING OF EACH LINE
*/
data demographics_cols;
	input Name $ 1-5 Age 6-8 State $ 9-11 Weight 12-15;
	datalines;
Marie 25 WV 132
Adam 41 CA 210
Jen   26 MI 162
;
run;



* Example-3;
/* Reading in raw data from a non-SAS dataset file
	(e.g. (.txt or .dat))
	YOU DO NOT USE THE "infile" AND "datalines" STATEMENT TOGETHER!
*/
data births;
	infile '/home/u44796916/BirthsKingCounty2001.txt';
	input Gender $ 1-2 Index 3 Age $ 5-6;
run;



* Example-4;
/* Reading raw data: another way
	1. The +1 in the input statement skips one column and moves to the next
	2. informats means "not formatted"
*/
data birth_informats;
	infile '/home/u44796916/BirthKingCounty2001.txt';
	input Gender $ 1-2 Index +1 Age $ 5-6 Ethnicity $ 8-15;
run;



*Example-5;
/* SAS uses informats anytime you have non-standard data
	(hyphens, dollar signs, etc.)
	-> Very common to utilize informats when reading in DATES
	-> Format statements make the dates more readable to us
*/
data date_sample;
	format Date_Birth MMDDYY10.;	* set the date length limit to 10;
	input Name $ Date_Birth MMDDYY10.;
	datalines;
Oliver 03-16-1972
Natale 12-11-1965
;
run;
	
	
	
	
	
	