
#header #################################################################################
#'Models.R'

#Title: Meta-analysis models
#Project ID: pid
#Client: client
#Author: <Eduardo> <Costa>, Wageningen Bioveterinary Research

#Description: File with the scripts to run the meta-analysis of Toxo in different regions of Brazil

#Start date: 23/09/2022
#Last Update: {6:date}

#R version: r.version
#Scriptversion: version

#Dependencies
#<-Downstream
 #Main.R
#->Upstream
 #None

#Input:
#- Data/Swine.xlsx
#- Data/Bovine.xlsx
#- Data/Sheep.xlsx
#- Data/Goat.xlsx
#- Data/Ostriches.xlsx
#- Data/Equids.xlsx
#- Data/Poultry.xlsx

#Output:
#-Figures/swine.png
#-Figures/bovine.png
#-Figures/sheep.png
#-Figures/goat.png
#-Figures/ostriches.png
#-Figures/equids.png
#-Figures/poultry.png
#-Outputs/Swine.txt
#-Outputs/Bovine.txt
#-Outputs/Sheep.txt
#-Outputs/Goat.txt
#-Outputs/Ostriches.txt
#-Outputs/Equids.txt
#-Outputs/Poultry.txt





#Peer reviewer(s)

#Please ensure directories are relative. Please comment code sufficiently.

#Script start#############################################################################

#########
# Swine #
#########

#Read data
swine<-read_excel(here("Data","Swine.xlsx"))

# Run the analysis
meta<-metaprop(event=Positive,n=`Number of sampled animals`,
          studlab=Reference,
          data=swine,
          sm="plogit",
          method.tau= "DL",
          incr=0.5,
          byvar = swine$Region,
          random = TRUE,
          comb.random=TRUE,
          comb.fixed=FALSE)
#Save output
sink(here("Outputs","Swine.txt"))
meta
sink()


#Plot and save the figure
png(file=here("Figures","swine.png"), width = 300, height = 330, units='mm', res = 300)
forest.meta(meta,overall = TRUE,
       xlim = "symmetric",
       allstudies = TRUE,
       squaresize = 1,
       plotwidth =  "12cm",
       plotheight="10cm",
       lwd=3,
       fontsize = 13,
       xlab = "Prevalence %",
       overall.hetstat=FALSE,
       print.Q.subgroup=FALSE,
       leftcols = c("studlab", "event", "n"),
       rightcols = c("effect", "ci", "w.random"),
       leftlabs =  c("Study","Positive","Total"),
       rightlabs = c("Prevalence %", "[95% CI]","Weight"),
       text.random="Overall prevalence RE",
       text.random.w="Regional prevalence RE",
       pscale = 100,
       addspace = TRUE, 
       digits = 1)
dev.off()


##########
# Bovine #
##########

#Read data
bovine<-read_excel(here("Data","Bovine.xlsx"))

# Run the analysis
meta2<-metaprop(event=Positive,n=`Number of sampled animals`,
               studlab=Reference,
               data=bovine,
               sm="plogit",
               method.tau= "DL",
               incr=0.5,
               byvar = bovine$Region,
               random = TRUE,
               comb.random=TRUE,
               comb.fixed=FALSE)
#Save output
sink(here("Outputs","Bovine.txt"))
meta2
sink()


#Plot and save the figure
png(file=here("Figures","bovine.png"), width = 300, height = 330, units='mm', res = 300)
forest.meta(meta2,overall = TRUE,
            xlim = "symmetric",
            allstudies = TRUE,
            squaresize = 1,
            plotwidth =  "12cm",
            plotheight="10cm",
            lwd=3,
            fontsize = 13,
            xlab = "Prevalence %",
            overall.hetstat=FALSE,
            print.Q.subgroup=FALSE,
            leftcols = c("studlab", "event", "n"),
            rightcols = c("effect", "ci", "w.random"),
            leftlabs =  c("Study","Positive","Total"),
            rightlabs = c("Prevalence %", "[95% CI]","Weight"),
            text.random="Overall prevalence RE",
            text.random.w="Regional prevalence RE",
            pscale = 100,
            addspace = TRUE, 
            digits = 1)
dev.off()


#########
# Sheep #
#########

#Read data
sheep<-read_excel(here("Data","Sheep.xlsx"))

# Run the analysis
meta3<-metaprop(event=Positive,n=`Number of sampled animals`,
                studlab=Reference,
                data=sheep,
                sm="plogit",
                method.tau= "DL",
                incr=0.5,
                byvar = sheep$Region,
                random = TRUE,
                comb.random=TRUE,
                comb.fixed=FALSE)
#Save output
sink(here("Outputs","Sheep.txt"))
meta3
sink()


#Plot and save the figure
png(file=here("Figures","sheep.png"), width = 300, height = 330, units='mm', res = 300)
forest.meta(meta3,overall = TRUE,
            xlim = "symmetric",
            allstudies = TRUE,
            squaresize = 1,
            plotwidth =  "12cm",
            plotheight="10cm",
            lwd=3,
            fontsize = 13,
            xlab = "Prevalence %",
            overall.hetstat=FALSE,
            print.Q.subgroup=FALSE,
            leftcols = c("studlab", "event", "n"),
            rightcols = c("effect", "ci", "w.random"),
            leftlabs =  c("Study","Positive","Total"),
            rightlabs = c("Prevalence %", "[95% CI]","Weight"),
            text.random="Overall prevalence RE",
            text.random.w="Regional prevalence RE",
            pscale = 100,
            addspace = TRUE, 
            digits = 1)
dev.off()



##########
# Goat #
##########

#Read data
goat<-read_excel(here("Data","Goat.xlsx"))

