/* Custom Formats */
proc format;
	value $gender 'M' = 'Male'
				  'F' = 'Female';
	value agegrp  11-13 = 'Youth Teen'
				  14-16 = 'Mid Teen';
run;


proc print data=sashelp.class;
	format age agegrp. sex $gender.;
run;