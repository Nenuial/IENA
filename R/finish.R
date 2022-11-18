fs::file_copy("_site/actuel/Carré_A_live.html", "_site/actuel/Carré_B_live.html", overwrite = TRUE)
fs::dir_copy("_site", "www", overwrite = TRUE)