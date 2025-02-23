variable "newrelic_ingest" {
  description = "New Relic Ingest Key"
  type        = string
  sensitive   = true
}

variable "newrelic_account" {
  description = "New Relic Account ID"
  type        = number
}
