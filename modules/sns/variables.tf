variable "sns_topic_name" {
  description = "The name of the SNS topic"
  type        = string
}
variable "tags" {
  description = "Tags for SNS topic"
  type        = map(string)
  default     = {}
}