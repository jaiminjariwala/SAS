/* Method-1:
	Reads in a Text File
    Uses Line Pointers for observations that span multiple rows
*/

data city_temps;
	length City $15;
	infile '/home/u64300968/Quick-Start-Git/Files/SampleCityStack.txt';
	input City $ State $	/*please go onto 2nd line and look for NormLow and NormHigh temperatures*/
		/ NormLow NormHigh	
		/ RecordLow RecordHigh;
run;



/* Method-2:
	Use # symbol to call out the line number
*/
data city_temp2;
	length City $15;
	infile '/home/u64300968/Quick-Start-Git/Files/SampleCityStack.txt';
	input City $ State $
		#2 NormLow NormHigh
		#3 RecordLow RecordHigh;
run;



/* If more than 1 obs on same line use @@ (stay on the same line) to hold the line */
data city_temps3;
	length City $15;
	infile '/home/u64300968/Quick-Start-Git/Files/SampleCityStack.txt';
	input City $ State $ NormLow NormHigh RecordLow RecordHigh @@;
run;