library(googledrive)

options(
  gargle_oauth_cache = "~/.secrets/drive",
  gargle_oauth_email = "pascal.burkhard@gmail.com",
  gargle_verbosity = "debug"
)

drive_auth(cache = "~/.secrets/drive")

drive_ls("Concours/IENA") |> 
  purrr::pwalk(~drive_download(..2, path = paste0("data/", ..1), overwrite = T))
