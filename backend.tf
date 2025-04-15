terraform {
  backend "remote" {
    organization = "merict1010"

    workspaces {
      name = "newrelic-alerts"
    }
  }
}
