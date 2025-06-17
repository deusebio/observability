output "offers" {
  value = {
    alertmanager_karma_dashboard = juju_offer.alertmanager-karma-dashboard
    grafana_dashboards           = juju_offer.grafana-dashboards
    loki_logging                 = juju_offer.loki-logging
    prometheus                   = juju_offer.prometheus-receive-remote-write
  }
}

# -------------- # Sub-modules -------------- #

output "components" {
  value = {
    alertmanager  = module.alertmanager
    catalogue     = module.catalogue
    grafana       = module.grafana
    prometheus    = module.prometheus,
    loki          = module.loki
    ssc           = module.ssc
    traefik       = module.traefik
  }
}
