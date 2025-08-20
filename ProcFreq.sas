/* PROC FREQ
	-> The TABLES statement has the list of variables you want to see frequencies for
*/

/* 
What is Cumulative Frequency?
Cumulative frequency is the running total of frequencies up to a certain point in a dataset.
In other words, you keep adding the frequencies of each class/interval one after another.

Marks_Range	| Frequency(No. of Students)  |	 Cumulative Frequency
0 – 10	    |   5	      				  | 		5
10 – 20	    |   8	     				  |		5 + 8 = 13
20 – 30	    |   12	 					  | 	13+ 12 = 25
30 – 40	    |   10	 					  |		25+ 10 = 35

What is Cumulative Percentage?
Cumulative percentage shows the percentage of data values that lie below a certain point, based on cumulative frequency.
Cumulative Percentage=(Total Frequency / Cumulative Frequency) / 100

*/


/* One-Way Frequency */
proc freq data=sashelp.baseball;
	tables Position;
run;

/* One-Way Frequency with Options */
proc freq data=sashelp.baseball;
	tables Position/NOCUM;
run;




/* Two-Way Frequency - CROSSTABULATION */
proc freq data=sashelp.baseball;
	tables Division*League/NOROW;	*Looking at frequencies: Division v/s League;
run;