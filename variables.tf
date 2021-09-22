variable "summer_expression" {
  description = "The cron expression of when to trigger lambda in the summer. Default is last Sunday of March at 01:00 UTC."
  default = "cron(0 1 ? 3 1L *)"
}

variable "winter_expression" {
  description = "The cron expression of when to trigger lambda in the winter. Default is last Sunday of October at 02:00 UTC."
  default = "cron(0 2 ? 10 1L *)"
}

variable "trigger_tag" {
  description = "The name of the tag key to trigger the lambda to convert the cron expression."
  default = "LocalTime"
}

variable "custom_lambda_name" {
  description = "Custom name for the lambda function."
  default = ""
}

variable "cloudwatch_log_retention_days" {
  description = "Retention in days for cloudwatch logs."
  default = 14
}

variable "disable_put_events" {
  description = "Toggle to disable triggering the lambda for PutRule & Tag events throughout the year."
  default = false
}

variable "tags" {
  type = map(string)
  default = {}
}
