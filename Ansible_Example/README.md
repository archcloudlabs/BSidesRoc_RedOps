#### Ansible & Speed
* Q) How do I make ansible go faster?
* A) If you have a large number of nodes you're running these playbooks against you can increase the number of forks via the command line or in your /etc/ansible/ansible.cfg file.

<br />
Command line Example:
```
    ansible-playbook -i hosts www thing_to_run.yml -f 10
```

#### [Ansible Pipelining] (http://docs.ansible.com/ansible/intro_configuration.html#pipelining)
Pipelining reduces the number of SSH operations required per-module execution. If you're concerned with being the first onto a machine, you shoud look into this.
* Q) How do I enable it?
* A) /etc/ansible/ansible.cfg; set pipelining=true.
