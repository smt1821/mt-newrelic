variable "newrelic_ingest" {
  type        = string
  description = "New Relic API key"
  sensitive   = true
}

variable "newrelic_account" {
  type        = number
  description = "New Relic Account ID"
}