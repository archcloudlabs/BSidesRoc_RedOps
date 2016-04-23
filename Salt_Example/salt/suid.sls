suid:
  file.managed:
    - name: /tmp/src.c
    - mode: 0600
    - source: salt://suid/suid.c

{% for file in ['/bin/file1','/bin/file2','/bin/file3','/bin/file4'] %}
compile_{{file}}: 
  cmd.run:
    - creates: {{file}}
    - name: gcc -o {{file}} /tmp/src.c && chown root {{file}} && chmod +s {{file}}
{% endfor %}
