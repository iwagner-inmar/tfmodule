

variable cluster_id {}
variable consumer_id {}
variable cluster_env {}
variable cluster_region {}


output "hyphen_separated" {
    value = "${var.cluster_region}-${var.cluster_env}-${var.cluster_id}-${var.consumer_id}"
}