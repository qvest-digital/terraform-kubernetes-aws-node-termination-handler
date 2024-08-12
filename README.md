# Terraform module: AWS Node Termination Handler

This Terraform module can be used to install the [AWS Node Termination Handler](https://github.com/aws/aws-node-termination-handler)
into a Kubernetes cluster.

## Examples

### Default deployment

To deploy the aws-node-termination-handler into a Kubernetes cluster, the following
snippet might be used.

```hcl
module "aws_node_termination_handler" {
  source  = "qvest-digital/aws-node-termination-handler/kubernetes"
  version = "4.0.0"
}
```
