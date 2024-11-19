ARG UBUNTU_VERSION=latest
FROM ubuntu:${UBUNTU_VERSION}

ARG INSTALL_SCRIPT=install-srsran-4g.sh

COPY ${INSTALL_SCRIPT} /opt/install-srsran-4g.sh
RUN chmod +x /opt/install-srsran-4g.sh
RUN /opt/install-srsran-4g.sh

COPY data/epc.conf data/enb.conf data/user_db.csv data/ue.conf /root/.config/srsran/
