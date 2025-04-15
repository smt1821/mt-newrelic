# Provision an email notification channel.
resource "newrelic_alert_channel" "email_channel" {
  name = "email-example"
  type = "email"

  config {
    recipients              = "mr.evros@gmail.com"
    include_json_attachment = "1"
  }
}