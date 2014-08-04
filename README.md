## What is this?

A small R script that plots the histogram of the first digits of all of a
researcher's publication citations, and compares it to the [Benford's
Law](http://en.wikipedia.org/wiki/Benford's_law) log distribution.


## Input Data

A csv file of publications was generated for each researcher using the [Publish
or Perish](http://www.harzing.com/pop.htm) application, a Windows interface to
Google Scholar.

## How to Run

In R:

    source('run.R')

On the command line:

    Rscript run.R

or

    R CMD BATCH run.R


## Output

A plot of 6 distributions saved as

    output.png
