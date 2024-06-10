variable "dynamodb_table" {
  description = "The name of the DynamoDB table"
  type        = string
  default     = "example-table"
}

variable "read_capacity" {
  description = "Read capacity for the table"
  type        = number
  default     = 20
}

variable "write_capacity" {
  description = "Write capacity for the table"
  type        = number
  default     = 20
}
