
#chokoooooooooooooooooo
resource "aws_dynamodb_table" "Personne" {
  name           = var.PersonneTableName
  hash_key       = var.PersonneHashKey

  attribute {
    name = var.PersonneHashKey
    type = "S"  # String type
  }
 

  # Optionally, define other attributes, global secondary indexes, local secondary indexes, etc.
  
  billing_mode   = "PAY_PER_REQUEST"  # Example billing mode
}

#terraform init : initialisation de projet ::initialisation des plaging // creation d'env de travail //
#terraform validate : validé le code syntaxiquement t
# terraform plan : analyse du code // detection des chang //