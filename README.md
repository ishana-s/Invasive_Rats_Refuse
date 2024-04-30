#####################################################################################################################
THIS DATA PACKAGE ACCOMPANIES: Waste Reduction decreases rat activity from peri-urban environment, I. Shukla and C. W. Wilmers
This data package contains the original dataset as well as R code used to generate analysis.
############################################# CONTENTS ########################################################################
1.	Shukla and Wilmers README.md -- This file, including a description of variables.
2.	rat_det.csv -- A data file that includes the habitat, distance to human refuse, invasive rate presence, native small mammal presence, and trapping period used for the linear regression.
3.	detHIs.csv -- A data file of invasive rat detection history used for the occupancy models
4.	Invasive_rat_refuse.R -- supplementary code of the linear regression, model competition, and occupancy models  for invasive rate presence

   #####################################################################################################################
VARIABLE NAMES AND DESCRIPTIONS
FILE: rat_det.csv
id: Indicates an individual data point
rat: presence of invasive rats, 0 = absent, 1 = present
site: site number at which each detection was made.
night: night number at which the detection took place
habitat: habitat of each detection, 1 = mixed oak forest, 2 = mixed redwood forest, 3 = grassland
distance: the distance from human refuse at which the camera was placed (in meters)
native: recording the absence/ presence of small, native mammals at each detection point
period: "pre" = trapping period 1 (before lockdown), "post" = trapping period 2 (after lockdown)
FILE: detHis.csv
Site: site number at which each detection was made.
Survey Night 1-4: indicated the presence or absence of invasive rats. 0 = absent, 1 = present
HABITAT: habitat: habitat of each detection, 1 = mixed oak forest, 2 = mixed redwood forest, 3 = grassland, 5 = chaparral 
human.dist: the distance from human refuse at which the camera was placed (in meters)
period: "1" = trapping period 1 (before lockdown), "2" = trapping period 2 (after lockdown

#####################################################################################################################
IS was funded by a Norris Center Student Award from the Kenneth S. Norris Center for Natural History.



