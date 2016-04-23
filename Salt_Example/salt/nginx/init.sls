nginx:
  pkg.installed: []
  service.running:
    - require:
      - pkg: nginx
