


module "namespace_name" {
    source = "../modules/namespace"
    cluster_region = "east"
    cluster_id = "001"
    consumer_id = "pai"
    cluster_env = "prod"
}

resource "local_file" "my_template" {
    content     = "Hello World! Namespace var is: ${module.namespace_name.hyphen_separated}\n\n"
    filename = "${path.module}/myoutput.txt"
}

