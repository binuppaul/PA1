## Session 1 -Getting to know your data
## call the package lattice 
library(lattice)
## call the package nutshell . Note: If nutshell is not  installed already, you need to install the package.
library(nutshell)
## get the data births2006.smpl
data(births2006.smpl)
## Check the data in births2006.smpl
births2006.smpl
## Use dim(short of dimensions) to check the dimensions of the file births2006.smpl
dim(births2006.smpl)
## You can get more information about 'this data' from R documentaion with the following commmand
?births2006.smpl
## create a table births.dow which stores information about the number of births on each day of the week:Qstn: Can you change the weekday label from (1,2,,7) to Sunday, Monday... Saturday?
births.dow=table(births2006.smpl$DOB_WK)
## print the table
births.dow
## create  bar chart with the information in the above table. Take a close look at the format. Qstn: Can you find out  how to give separate colors to  each bar?
## Create another table with  information about DOB_WK and DEMTH_REC. 
dob.mm.tbl=table(WeeK=births2006.smpl$DOB_WK,MethodRecorded=births2006.smpl$DMETH_REC)
## Print the table
dob.mm.tbl
## Examine the table and see if you can find any pattern
## Eliminate the Values relating the column Unknown from the above table
dob.mm.tbl=dob.mm.tbl[,-2]
## print the table
dob.mm.tbl
## call trellis.device: Note: Read more on the features of trellis  package
trellis.device()
## Create a bar chart with the data in dob.mm.tbl
barchart(dob.mm.tbl,ylab="Day of the Week")
## Create another bar chart. 
barchart(dob.mm.tbl,horizontal = FALSE,groups = FALSE, xlab="Day of the Week", Col="Blue")
## Qstn: Can you create the above chart with different colors for representing data in C-Section and Vaginal birth? (5 points)
## Condition density histogram- Condition density histograms are used to represent the density of a given variable conditional on the values/labels of another variable
## Here we are interested in creating condition density histogram of birth weight (DBWT) conditional on variable DPLURAL and DMETH_REC
## Create the condition density  histogram for DBWT with DPLURAL
histogram(~DBWT|DPLURAL, data=births2006.smpl,layout=c(1,5),col="red")
## What can you surmise from the graph?
## Create the condition density histogram for DBWT with DMETH
histogram(~DBWT|DMETH_REC,data=births2006.smpl,layout=c(1,3),col="black")
## What can you surmise from the graph?
densityplot(~DBWT|DPLURAL, data=births2006.smpl,layout=c(1,6),plot.points=FALSE)