# Run the analysis
meta4<-metaprop(event=Positive,n=`Number of sampled animals`,
                studlab=Reference,
                data=goat,
                sm="plogit",
                method.tau= "DL",
                incr=0.5,
                byvar = goat$Region,
                random = TRUE,
                comb.random=TRUE,
                comb.fixed=FALSE)
#Save output
sink(here("Outputs","Goat.txt"))
meta4
sink()


#Plot and save the figure
png(file=here("Figures","goat.png"), width = 300, height = 330, units='mm', res = 300)
forest.meta(meta4,overall = TRUE,
            xlim = "symmetric",
            allstudies = TRUE,
            squaresize = 1,
            plotwidth =  "12cm",
            plotheight="10cm",
            lwd=3,
            fontsize = 13,
            xlab = "Prevalence %",
            overall.hetstat=FALSE,
            print.Q.subgroup=FALSE,
            test.effect.subgroup=FALSE,
            test.effect.subgroup.random=FALSE,
            test.subgroup.random = FALSE,
            test.overall.random = FALSE,
            leftcols = c("studlab", "event", "n"),
            rightcols = c("effect", "ci", "w.random"),
            leftlabs =  c("Study","Positive","Total"),
            rightlabs = c("Prevalence %", "[95% CI]","Weight"),
            text.random="Overall prevalence RE",
            text.random.w=" ",
            pscale = 100,
            addspace = TRUE, 
            digits = 1)
dev.off()




#############
# Ostriches #
#############

#Read data
ostriches<-read_excel(here("Data","Ostriches.xlsx"))

# Run the analysis
meta5<-metaprop(event=Positive,n=`Number of sampled animals`,
                studlab=Reference,
                data=ostriches,
                sm="plogit",
                method.tau= "DL",
                incr=0.5,
                byvar = ostriches$Region,
                random = TRUE,
                comb.random=TRUE,
                comb.fixed=FALSE)
#Save output
sink(here("Outputs","Ostriches.txt"))
meta5
sink()


#Plot and save the figure
png(file=here("Figures","ostriches.png"), width = 300, height = 330, units='mm', res = 300)
forest.meta(meta5,overall = TRUE,
            xlim = "symmetric",
            allstudies = TRUE,
            squaresize = 1,
            plotwidth =  "12cm",
            plotheight="10cm",
            lwd=3,
            fontsize = 13,
            xlab = "Prevalence %",
            overall.hetstat=FALSE,
            print.Q.subgroup=FALSE,
            test.effect.subgroup=FALSE,
            test.effect.subgroup.random=FALSE,
            test.subgroup.random = FALSE,
            test.overall.random = FALSE,
            leftcols = c("studlab", "event", "n"),
            rightcols = c("effect", "ci", "w.random"),
            leftlabs =  c("Study","Positive","Total"),
            rightlabs = c("Prevalence %", "[95% CI]","Weight"),
            text.random="Overall prevalence RE",
            text.random.w=" ",
            pscale = 100,
            addspace = TRUE, 
            digits = 1)
dev.off()



##########
# Equine #
##########

#Read data
equine<-read_excel(here("Data","Equids.xlsx"))

# Run the analysis
meta6<-metaprop(event=Positive,n=`Number of sampled animals`,
                studlab=Reference,
                data=equine,
                sm="plogit",
                method.tau= "DL",
                incr=0.5,
                byvar = equine$Region,
                random = TRUE,
                comb.random=TRUE,
                comb.fixed=FALSE)
#Save output
sink(here("Outputs","Equids.txt"))
meta6
sink()


#Plot and save the figure
png(file=here("Figures","equids.png"), width = 300, height = 330, units='mm', res = 300)
forest.meta(meta6,overall = TRUE,
            xlim = "symmetric",
            allstudies = TRUE,
            squaresize = 1,
            plotwidth =  "12cm",
            plotheight="10cm",
            lwd=3,
            fontsize = 13,
            xlab = "Prevalence %",
            overall.hetstat=FALSE,
            print.Q.subgroup=FALSE,
            leftcols = c("studlab", "event", "n"),
            rightcols = c("effect", "ci", "w.random"),
            leftlabs =  c("Study","Positive","Total"),
            rightlabs = c("Prevalence %", "[95% CI]","Weight"),
            text.random="Overall prevalence RE",
            text.random.w="Regional prevalence RE",
            pscale = 100,
            addspace = TRUE, 
            digits = 1)
dev.off()




###########
# Poultry #
###########

#Read data
poultry<-read_excel(here("Data","Poultry.xlsx"))

# Run the analysis
meta7<-metaprop(event=Positive,n=`Number of sampled animals`,
                studlab=Reference,
                data=poultry,
                sm="plogit",
                method.tau= "DL",
                incr=0.5,
                byvar = poultry$Region,
                random = TRUE,
                comb.random=TRUE,
                comb.fixed=FALSE)
#Save output
sink(here("Outputs","Poultry.txt"))
meta7
sink()


#Plot and save the figure
png(file=here("Figures","poultry.png"), width = 300, height = 330, units='mm', res = 300)
forest.meta(meta7,overall = TRUE,
            xlim = "symmetric",
            allstudies = TRUE,
            squaresize = 1,
            plotwidth =  "12cm",
            plotheight="10cm",
            lwd=3,
            fontsize = 13,
            xlab = "Prevalence %",
            overall.hetstat=FALSE,
            print.Q.subgroup=FALSE,
            leftcols = c("studlab", "event", "n"),
            rightcols = c("effect", "ci", "w.random"),
            leftlabs =  c("Study","Positive","Total"),
            rightlabs = c("Prevalence %", "[95% CI]","Weight"),
            text.random="Overall prevalence RE",
            text.random.w="Regional prevalence RE",
            pscale = 100,
            addspace = TRUE, 
            digits = 1)
dev.off()
