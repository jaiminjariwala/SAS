/* With the help of keyword "data" we can create dataset */
data student;
input name$ sub1 sub2 sub3 gender$;	*Columns for student table;

/* Give values for the dataset */
datalines;
sam 67 34 89 male
anne 34 78 12 female
julia 90 12 21 female
bob 50 50 50 male
jeff 78 34 1 male
matt 90 1 50 male
;
run;

proc print data=student;
run;

/* PROC SQL basically enables us to implement SQL like commands in SAS */
proc sql;
select * from student;

select max(sub1) as highest_sub1,
	   max(sub2) as highest_sub2,
	   max(sub3) as highest_sub3 from student;
	   
select min(sub1) as lowest_sub1,
	   min(sub2) as lowest_sub2,
	   min(sub3) as lowest_sub3 from student;
	   
select mean(sub1) as average_sub1,
	   mean(sub2) as average_sub2,
	   mean(sub3) as average_sub3 from student;

/* check all of those rows separated by male and female */
select * from student where gender="male";

/* to find who is the topper of the class, 
carry out total and whose total is maximum, is the topper */
select *, (sub1+sub2+sub3) as total from student;

quit;



