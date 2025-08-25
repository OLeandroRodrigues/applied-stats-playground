invisible(Sys.setlocale("LC_CTYPE", "pt_BR.UTF-8"))
invisible(Sys.setlocale("LC_ALL", "pt_BR.UTF-8"))

options(warn=-1)
#suppressMessages(library(conf, warn.conflicts=FALSE))
suppressMessages(library(confintr, warn.conflicts=FALSE))
suppressMessages(library(DescTools, warn.conflicts=FALSE))
suppressMessages(library(EnvStats, warn.conflicts=FALSE))
suppressMessages(library(epiR, warn.conflicts=TRUE))
suppressMessages(library(fmsb, warn.conflicts=FALSE))
suppressMessages(library(ggplot2, warn.conflicts=FALSE))
suppressMessages(library(gplots, warn.conflicts=FALSE))
suppressMessages(library(knitr, warn.conflicts=FALSE))
suppressMessages(library(labelled, warn.conflicts=FALSE))
suppressMessages(library(MVN, warn.conflicts=FALSE))
suppressMessages(library(openxlsx, warn.conflicts=FALSE))
suppressMessages(library(readxl, warn.conflicts=FALSE))
suppressMessages(library(reshape2, warn.conflicts=FALSE))
suppressMessages(library(Rmisc, warn.conflicts=FALSE))
suppressMessages(library(RVAideMemoire, warn.conflicts=FALSE))
source("eiras.friendlycolor.R")
source("eiras.create.population.R")
source("eiras.plot.density.withmeansd.R")
source("eiras.sampling.R")
source("summarySEwithin2.R")


Dados <- readRDS("Biometria_FMUSP.rds")
print(str(Dados))

#tibble [549 × 13] (S3: tbl_df/tbl/data.frame)
#  $ ID          : Factor w/ 549 levels "1","2","3","4",..: 1 2 3 4 5 6 7 8 9 10 ...
#  $ Ano         : num [1:549] 2 2 1 1 1 3 3 2 3 3 ...
#  $ Turma       : Factor w/ 2 levels "A","B": 2 2 2 2 2 1 1 2 2 2 ...
#  $ Sexo        : Factor w/ 2 levels "F","M": 2 2 2 1 1 2 2 2 2 2 ...
#  $ Mao         : Factor w/ 3 levels "A","C","D": 3 3 3 3 3 3 3 3 3 3 ...
#  $ TipoSang    : Factor w/ 8 levels "A+","O+","B+",..: 1 1 1 1 6 1 1 3 2 2 ...
#  $ ABO         : Factor w/ 4 levels "A","O","B","AB": 1 1 1 1 2 1 1 3 2 2 ...
#  $ AtivFisica  : Factor w/ 5 levels "sempre_inativo",..: 3 2 4 4 2 5 5 4 5 5 ...
#  $ Sedentarismo: Factor w/ 2 levels "N","S": 1 2 1 1 2 1 1 1 1 1 ...
#  $ MCT         : num [1:549] 68 82 79 49 52 73 73 60 75 75 ...
#  $ Estatura    : num [1:549] 173 175 172 160 164 175 175 173 182 182 ...
#  $ Rh          : Factor w/ 2 levels "-","+": 2 2 2 2 1 2 2 2 2 2 ...
#  $ IMC         : num [1:549] 22.7 26.8 26.7 19.1 19.3 ...
# NULL

Dados.F <- subset(Dados, Sexo=="F")
print(nrow(Dados.F))

# [1] 232

Dados.M <- subset(Dados, Sexo=="M")
print(nrow(Dados.M))
# [1] 317

print(labelled::look_for(Dados[,-1]))