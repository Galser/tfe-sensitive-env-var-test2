resource "null_resource" "check_env_var" {
  provisioner "local-exec" {
    command = "echo Here it is : $SENSITIVE_ENVIRONMENT_VARIABLE "
  }
}
