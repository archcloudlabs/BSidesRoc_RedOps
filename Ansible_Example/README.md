#### Ansible & Speed
* Q) How do I make ansible go faster?
* A) If you have a large number of nodes you're running these playbooks against you can increase the number of forks via the command line or in your /etc/ansible/ansible.cfg file.
<br />

Command line Example:
```
    ansible-playbook -i hosts www thing_to_run.yml -f 10
```
