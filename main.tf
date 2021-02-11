resource "helm_release" "deployment" {
  name       = "${var.helm_name}-${var.environment}"
  namespace  = var.namespace
  repository = var.repository
  chart      = var.chart_name

  create_namespace = var.create_namespace

  dynamic "set" {
    for_each = var.parameters
    content {
      name  = set.value.name
      value = set.value.value
    }
  }
}
