resource "null_resource" "check_env_var" {
  provisioner "local-exec" {
    command = "echo Here it is 3 - : $SENSITIVE_ENVIRONMENT_VARIABLE "
  }
}


resource "null_resource" "show_env_var_on_destroy" {
  provisioner "local-exec" {
    when = destroy
    command = "uname -a; echo Destroy value : $SENSITIVE_ENVIRONMENT_VARIABLE "
  }
}


