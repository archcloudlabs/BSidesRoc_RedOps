{% if grains['kernel'] == 'Linux' %}
# install gcc
gcc:
  pkg:
    - installed
{% endif %}

# install vim
{% if grains['os_family'] == 'Debian' %}
vim:
  pkg:
    - installed
{% elif grains['os_family'] == 'RedHat' %}
vim-enhanced:
  pkg:
    - installed
{% endif %}

