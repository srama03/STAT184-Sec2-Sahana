# STAT184-HW-Template
 STAT184 Github Day 1 HW Template
 
## Introduction
This repository contains mainly one of the assignments we worked on in class- the diamonds challenge. The goal of this repo is to learn how to navigate github using the desktop app. I worked on the diamonds dataset that comes in a package. It also contains a csv file with the details of US armed forces to practice uploading data.
## Implemetation
In the assignment, I had to find certain statistics related to the cut of the diamonds across length, depth and height- minimum, first quartile, median, 3rd quantile, maximum, mean, standard deviation etc. To apply the functions to multiple columns at the same time, I used the across() function.
```
 summarise(
    count= n(), #count of diamonds per cut
    #apply statistical functions across x, y, and z dimensions
    across(
      c(x, y, z),
      list(
        min= ~min(.),
        q1= ~quantile(., 0.25),
        median= ~median(.),
        q3= ~quantile(., 0.75),
        max= ~max(.),
        mad= ~mad(.),
        mean= ~mean(.),
        sd= ~sd(.)
      ),
      .names="{.col}_{.fn}"
    )
  )
```
## Results
The code outputted a table of the different stats (as mentioned above) across different cuts (fair, good, very good, etc.) 
<img width="663" alt="Screenshot 2024-11-22 at 2 45 15 PM" src="https://github.com/user-attachments/assets/f42fd7cd-fc95-4781-85e3-5aa3855b5af4">
## Contact
Please contact me via my [school email](ffs5175@psu.edu)
