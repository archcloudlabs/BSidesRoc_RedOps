# -*- coding: utf-8 -*-
# vim: ft=sls
{##
  Remote Desktop Services service.
##}
rdp-service:
  service.running:
    - name: TermService

{## 
  User Mode Port Redirector service.
##}
rdp-um-service:
  service.running:
    - name: UmRdpService

