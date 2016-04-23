# -*- coding: utf-8 -*-
# vim: ft=sls
{##
  Import settings from map.jinja
##}
{% from slspath ~ '/map.jinja' import rdp with context %}
{% import_yaml slspath ~ '/lookup.yml' as lookup %}
{% set reg_rdp = 'HKLM\\SYSTEM\\CurrentControlSet\\Control\\Terminal Server\\WinStations\\RDP-Tcp\\' %}

{##
  Control the Network Level Authentication setting.
  Reference
    https://en.wikipedia.org/wiki/Network_Level_Authentication
##}
rdp-nla-registry:
  reg.present:
    - name: {{ reg_rdp }}
    - vname: UserAuthentication
    - vdata: {{ lookup.registry.get(rdp.nla_enabled) }}
    - vtype: REG_DWORD
    - reflection: False

{##
  Changing the TCP port number requires a system restart. 
  Reference
    https://support2.microsoft.com/default.aspx?scid=kb;en-us;306759
##}
rdp-port-registry:
  reg.present:
    - name: {{ reg_rdp }}
    - vname: PortNumber
    - vdata: {{ rdp.tcp_port }}
    - vtype: REG_DWORD
    - reflection: False

