# Ansible Automation setup Moodle and Dependency in Ubuntu Server
1. Pull or Clone This repository to Your Local Machine
2. Install Ansible in your local Machine
3. Make sure that ansible is running with command $ansible --verison
4. Edit file in Group_vars Directory and matches to your environment
5. Edit File vfg.j2 in directory templates
6. Edit file hosts, make sure it fits with your environment 
7. After that, you can running ansible with command $ ansible-playbook site.yml -i hosts