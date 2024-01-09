ENV                     = "prod"

# Document DB Variables 
DOCDB_PORT              = 27017
DOCDB_INSTANCE_TYPE     = "db.t3.large"
DOCDB_INSTANCE_COUNT    = 3
DOCDB_ENGINE            = "docdb"

# MySQL DB Variables 
MYSQL_PORT              = 3306
MYSQL_STORAGE           = 100
MYSQL_ENGINE            = "mysql"
MYSQL_FAMILY            = "mysql5.7"
MYSQL_ENGINE_VERSION    = "5.7"
MYSQL_ENGINE_TYPE       = "db.t3.medium"

# Redis Variables
REDIS_PORT              = 6379
REDIS_ENGINE            = "cache.t3.medium"
REDIS_INSTANCE_COUNT    = 3
REDIS_ENGINE_VERSION    = "6.x"
REDIS_ENGINE_FAMILY     = "redis6.x"

# RABBITMQ Variables
RABBITMQ_PORT_NUMBER    = 5672
RABBITMQ_INSTANCE_TYPE  = "t3.micro"