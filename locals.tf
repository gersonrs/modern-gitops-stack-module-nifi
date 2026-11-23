locals {
  domain      = format("nifi.%s", trimprefix("${var.subdomain}.${var.base_domain}", "."))
  domain_full = format("nifi.%s.%s", trimprefix("${var.subdomain}.${var.cluster_name}", "."), var.base_domain)

  helm_nifikop = [{
    nifikop = {
      image = {
        tag = "v1.7.0-release"
      }
      resources = {
        requests = {
          memory = "256Mi"
          cpu    = "250m"
        }
        limits = {
          memory = "256Mi"
          cpu    = "550m"
        }
      }
      namespaces = ["nifi"]
    }
  }]
  helm_values = [{
    nifi = {
      clusterName     = "simplenifi"
      clusterImage    = "apache/nifi:1.23.2"
      overrideConfigs = {}
      storageConfigs = [{
        name             = "logs"
        mountPath        = "/opt/nifi/nifi-current/logs"
        storageClassName = "standard"
        storage          = "10Gi"
      }]
      resourcesRequirements = {
        limits = {
          cpu    = 2
          memory = "2Gi"
        }
        requests = {
          cpu    = 1
          memory = "1Gi"
        }
      }
      nodes = [
        {
          id              = 1
          nodeConfigGroup = "default_group"
        },
        {
          id              = 2
          nodeConfigGroup = "default_group"
        }
      ]
      prometheus = {
        servicemonitor = {
          enabled = var.enable_service_monitor
        }
      }
      oidc = {
        enabled       = false
        url           = "${var.oidc.issuer_url}/.well-known/openid-configuration"
        client_id     = "${var.oidc.client_id}"
        client_secret = "${var.oidc.client_secret}"
      }
      # Exposure is handled by the HTTPRoute below, served by the Istio
      # gateway, so the chart's own Ingress stays disabled.
      ingress = {
        enabled = false
      }
    }
  }]

  helm_values_httproute = [{
    httproute = {
      enabled           = true
      host              = local.domain
      paths             = ["/nifi", "/nifi-api"]
      gateway_name      = var.gateway_name
      gateway_namespace = var.gateway_namespace
    }
  }]
}
