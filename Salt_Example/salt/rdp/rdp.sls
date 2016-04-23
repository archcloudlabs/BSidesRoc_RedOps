# -*- coding: utf-8 -*-
# vim: ft=sls
{##
  Import settings from map.jinja
##}
{% from slspath ~ '/map.jinja' import rdp with context %}
{% import_yaml slspath ~ '/lookup.yml' as lookup %}

rdp-config:
  rdp.{{ lookup.rdp.get(rdp.enabled) }}
