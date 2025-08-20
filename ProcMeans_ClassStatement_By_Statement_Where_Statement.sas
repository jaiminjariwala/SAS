proc means data=sashelp.baseball;
	var nHits nRuns;
run;



proc means data=sashelp.baseball median q1 maxdec=2 nmiss n mean;
	var nHits nRuns;
	output out = baseball_stats;
run;



/* CLASS Statement:
	-> Performs a separate analysis for each 'level' of the variable
		listed in the class statement (categorical var i.e 'League')
	-> Comes before the VAR statement
*/
proc means data=sashelp.baseball;
	class League;
	var nHits nRuns;
run;



/* BY Statement
	-> Same as CLASS except the DATA MUST BE SORTED first by the variables
	   you list in the BY Statement 
	-> Output Results will give a separate table for each level
*/
proc sort data=sashelp.baseball out=baseball_sort;
	by League;
run;

proc means data=baseball_sort;
	by League;
	var nHits nRuns;
run;



/* WHERE Statement
	-> Can subset using the WHERE statement just as you would in a DATA Step
	-> Adding titles to the output is also useful
*/
proc means data=sashelp.baseball;
	var nOuts;
	where team not = 'Houston';
	Title 'Summary of Outs for All Teams Except Houston';
run;







