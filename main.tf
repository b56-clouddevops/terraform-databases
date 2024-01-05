module "docdb" {
  source              = "./vendor/modules/docdb"

  ENV                 = var.ENV
  DOCDB_PORT          = var.DOCDB_PORT
}



# We cannot parametrize anything that's added n the source.
# To limit that, we can use a tool called as Terrafile. All it does is clonnes the remote code from the specified branch and make it locally available.