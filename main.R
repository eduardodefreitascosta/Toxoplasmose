#header #################################################################################
#'main.R'

#Title: Toxo meta-analysis project
#Project ID: pid
#Client: client
#Author: <Eduardo> <Costa>, Wageningen Bioveterinary Research

#Description: This is the main (exe) file to execute the meta-analysis for toxo in different regions of Brazil.

#Start date: 23/09/2022
#Last Update: {6:date}

#R version: r.version
#Scriptversion: version

#Dependencies
#<-Downstream
  # None
#->Upstream
 #Models.R

#Input:
#-

#Output:
#-

#Peer reviewer(s)

#Please ensure directories are relative. Please comment code sufficiently.

#Script start#############################################################################

rm(list = ls())

#Packages to be used
packages<-c("here","tidyverse","ggplot2","gridExtra","readxl","meta","metafor")

# Install packages not yet installed
installed_packages <- packages %in% rownames(installed.packages())
if (any(installed_packages == FALSE)) {
  install.packages(packages[!installed_packages])
}

# Packages loading
invisible(lapply(packages, library, character.only = TRUE))  

#Creating dir

dir.create(here("Figures"),showWarnings = F)
dir.create(here("Outputs"),showWarnings = F)



# Running the models

source(here("Scripts","Models.R"))