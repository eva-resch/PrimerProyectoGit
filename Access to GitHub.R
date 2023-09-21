# -----------------------------------------------------------------------------
# GitHub
# -----------------------------------------------------------------------------

# install.packages("usethis")
# Paso 1: definir el token
usethis::create_github_token()
gitcreds::gitcreds_set()

# Token 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

# Paso 2: usar el token para el acceso a GitHub
usethis::use_github()
