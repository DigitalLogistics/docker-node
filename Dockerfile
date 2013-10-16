# Base image that can run ansible playbooks.
#
# http://www.ansibleworks.com/

FROM localhost:5000/dlstartup/ansible
MAINTAINER Ben Ford <ben@dlstartup.com>

ADD playbook playbook
ADD docker_test.yml playbook/
RUN ansible-playbook playbook/docker_test.yml -v -c local
