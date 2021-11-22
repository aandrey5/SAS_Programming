* Access data *
***************


options validvarname=v7;

ods graphics on;

%let path=/home/u59957905/sasuser.v94;

libname pg1 base "&path";

proc import datafile="&path/VKO.xlsx"
			dbms=xlsx out=vko_new replace;
		sheet="VKO arrivals";
run;		
