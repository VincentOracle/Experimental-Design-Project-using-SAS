/*Preparing Racism and PTB CaCo data for analysis
Created: 6/5/2023 (Kristin Rankin)
*/
/*Statements below create macro variables for data folder and code
folder to be re-used throuhout this code document
-enter folder her once and it will replace the &amp;datafolder in the rest of
the code; this is
helpful when you might be working on different machines, etc.; NOTE: if
enclosed in quotes, they
must be double, not single quotes for macro variable to process*/
%let Path=U:\BIA65\2023\RacismData;
%let racismvars=pubf5a1 pubf5b1 pubf5c1 pubf5d1 pubf5e1 pubf5f1 pubf5g1
pubf5h1 pubf5i1;
libname caco &quot;&amp;Path&quot;;
*******************************************************
Chart Abstraction Data
*******************************************************;
/* from Comma-Delimited file, then read all variables in as character
variables
with INFILE/INPUT statement to ensure that character values in otherwise
numeric variables were not set to
missing*/
data RacismCacoMedRecord;
infile &quot;&amp;Path.\Chart Abstraction Forms.csv&quot; dlm=&#39;,&#39; dsd firstobs=2;
input Partnumb $ Site momage babygadate parida;
run;
/*Checked frequencies of all variables for numeric-character
inconsistencies*/
proc contents data=RacismCacoMedRecord varnum;
run;
proc freq data=RacismCacoMedRecord;
run;
/*Creating permanent dataset with case-control status variable*/
data caco.RacismCacoMedRecord (drop=status);
set RacismCacoMedRecord;
/*Coding case-control status from last digit of PartNumb variable, using
SUBSTR function*/
Status=substr(PartNumb,6,1); /*substring the 6th character, count 1
space*/

CaCo=input(status,best.); /*Convert character variable for &#39;1&#39; and
&#39;2&#39; to new numeric version
(drop Status variable in data statement
above)*/
if CaCo=2 then CaCo=0; /*Recoding values of 2 for control to 0 for
1/0 binary variable*/
run;
***********************************************************
Questionaire Data
***********************************************************;
/*Note: Data cleaning and management is performed ONLY for the racism
variables
in this code - it is up to you for the other variables*/
/*Read in Quest Data - Site using input/infile ;
Racism variables were converted to numeric in input statement after
checking that only haat
numeric values were entered*/
data caco.RacismQuest;
infile &quot;&amp;Path\Questionnaire - both sites.csv&quot; dlm=&#39;,&#39; dsd firstobs=2;
input Partnumb $ raceneigh married pubF5A1 pubF5B1 pubF5C1 pubF5D1
pubF5E1 pubF5F1 pubF5G1 pubF5H1 pubF5I1
income govthelp grade $;
/*Setting up array of all past year discrimination measures*/
array items {*} &amp;racismVars;
/*Recoding missing data*/
do i=1 to dim(items);
if items{i} = 77 then items{i}=.; /*set 77-don&#39;t know to missing*/
if items{i} = 88 then items{i}=.; /*set 88-not defined to missing*/
if items{i} = 99 then items{i}=0; /*set 99-not applicable to
&quot;Never&quot;*/
end;
/*Setting up variable with value of zero for everyone to start count of
the # of missing values*/
RacismMissSum=0;
do i=1 to dim(items);
if items{i} = . then RacismMissSum=RacismMissSum+1;
end;
/*Creating continuous, ordinal and dichotomous versions of racism
variables,
for everyone with 2 or fewer missing values across the 9 variables*/
if RacismMissSum le 2 then do;
RacismSumYr=sum(pubf5a1,pubf5b1,pubf5c1,pubf5d1,pubf5e1,pubf5f1,pubf5g1,p
ubf5h1,pubf5i1);

end;
run;
/*Checking recoded variables*/
proc freq data=caco.RacismQuest;
tables
RacismMissSum*RacismSumYr*pubf5a1*pubf5b1*pubf5c1*pubf5d1*pubf5e1*pubf5f1
*pubf5g1*pubf5h1*pubf5i1/list missing;
run;