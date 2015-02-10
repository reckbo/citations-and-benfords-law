## Overview

An R and J script that plots the histogram of the first digits of all of a
researcher's publication citations, and compares it to the [Benford's
Law](http://en.wikipedia.org/wiki/Benford's_law) log distribution.


## Input Data

A csv file of publications was generated for each researcher using the [Publish
or Perish](http://www.harzing.com/pop.htm) application, a Windows interface to
Google Scholar.

## Run

In R:

    source('run.R')

On the command line:

    Rscript run.R

or

    R CMD BATCH run.R

J:

    load'benford.ijs'

## Output

The R script saves plot of 6 distributions as `benford_citations_R.png`:
![](https://github.com/reckbo/citations-and-benfords-law/blob/master/benford_citations_R.png)

The j script shows the plot in a plot window:
![](https://github.com/reckbo/citations-and-benfords-law/blob/master/benford_citations_J.png)
