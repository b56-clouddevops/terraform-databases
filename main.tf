# module "docdb" {
#   source               = "./vendor/modules/docdb"

#   ENV                  = var.ENV
#   DOCDB_PORT           = var.DOCDB_PORT
#   DOCDB_INSTANCE_TYPE  = var.DOCDB_INSTANCE_TYPE
#   DOCDB_INSTANCE_COUNT = var.DOCDB_INSTANCE_COUNT
#   DOCDB_ENGINE         = var.DOCDB_ENGINE
# }

module "mysql" {
  source                = "./vendor/modules/mysql"

  ENV                   = var.ENV
  MYSQL_PORT            = var.MYSQL_PORT
  MYSQL_STORAGE         = var.MYSQL_STORAGE
  MYSQL_ENGINE          = var.MYSQL_ENGINE
  MYSQL_FAMILY          = var.MYSQL_FAMILY
  MYSQL_ENGINE_VERSION  = var.MYSQL_ENGINE_VERSION
  MYSQL_ENGINE_TYPE     = var.MYSQL_ENGINE_TYPE
}


module "redis" {
  source               = "./vendor/modules/elasticcache"

  ENV                  = var.ENV
  REDIS_PORT           = var.REDIS_PORT
  REDIS_ENGINE         = var.REDIS_ENGINE
  REDIS_ENGINE_FAMILY  = var.REDIS_ENGINE_FAMILY
  REDIS_ENGINE_VERSION = var.REDIS_ENGINE_VERSION
  REDIS_INSTANCE_COUNT = var.REDIS_INSTANCE_COUNT
}

module "rabbitmq" {
  source                 = "./vendor/modules/rabbitmq"

  ENV                    = var.ENV
  RABBITMQ_PORT_NUMBER   = var.RABBITMQ_PORT_NUMBER
  RABBITMQ_INSTANCE_TYPE = var.RABBITMQ_INSTANCE_TYPE
}

output "redis_op" {
  value = module.redis.redis_op
}

# We cannot parametrize anything that's added n the source.
# To limit that, we can use a tool called as Terrafile. All it does is clonnes the remote code from the specified branch and make it locally available.