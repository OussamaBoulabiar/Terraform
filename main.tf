resource "aws_dynamodb_table" "dynamodb-table" {
  name           = var.dynamodb_table
  billing_mode   = "PROVISIONED"
  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity
  hash_key       = "Id"

  attribute {
    name = "Id"
    type = "S"
  }

  attribute {
    name = "GameTitle"
    type = "S"
  }

  attribute {
    name = "TopScore"
    type = "N"
  }

  global_secondary_index {
    name            = "GameTitleIndex"
    hash_key        = "GameTitle"
    range_key       = "TopScore"
    write_capacity  = var.write_capacity
    read_capacity   = var.read_capacity
    projection_type = "ALL"
  }

  tags = {
    Name        = var.dynamodb_table
    Environment = "production"
  }
}
