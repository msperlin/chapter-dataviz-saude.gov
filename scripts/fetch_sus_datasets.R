library(dplyr)

#remotes::install_github("rfsaldanha/microdatasus")
df_sus_raw <- microdatasus::fetch_datasus(year_start = 2015, 
                                          year_end = 2019, 
                                          uf = "RJ", 
                                          information_system = "SIM-DO")

df_processed <- df_sus_raw |>
  microdatasus::process_sim() 

df_sus <- df_processed  |>
  select(DTOBITO, 
         #HORAOBITO, 
         #NATURAL, 
         DTNASC, SEXO, 
         #ESC, 
         OCUP, munResNome) |>
  mutate(DTOBITO = as.Date(DTOBITO), 
         #HORAOBITO = as.numeric(HORAOBITO),
         #IDADEMAE = as.numeric(IDADEMAE),
         DTNASC = as.Date(DTNASC),
         idade_obito = as.numeric(DTOBITO - DTNASC)/365)

glimpse(df_sus)

plot(sort(table(df_sus$HORAOBITO)))

modelsummary::datasummary_skim(df_sus)

arrow::write_parquet(df_sus, 'data/SUS-Data.parquet')
