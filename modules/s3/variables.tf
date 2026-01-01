variable "bucket_name" {
  type        = string
  description = "S3 bucket name"
}

variable "versioning" {
  type        = bool
  default     = true
}

variable "tags" {
  type        = map(string)
  default     = {}
}