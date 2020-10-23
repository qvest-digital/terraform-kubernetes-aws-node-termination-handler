variable "node_termination_handler_version" {
  description = "The version to use. See https://github.com/aws/aws-node-termination-handler/releases for available versions"
  type        = string
  default     = "1.9.0"
}

variable "ignore_daemon_sets" {
  description = "If true, ignore daemon sets and drain other pods when a spot interrupt is received."
  type        = bool
  default     = true
}

variable "delete_local_data" {
  description = "If true, do not drain pods that are using local node storage in emptyDir."
  type        = bool
  default     = true
}

variable "node_termination_grace_period" {
  description = "Period of time in seconds given to each NODE to terminate gracefully. Node draining will be scheduled based on this value to optimize the amount of compute time, but still safely drain the node before an event."
  type        = string
  default     = "120"
}

variable "pod_termination_grace_period" {
  description = "Period of time in seconds given to each POD to terminate gracefully. If negative, the default value specified in the pod will be used."
  type        = string
  default     = "-1"
}

variable "webhook_url" {
  description = "If specified, posts event data to URL upon instance interruption action."
  type        = string
  default     = ""
}

variable "webhook_proxy" {
  description = "If specified, uses the HTTP(S) proxy to send webhooks."
  type        = string
  default     = ""
}

variable "webhook_headers" {
  description = "If specified, replaces the default webhook headers."
  type        = map(string)
  default = {
    "Content-type" = "application/json"
  }
}

variable "webhook_template" {
  description = "If specified, replaces the default webhook message template."
  type        = string
  default     = ""
}

variable "enable_scheduled_event_draining" {
  description = "If true, drain nodes before the maintenance window starts for an EC2 instance scheduled event."
  type        = bool
  default     = false
}

variable "enable_spot_interruption_draining" {
  description = "If true, drain nodes when the spot interruption termination notice is received."
  type        = bool
  default     = true
}

variable "metadata_tries" {
  description = "The number of times to try requesting metadata. If you would like 2 retries, set metadata-tries to 3."
  type        = number
  default     = 3
}

variable "cordon_only" {
  description = "If true, nodes will be cordoned but not drained when an interruption event occurs."
  type        = bool
  default     = false
}

variable "taint_node" {
  description = "If true, nodes will be tainted when an interruption event occurs."
  type        = bool
  default     = false
}

variable "json_logging" {
  description = "If true, use JSON-formatted logs instead of human readable logs."
  type        = bool
  default     = false
}

variable "enable_prometheus_server" {
  description = "Whether to enable a Prometheus endpoint that can be used to gather some metrics."
  type        = bool
  default     = false
}

variable "k8s_pod_annotations" {
  description = "Additional annotations to be added to the Pods."
  type        = map(string)
  default     = {}
}

variable "k8s_node_selector" {
  description = "Node selector to make sure that the node termination handler only runs on spot instances."
  type        = map(string)
  default = {
    "lifecycle" = "Ec2Spot"
  }
}

variable "k8s_node_tolerations" {
  description = "Additional tolerations required to run on spot instances within the cluster."
  type = list(object({
    effect   = string
    key      = string
    operator = string
    value    = string
  }))
  default = [
    {
      effect   = "NoSchedule"
      key      = "lifecycle"
      operator = "Equal"
      value    = "Ec2Spot"
    }
  ]
}
