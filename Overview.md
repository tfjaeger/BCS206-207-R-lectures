---
title: "Data Wrangling and Visualization 101 - Overview"
author: "Florian Jaeger"
date: "10/25/2020"
output: pdf_document
---

# Goals for next two weeks

Over the next two weeks, we will introduce you to the basics of data visualization in R (Jaeger group; taught by Florian) and MatLab (Haefner and Mitchell groups; taught by Sabya). The topics we aim to cover are the following:

 * Data wrangling: Turning the data into the form you need (*dplyr*)
 * Data visualization:
   * General principles
   * How to plot in R (*ggplot*, *plotly*)
 * Documenting your code:
   * R Markdown / MatLab notebook
 * Introduction to confidence intervals
 
We only have a relatively short time, so we will focus on learning what tools are available and on *examples* of use (rather than an in-depth tutorial). There are great online tutorials and cheat sheets that contain further information. Specifically:

 * **By Friday 10/30:**
   * Send your initial data (e.g., excel, matlab, or csv file) to both Sabya and Florian (you can use Slack). If you won’t have your own data by then (which might well happen), that’s ok. In that case, please ask your PI whether they have an old data set with data similar to the one that you would be analyzing. 

 * Monday 11/2:
   * **Prepare before class:** You will receive a data set ahead of class (described below). Load it into Matlab/R and familiarize yourself with its structure. Quick primers are available online for both R (https://rstudio.cloud/learn/primers/1) and Matlab (https://www.mathworks.com/help/matlab/getting-started-with-matlab.html), as are tutorials on how to load data. Go through them *before* class.
   * In class, we will use that data to illustrate how we can visualize our data at various levels of summarization. 

[comment]: #  + Whole class together: briefly introduce data
[comment]: #   + DV = continuous or discretized continuous outcome
[comment]: #   + IVs:
[comment]: #     + 1 predictor that is underlyingly continuous but only discrete steps have been sampled from during experiment
[comment]: #     + 1 predictor that is two-way categorical condition
[comment]: #  + Split into R/Matlab groups:
[comment]: #   + scatter plot:
[comment]: #   + start with simple scatter plot, ignoring condition.
[comment]: #   + add color
[comment]: #   + deal with point overlap (jitter, transparency)
[comment]: #   + add data summary (violin, boxplot)
[comment]: #   + increase summarization (point range with confidence interval [do not explain yet how CI is derived])
[comment]: #  + Rejoin at about 10am into whole class to discuss pros and cons of the different levels of summary.

 * Wednesday 11/4: 
   * **Prepare before class:** Load your group's data. For at least one subject in your data, try to repeat the different plots we've introduced on Monday for your own data. You will be asked to present your efforts in class (to go through your script while sharing your screen). It's ok to get stuck, but please use Slack to ask for help prior to class. 
   * In class, we will also go through problems/errors you might have encountered while trying to create visualizations of your data. 

[comment]: #  + Split into R/Matlab groups: 
[comment]: #   + debug and go through problems with students. (have them present and then explain/help) 
[comment]: #   + in particular, there might be issues with getting the data into the right format or basic R/Matlab questions.
[comment]: #   + challenges could also come up because there's data from multiple subjects.
[comment]: #   + SABYA: we could also try to cover legends etc. here if time permits. 
[comment]: #  + Rejoin at about 10am into whole class to discuss what's working with the figures and what's still missing.

 * Monday 11/9:
   * Summarizing variability in your data---and thus the researcher's *uncertainty* about the central tendencies in the data
   * Introduction to standard deviations, standard errors, and confidence intervals
 * Wednesday 11/11:
   * Preparing your visualizations for presentation (captions, axis titles, legends, and other annotations)
   * Saving your visualizations (format, dimensions)
 
