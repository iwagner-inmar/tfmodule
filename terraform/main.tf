


module "namespace_name" {
    source = "../modules/namespace"

    # You can also use a git url for the source so you can
    # pin to specific tags of the module
    # See https://www.terraform.io/docs/modules/sources.html
    # source = "git@github.com:iwagner-inmar/tfmodule.git/modules//namespace?ref=1.0"

    cluster_region = "east"
    cluster_id = "001"
    consumer_id = "pai"
    cluster_env = "prod"
}

resource "local_file" "my_template" {
    content     = "Hello World! Namespace var is: ${module.namespace_name.hyphen_separated}\n\n"
    filename = "${path.module}/myoutput.txt"
}

