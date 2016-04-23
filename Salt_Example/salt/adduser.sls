# http://serverfault.com/questions/538218/deploy-ssh-key-from-master-to-minion-via-salt-pillars
{% for name in ['alice','bill','trudy','test'] %}
user_{{name}}:
  group.present:
    - name: {{name}}

  user.present:
    - name: {{name}}
#    - shell: /bin/bash
    - groups: 
      - {{name}}
    - require:
      - group: {{name}}

  file.directory:
    - name: /home/{{name}}
    - user: {{name}}
    - group: {{name}}
    - mode: 0751
    - makedirs: True
    - require:
      - user: {{name}}

user_{{name}}_sshdir:
  file.directory:
    - name: /home/{{name}}/.ssh
    - user: {{name}}
    - group: {{name}}
    - mode: 0700
    - require:
      - user: {{name}}

user_{{name}}_sshpriv:
  file.managed:
    - name: /home/{{name}}/.ssh/authorized_keys
    - user: {{name}}
    - group: {{name}}
    - mode: 0600
    #- contents: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCoY1rTWCnfpqjGVHXQuzB4+lTLPpFCfdOrtylNnSp2rfOPBAIBaARllx2pRD8G1tkWrCEI046L5M6d8NXp2j5FDc3bf3dDlS2Fmxch5OaP05znJUuuaVzgTPvsjqKAYN9ZvPETSmyJ0aGp1/2pWMDb0AiblL8HqVlcbHFqeaJCStd7jBqC3y3HWft5FD3NZTPCfU3uLC9AKgcRvSGSZlunxNqgI1irUPF+AIPQKDs6OcGKBpBnqo4rZU5bvqU8vNIHkp4S0n2ttSlDYoWLcGDEvAx5KGpe2ZRCGaOviB1BcIgEAOfpd52kBkbbR0N1XAdUChx3wuQhqQMLxHgDPnB3
    - contents: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDA5Wya/rdpGhYPZ5V/pNEChcwVBeRuwXcOefPJoCXK9WHAv1M9BCMG3yFO12OlMiKlKbCIByqMCgBQW8dDYH6+oc6f/K9s85emsqoRPWdzt+lLJg30cLhWJQojxB1ZaPhTu1/QXksaYOe/a8u+NqwJCh/+tQTKgNeZ9xNJALSRR3p+KhuhQuECahwSbhFmouokHKZY02fgiBxeL3Oeu0klWebKkM/fImKoPawAykUZLuJmgWX9wKAhuns/xUmdrKmVMqjb+nWXocrog3tEu8KtrpzIB2lGRZ/XPMOgbUyc2FiomLouSP1SPbXnsciya5WOoGj18IcyqH1Bvq9X3BFEY8R56aOTu0wa30mBSrsithSYqWemjTGNutN4ZPz7zOnzPszjt95C2rb4ukVnJgMUCQAFwsXCgMGkurmwEbr+9eVm9wQeOXInmAUGxgUOPgFFWTjT2/CbzQsM/K4Zr+1TwAtSIlxWVPTaP1tf7Hv1bSXP6+9i5fkAmAdicRXS0Re8pd7MSZ8vyPE49QPB1lqcSH1z3n3Cat3XfHhZbfaVR2cxJLm0T+kJFUFGlz9J3vvkZKk00lL36Ed2v1s4DYKTY4U1wATXJ71MCEZl0ZV+7qGQlKPpsOOG7IAlb5dWmKdHeMLYKK1Q6sGuK6X9J8DVNCrMkNfrApiFPP7GMF84Fw==
    - require:
      - user: {{name}}

{% endfor %}
