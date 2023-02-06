
// Configure the AWS provider

provider "aws" {
   profile    = "${var.profile}"
   region     = "${var.region}"
}
