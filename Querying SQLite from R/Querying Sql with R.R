install.packages("DBI")

library(RSQLite)
library(DBI)
#connecting to the database
conn <- dbConnect(SQLite(),"jobs.db")
tables <- dbListTables(conn)
conn
#Running queries with our connection
query <- "SELECT * from recent_grads"
result <- dbGetQuery(conn, query)
result

query <- "SELECT Major from recent_grads"
majors <- dbGetQuery(conn, query)

majors

#Fetching a subset of results with dbFetch()
query <- "SELECT Major from recent_grads"
result <- dbSendQuery(conn, query)
majors <- dbFetch(result)


query <- "SELECT Major from recent_grads"
result <- dbSendQuery(conn, query)
majors <- dbFetch(result, n = 10)
majors

query <- "SELECT Major, Major_category from recent_grads"
result <- dbSendQuery(conn, query)
five_results <- dbFetch(result, n = 5)
five_results

# Cleaning up after ourselves
dbClearResult(result)

query <- "SELECT Major from recent_grads order by 1 desc"
result <- dbSendQuery(conn, query)
five_results <- dbFetch(result, n = 5)
five_results
