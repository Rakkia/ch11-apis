
### API Practice ###

## Load the httr and jsonlite libraries for accessing data
library("httr")
library("jsonlite")

# What is the name of the first pokemon?
base.url <- "http://pokeapi.co/api/v2/pokemon/1"
response <- GET(base.url)
body <- content(response, "text")
results <- fromJSON(body)
result <- results$name
# What is pikachu's ID number?
base.url <- "http://pokeapi.co/api/v2/pokemon/pikachu"
response <- GET(base.url)
body <- content(response, "text")
results <- fromJSON(body)
pikachu <- results$id

# What is the size of the "cheri" berry?
base.url <-"http://pokeapi.co/api/v2/berry/cheri"
response <- GET(base.url)
body <- content(response, "text")
results <- fromJSON(body)
cheri <- results$size
# How many pokemon are in the cave habitat?
