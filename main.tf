terraform {
  required_providers {
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = "0.25.17"
    }
  }

  backend "remote" {
    organization = "AgilliticsLLC"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}

provider "snowflake" {
}

resource "snowflake_database" "demo_db" {
  name    = "DEMO_DB"
  comment = "Database for Snowflake Terraform demo"
}

resource "snowflake_database" "zafir_db" {
  name    = "zafir_db"
  comment = "Database for Snowflake Terraform demo"
}

resource "snowflake_database" "morgan_db" {
  name    = "morgan_db"
  comment = "Database for Snowflake Terraform demo"
}

resource "snowflake_database" "kelton" {
  name    = "KELTON"
  comment = "Database for Snowflake Terraform demo"
}

resource "snowflake_database" "cupcake" {
  name    = "cupcake"
  comment = "Database for Snowflake Terraform demo"
}

resource "snowflake_database" "donut" {
  name    = "donut"
  comment = "Database for Snowflake Terraform demo"
}