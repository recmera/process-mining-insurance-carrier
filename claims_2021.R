
# load packages
library(bupaR)
library (edeaR)
library(lubridate)



setwd("C:/Users/Juan Pablo Salazar/Dropbox/Cursos UACh/2021/2021.2 - INFO276/Unidad 2 - Modelamiento y Análisis de Procesos")

# lectura del CSV, para cargar el log de eventos.
read.csv2("log_claims_2021.csv") %>%
  mutate(Start.Timestamp = dmy(Inicio),
         Complete.Timestamp = dmy(Fin)) %>%
  activities_to_eventlog("claim_id", activity_id = "activity", 
                         timestamps = c("Start.Timestamp","Complete.Timestamp"), 
                         resource_id = "resource"
  ) -> claims2021


summary(claims2021)

