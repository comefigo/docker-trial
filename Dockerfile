FROM amazonlinux:latest

# update all
RUN yum update -y

# install git
RUN yum install -y git

# install latest pip
RUN curl https://bootstrap.pypa.io/get-pip.py | python

# install python libs for use aws api, ansible
RUN pip install boto boto3 awscli ansible==2.5.5

# install ansible dev version
# RUN pip install git+https://github.com/ansible/ansible.git@devel

# add ansible config
ADD ./ansible/ansible.cfg /root/.ansible.cfg

# install initscripts for user /sbin/init
RUN yum install -y initscripts

# copy ssh keys
ADD ./ansible/keys/ /root/.ssh/
RUN chmod 700 /root/.ssh
RUN chmod 600 /root/.ssh/*

# change work dir
RUN mkdir /ansible
WORKDIR /ansible

CMD ["/sbin/init", "-D"]