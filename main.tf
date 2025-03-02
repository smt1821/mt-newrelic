resource "newrelic_alert_policy" "cpu_alert_policy" {
  name                = "CPU Usage Policy"
  incident_preference = "PER_POLICY"  # Options: PER_POLICY, PER_CONDITION, PER_CONDITION_AND_TARGET
}
