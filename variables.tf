variable "magic_network_monitoring_rules" {
  description = <<EOT
Map of magic_network_monitoring_rules, attributes below
Required:
    - account_id
    - automatic_advertisement
    - name
    - prefixes
    - type
Optional:
    - bandwidth_threshold
    - duration
    - packet_threshold
    - prefix_match
    - zscore_sensitivity
    - zscore_target
EOT

  type = map(object({
    account_id              = string
    automatic_advertisement = bool
    name                    = string
    prefixes                = list(string)
    type                    = string
    bandwidth_threshold     = optional(number)
    duration                = optional(string)
    packet_threshold        = optional(number)
    prefix_match            = optional(string)
    zscore_sensitivity      = optional(string)
    zscore_target           = optional(string)
  }))
}

