terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
      version = "~> 3.0"
    }
  }
}

provider "newrelic" {
  account_id = 3737312
  api_key    = var.newrelic_ingest
  
  region     = "US"
}
