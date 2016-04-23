{% if grains['os_family'] == 'Debian' %}
ssh:
  service.running:
    - enable: True
{% elif grains['os_family'] == 'RedHat' %}
sshd:
  service.running:
    - enable: True
{% endif %}
