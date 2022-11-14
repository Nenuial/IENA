library(googledrive)

drive_auth(path = ".secrets/equievents-368612-5bb2b3c9038e.json")

drive_ls("Concours/IENA") |> 
  purrr::pwalk(~drive_download(..2, path = paste0("data/", ..1), overwrite = T))
