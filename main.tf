resource "null_resource" "check_env_var" {
  provisioner "local-exec" {
    command = "echo Here it is : $SENSITIVE_ENVIRONMENT_VARIABLE "
  }
}


resource "null_resource" "show_env_var_on_destroy" {
  when = destroy
  provisioner "local-exec" {
    command = "echo Destroy value : $SENSITIVE_ENVIRONMENT_VARIABLE "
  }
}
