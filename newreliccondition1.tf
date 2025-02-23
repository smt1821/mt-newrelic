resource "newrelic_nrql_alert_condition" "pod_restarts" {
  account_id = 3737312
  policy_id = 868940
  type = "static"
  name = "Pod Restarts"
  enabled = true
  violation_time_limit_seconds = 259200

  nrql {
    query = "SELECT  derivative(k8s.container.restartCount , 2 minute) / latest(k8s.deployment.podsDesired) FROM Metric"
    data_account_id = 3737312
  }

  critical {
    operator = "above"
    threshold = 1
    threshold_duration = 300
    threshold_occurrences = "all"
  }
  fill_option = "none"
  aggregation_window = 60
  aggregation_method = "event_flow"
  aggregation_delay = 120
}
