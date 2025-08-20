/* Creating our own library */
libname mysets '/home/u64300968/Quick-Start-Git/Dataset';
run;


/* let's store bweight dataset into "mysets library(that we created)" 
   Note: Say "data mysets.bweight_kg" rather than "data bweight_kg" because...
   		 we want to create bweight_kg dataset INSIDE mysets library that we created
   		 and not in by default library called WORK!
*/
data mysets.bweight_kg;
	set sashelp.bweight;	*name of the old dataset
	
	/* Create variables named "Weight_Kg" and "Domestic_Status" */
	Weight_Kg = Weight/1000;			* division;
	Domestic_Status = "International";	* character assignment;
run;