# this is the setup for the 'base' environment as defined in the master config
#file_roots:
#  base:
#    - /srv/salt
#        - addusers# apply addusers.sls to all hosts

# use the base environment
base:
    # reference all hosts
    'kernel:Linux':
        - match: grain
        - install
        - adduser
        - services
        - suid

    'salt2':
        - nginx

    'os:Windows':
        - match: grain
        - rdp.service
