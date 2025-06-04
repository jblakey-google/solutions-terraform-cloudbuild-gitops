terraform {
  backend "gcs" {
    bucket = "798656365078-jblakey-iac-codelab-tfstate"
    prefix = "env/dev"
  }
}
