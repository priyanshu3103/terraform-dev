variable "sns_topic_name" {
  description = "The name of the SNS topic"
  type        = string
}
variable "tags" {
  description = "Tags for SNS topic"
  type        = map(string)
  default     = {}
}
variable "sns_topic_arn" {
  description = "SNS topic ARN"
  type        = string
}
variable "events" {
  description = "S3 events to trigger"
  type        = list(string)
  default     = ["s3:ObjectCreated:*"]
}
variable "filter_prefix" {
  description = "S3 object key prefix filter"
  type        = string
  default     = null
}

variable "filter_suffix" {
  description = "S3 object key suffix filter"
  type        = string
  default     = null
}