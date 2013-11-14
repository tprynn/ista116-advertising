Introduction
========================
This package of bash and R scripts performs some simple p-value testing on "bundles" of Google Adwords terms, with the end goal of answering the question: "Do similar search terms sell for similar prices?"  Spoiler: yes.  Analysis and details are in Paper.pdf.

Created for ISTA 116 final project at the University of Arizona.  This project uses data from the [open advertising dataset](https://code.google.com/p/open-advertising-dataset/).

Workflow
========================
- Run topterms.sh to print a list of the most common words appearing in the dataset.
- Pick some of these terms (I picked [sim android lawyer insurance credit lemon ink equity hair canon])
- Run singleterm.sh with the selected terms to generate data files which only have the bundled terms into terms/$term/$file
- Run generate.sh $term to create an R file in stats/stats-$term.R
- Execute that R file on the command line or in RStudio
- Run make.sh to generate.sh for all terms and execute each file