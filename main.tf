resource "cloudflare_magic_network_monitoring_rule" "magic_network_monitoring_rules" {
  for_each = var.magic_network_monitoring_rules

  account_id              = each.value.account_id
  automatic_advertisement = each.value.automatic_advertisement
  name                    = each.value.name
  prefixes                = each.value.prefixes
  type                    = each.value.type
  bandwidth_threshold     = each.value.bandwidth_threshold
  duration                = each.value.duration
  packet_threshold        = each.value.packet_threshold
  prefix_match            = each.value.prefix_match
  zscore_sensitivity      = each.value.zscore_sensitivity
  zscore_target           = each.value.zscore_target
}

