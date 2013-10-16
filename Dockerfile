# Base image that can run ansible playbooks.
#
# http://www.ansibleworks.com/

FROM boothead/ansible
MAINTAINER Ben Ford <ben@dlstartup.com>

ADD playbook playbook
ADD docker_test.yml playbook/
ADD hosts hosts
RUN ansible-playbook -i hosts playbook/docker_test.yml -v -c local
