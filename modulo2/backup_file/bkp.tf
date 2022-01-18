terraform {
  required_providers {
    archive = {
      source = "hashicorp/archive"
    }
    random = {
      source = "hashicorp/random"
    }
  }
}

resource "random_string" "random" {
  length  = 5
  special = false
  //override_special = "/@£$"
}

output "random_string" {
  value = random_string.random.result

}

data "archive_file" "backup_filezip" {
  type        = "zip"
  source_dir  = "bkp"
  output_path = random_string.random.result
}

output "backup_filezip" {
  value = data.archive_file.backup_filezip.output_size
}

