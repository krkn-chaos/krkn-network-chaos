FROM fedora:latest
RUN dnf update -y && dnf install --setopt=install_weak_deps=False -y iproute-tc iproute iptables && dnf clean all



ENTRYPOINT ["/bin/bash", "sleep infinity"]