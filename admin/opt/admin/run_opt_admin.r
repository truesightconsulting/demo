setwd("d:\\Archives\\Git\\demo\\admin\\opt\\admin\\")
suppressMessages(suppressWarnings(library(RMySQL)))
# True generate db version files, F generates flat file version files
db.usage=T
# True is to staging DB and F is to production DB
is.staging=F 
# DB server info
db.server="127.0.0.1"
db.name="nviz"
port=3306
if (is.staging){
  username="root"
  password="bitnami"
}else{
  username="Zkdz408R6hll"
  password="XH3RoKdopf12L4BJbqXTtD2yESgwL$fGd(juW)ed"
}
main.path="d:\\Archives\\Git\\opt-admin\\" # opt files path
season.var=0.8  # from 0 to 1


if (db.usage) conn <- dbConnect(MySQL(),user=username, password=password,dbname=db.name, host=db.server)
source(paste(main.path,"adm_main.r",sep=""),local=T)
if (db.usage) dbDisconnect(conn)
