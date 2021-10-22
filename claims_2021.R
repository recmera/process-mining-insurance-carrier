# Cargar librerias
library(bupaR)
library (edeaR)
library(processmapR)
library(lubridate)
library(eventdataR)
library(DiagrammeR)

# Lectura del CSV, para cargar el log de eventos.
read.csv2("log_claims_2021.csv") %>%
  mutate(Start.Timestamp = dmy(Inicio),
         Complete.Timestamp = dmy(Fin)) %>%
  activities_to_eventlog("claim_id", activity_id = "activity", 
                         timestamps = c("Start.Timestamp","Complete.Timestamp"), 
                         resource_id = "resource"
  ) -> claims2021

# Numero de columnas dataset 
nrow(claims2021)

# Descripción dataset 
summary(claims2021)

# Actividad inicial
claims2021 %>% start_activities("activity")

# Actividades finales
claims2021 %>% end_activities("activity")

# Mapa de procesos
claims2021 %>% process_map()

# Actividades
claims2021 %>% activities

# Recursos
claims2021 %>% resources

# Estadísticos de tiempo desde comienzo hasta fin (días)
claims2021  %>% throughput_time()

# Todas las secuencias de actividades (trazas)
claims2021 %>% trace_explorer(coverage = 1)


# Process map del proceso de investigación
claims2021 %>%
  filter_activity("File Claim", reverse= TRUE) %>%
  filter_activity("Check Contract", reverse= TRUE) %>%
  filter_activity("Covered?", reverse= TRUE) %>%
  filter_activity("Franchise?", reverse= TRUE) %>%
  filter_activity("Acceptance Decision", reverse= TRUE) %>%
  filter_activity("Reject Claim", reverse= TRUE) %>%
  process_map()

# Process map actividades principales
claims2021 %>%
  filter_activity("File Claim", reverse= TRUE) %>%
  filter_activity("Check Contract", reverse= TRUE) %>%
  filter_activity("Covered?", reverse= TRUE) %>%
  filter_activity("Franchise?", reverse= TRUE) %>%
  filter_activity("Receive Conclusion Lawyer", reverse= TRUE) %>%
  filter_activity("Appoint Lawyer", reverse= TRUE) %>%
  filter_activity("Appoint Expert", reverse= TRUE) %>%#
  filter_activity("Receive Conclusion Expert", reverse= TRUE) %>%
  filter_activity("Pay Back Decision", reverse= TRUE) %>%
  process_map() 
