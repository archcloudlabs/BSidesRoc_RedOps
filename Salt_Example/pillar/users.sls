# put this line in the top of a salt state file
# {% for user in pillar['users'] %}
users:

  - name: fred
    fullname: Fred Flintstone
    email: fflintstone@slaterockandgravel.com
    shell: /bin/bash
    uid: 4001
    gid: 4001
    groups:
      {% if grains['os_family'] == 'Debian' %}
      - sudo
      {% elif grains['os_family'] == 'RedHat' %}
      - wheel
      {% else %}
      - root
    #shadow: $6$Sasdf/Ss$asdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfsadfasdfsadfsadfsdf
    authkey: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCoY1rTWCnfpqjGVHXQuzB4+lTLPpFCfdOrtylNnSp2rfOPBAIBaARllx2pRD8G1tkWrCEI046L5M6d8NXp2j5FDc3bf3dDlS2Fmxch5OaP05znJUuuaVzgTPvsjqKAYN9ZvPETSmyJ0aGp1/2pWMDb0AiblL8HqVlcbHFqeaJCStd7jBqC3y3HWft5FD3NZTPCfU3uLC9AKgcRvSGSZlunxNqgI1irUPF+AIPQKDs6OcGKBpBnqo4rZU5bvqU8vNIHkp4S0n2ttSlDYoWLcGDEvAx5KGpe2ZRCGaOviB1BcIgEAOfpd52kBkbbR0N1XAdUChx3wuQhqQMLxHgDPnB3
    sshpub: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCoY1rTWCnfpqjGVHXQuzB4+lTLPpFCfdOrtylNnSp2rfOPBAIBaARllx2pRD8G1tkWrCEI046L5M6d8NXp2j5FDc3bf3dDlS2Fmxch5OaP05znJUuuaVzgTPvsjqKAYN9ZvPETSmyJ0aGp1/2pWMDb0AiblL8HqVlcbHFqeaJCStd7jBqC3y3HWft5FD3NZTPCfU3uLC9AKgcRvSGSZlunxNqgI1irUPF+AIPQKDs6OcGKBpBnqo4rZU5bvqU8vNIHkp4S0n2ttSlDYoWLcGDEvAx5KGpe2ZRCGaOviB1BcIgEAOfpd52kBkbbR0N1XAdUChx3wuQhqQMLxHgDPnB3

  - name: barney
    fullname: Barney Rubble
    email: brubbel@slaterockandgravel.com
    shell: /bin/bash
    uid: 4002
    gid: 4002
    groups:
      {% if grains['os_family'] == 'Debian' %}
      - sudo
      {% elif grains['os_family'] == 'RedHat' %}
      - wheel
      {% else %}
      - root
    #shadow: $6$Suiop/Ss$uiopuiopuiopuiopuiopuiopuiopuiopuiopuiopuiopsadfuiopsadfsadfsdf
    authkey: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCoY1rTWCnfpqjGVHXQuzB4+lTLPpFCfdOrtylNnSp2rfOPBAIBaARllx2pRD8G1tkWrCEI046L5M6d8NXp2j5FDc3bf3dDlS2Fmxch5OaP05znJUuuaVzgTPvsjqKAYN9ZvPETSmyJ0aGp1/2pWMDb0AiblL8HqVlcbHFqeaJCStd7jBqC3y3HWft5FD3NZTPCfU3uLC9AKgcRvSGSZlunxNqgI1irUPF+AIPQKDs6OcGKBpBnqo4rZU5bvqU8vNIHkp4S0n2ttSlDYoWLcGDEvAx5KGpe2ZRCGaOviB1BcIgEAOfpd52kBkbbR0N1XAdUChx3wuQhqQMLxHgDPnB3
    sshpub: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCoY1rTWCnfpqjGVHXQuzB4+lTLPpFCfdOrtylNnSp2rfOPBAIBaARllx2pRD8G1tkWrCEI046L5M6d8NXp2j5FDc3bf3dDlS2Fmxch5OaP05znJUuuaVzgTPvsjqKAYN9ZvPETSmyJ0aGp1/2pWMDb0AiblL8HqVlcbHFqeaJCStd7jBqC3y3HWft5FD3NZTPCfU3uLC9AKgcRvSGSZlunxNqgI1irUPF+AIPQKDs6OcGKBpBnqo4rZU5bvqU8vNIHkp4S0n2ttSlDYoWLcGDEvAx5KGpe2ZRCGaOviB1BcIgEAOfpd52kBkbbR0N1XAdUChx3wuQhqQMLxHgDPnB3

