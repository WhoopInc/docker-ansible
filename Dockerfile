FROM debian:jessie
MAINTAINER Nathaniel Waisbrot <waisbrot@whoop.com>

ENV ANSIBLE_VERSION 1.9.3
ENV ANSIBLE_CONFIG /ansible.cfg

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends python python-pip python-crypto openssh-client sshpass && \
    pip install ansible==${ANSIBLE_VERSION} boto

ADD ansible.cfg run.sh /

ENTRYPOINT ["/run.sh"]
