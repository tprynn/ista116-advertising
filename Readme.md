This document aims to answer questions relating to the generation of various data, script and R files used in the project.

Simple Usage:

1. navigate to base directory in a terminal window
2. run the following command, without quotes: "make"

This will create and run R files for each of the ten terms and print out the results.

F.A.Q.

Q: Where are the R files?
A: in the directory stats there is an R file for each term, and R files for generating the plots in the paper

Q: Why didn't you use R for everything?
A: R sucks at file manipulation and repetition. bash is much better

Q: There are 177 data files collected at different times but you only used one, why?
A: My hypothesis isn't affected by the time of data collection.  It's possible see if the same conclusion holds for different times - the workflow is generalizable to different timestamps, simply change the timestamp values within each of the script files.

More detailed (my workflow):

- Run topterms.sh to print a list of the most common words appearing in the dataset.
- Pick some of these terms (I picked [sim android lawyer insurance credit lemon ink equity hair canon])
- Run singleterm.sh with the selected terms to generate data files which only have the bundled terms into terms/$term/$file
- Run generate.sh $term to create an R file in stats/stats-$term.R
- Execute that R file on the command line or in RStudio
- Run make.sh to generate.sh for all terms and execute each file