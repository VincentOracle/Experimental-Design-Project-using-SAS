
# Experimental Design Project – Spring 2023
Were Vincent</br>
27/05/2023</br>


## Project Proposal
To examine the association between exposure to the Guided Care Model</br>
within primary care and the incidence of unplanned hospitalizations in 2009 among
Illinois seniors (65+) with MCC who Medicare covers by anova – analysis. 
## Introduction
In this problem, we were presented with tables containing information about
the association between a particular exposure and various diseases. We were asked to
provide a methods write-up for each table, including information on the data source, inclusion/exclusion criteria, data management and variable creation/definitions, and
analytic methods used to build the models. Additionally, we were asked to briefly
describe what each table tells us about what to expect in a final model. 

## Background
The Guided Care Model is a primary care intervention to improve health
outcomes among older adults with multiple chronic conditions (MCC). However, the
association between exposure to this model and the incidence of unplanned
hospitalizations in this population remains unclear. 

## Objective
To examine the association between exposure to the Guided Care Model
within primary care and the incidence of unplanned hospitalizations in 2009 among
Illinois seniors (65+) with MCC who Medicare covers. 

## Methods
We conducted an observational study using the DE-SynPUF Medicare Claims
Summary File and additional data sources. We included Illinois residents who were
Medicare beneficiaries, aged 65 or older, had MCC, continuous enrollment in
Medicare for 11 months in 2008, and did not die by the end of 2009. We used logistic regression to evaluate the association between exposure to the Guided Care Model
and the incidence of unplanned hospitalizations, adjusting for age, race/ethnicity, sex, osteoporosis, and rheumatoid arthritis. We also examined whether diabetes modified
this association. Data management and variable creation/definitions
The variables of interest were Any unplanned hospitalization in 2009 (yes/no)
and Exposure to Guided Care Model in Primary Care (yes/no). A variable for multiple
chronic conditions (yes=1, no=0) was created using seven individual chronic
conditions, including Acute myocardial infarction, Alzheimer's disease and related
disorders or senile dementia, Chronic kidney disease, Chronic obstructive pulmonary
disease, Depression, Heart failure, Stroke and transient ischemic attack. The
covariates included Age, race/ethnicity, sex, osteoporosis, and rheumatoid arthritis. 

## How the code works
This code snippet defines an array cc containing several dichotomous
variables related to chronic health conditions. The code then checks each element of
the cc array, and if its value is 2, it is set to 0. The code then calculates the total number of chronic health conditions
(NumCC) by summing up the values of the dichotomous variables in the cc array. If
NumCC is greater than or equal to 2, the patient is classified as having multiple
chronic conditions (MCC=1); otherwise, if NumCC is either 0 or 1, the patient is
classified as not having various chronic diseases (MCC=0).

## Results
According to Table 4 of the study, the Guided Care model led to a 20%
reduction in unplanned hospitalization while keeping all other variables constant. After controlling for other factors, the results showed that patients aged 75-84 had
75.6% higher odds of unplanned hospitalization, while those aged 85-99 had 151%
higher odds of unplanned hospitalization compared to the 65-74 age group. Additionally, Black patients had 66% higher odds of
unplanned hospitalization than those who identified as White or Hispanic. Finally, the
odds of unplanned hospitalization were 31.4% lower for female patients compared to
male patients. Table 1N (%) Any hospitalization /Yes(# and %)Anyhospitalization/No(#and %)Chi- squareTestp-valueMissing OutcomeData1,2(# and %)Total 61798 3090 (5.0%) 58708(95.0%)EXPOSURE
OF
INTEREST
(guided care
model)
0.06
Yes 1545 (5.5%) 26671
(94.5 %)
No 1576 (4.5%) 32037
(95.5 %)
Missing/Do not
know1
Covariate 1:
Race
<0.01
white
1928
(4.9 %)
37702
(95. 1 %)
Black
560 (6.9 %) 7559
(93.1 %)
6
Hispanic
443 (4.4 %) 987
(95.6 %)
Other
368 (6.5 %) 2354
(93.5 %)
Missing/Do not
know
Covariate 2:
Diabetes
<0.01
Yes
12549
(90.4 %)
No
1754 (3.5%) 48298
(96.5 %)
Missing/Do not
know
Covariate 3:
sex
<0.01
Male
1414
(4.4 %)
30723
(95.6 %)
2454
(4.4 %)
Female
1676
(5.6 %)
28006
(94.4 %)
2534
(5.6 %)
Missing/do not
know
Covariate 4:
age group
<0.01
65-74 1168
(3.3%)
6575 (96.7
(%)
1168
(3.3%)
75-84 1176
(7.6 %)
7758
(92.4 %)
1176
(7.6 %)
85-99 746
(14.2 %)
6875
(85.8 %)
746
(14.2 %)
Missing/do not
know
Covariate 5:
Osteoporosis
<0.01
yes 2454(4.5
%)
6235
(95.5 %)
2454(4.5
%)
no 3234(16. 7 %)
6434
(83.3 %)
3234(1
6.7 %)
Missing/do not
know
Covariate 6:
Rheumatoid
arthritis
<0.01
yes 5634
(7.9 %)
6275
(92.1 %)
5634
(7.9 %)
no 4354
(4.6 %)
5675(95.4
%)
4354
(4.6 %)
Missing/do not
know

## Purpose
To identify the association between exposure to the Guided Care Model within
primary care and the incidence of unplanned hospitalizations in 2009 among Illinois
seniors (65+) with Multiple Chronic Conditions (MCC) covered by Medicare, adjusting for potential confounders and effect modification by diabetes. Executive Summary
The problem provided a valuable exercise in developing methods write-ups for
several tables containing information on the association between a particular exposure
and various diseases. By carefully considering the data source, inclusion/exclusion
criteria, data management, and analytic methods used to build the models, we could
better understand the factors that can influence the associations between these
exposures and diseases. Last but not least, this exercise highlighted the importance of
carefully considering these factors when building models and interpreting the results
to obtain accurate and meaningful findings. In the final multivariable model, after adjusting for Age, sex, race/ethnicity, osteoporosis, rheumatoid arthritis, and diabetes as an effect modifier, exposure to
guided care was significantly associated with reduced odds of unplanned
hospitalization in 2009 among Illinois seniors with multiple chronic conditions
(OR=0.83, 95% CI: 0.78-0.88). The odds of unplanned hospitalization in 2009 were
also significantly higher among those with osteoporosis (OR=1.22, 95% CI: 1.16- 1.28), rheumatoid arthritis (OR=1.12, 95% CI: 1.07-1.18), and those who were older
(OR=1.02, 95% CI: 1.02-1.03) and male (OR=1.11, 95% CI: 1.06-1.16). The odds of
unplanned hospitalization in 2009 were significantly lower among Hispanics
(OR=0.88, 95% CI: 0.81-0.96) and other races (OR=0.80, 95% CI: 0.72-0.89)
compared to Blacks. The odds of unplanned hospitalization in 2009 were not significantly different between Hispanics and Whites (OR=0.98, 95% CI: 0.91-1.06). Blacks had the highest levels of any hospitalization
