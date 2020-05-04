variable "node_termination_handler_version" {
  description = "The metrics-server version to use. See https://github.com/aws/aws-node-termination-handler/releases for available versions"
  type        = string
  default     = "1.3.1"
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

variable "k8s_pod_annotations" {
  description = "Additional annotations to be added to the Pods."
  type        = map(string)
  default     = {}
}

variable "k8s_node_selector" {
  description = "Node selector to make sure that the node termination handler only runs on spot instances."
  type        = map(string)
  default = {
    "kubernetes.io/lifecycle" = "spot"
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
      key      = "kubernetes.io/lifecycle"
      operator = "Equal"
      value    = "spot"
    }
  ]
}
