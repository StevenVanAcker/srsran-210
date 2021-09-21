ARG UBUNTU_VERSION=latest
FROM ubuntu:${UBUNTU_VERSION}

ARG INSTALL_SCRIPT=install-srsran.sh

COPY ${INSTALL_SCRIPT} /opt/install-srsran.sh
RUN chmod +x /opt/install-srsran.sh
RUN /opt/install-srsran.sh

COPY data/epc.conf data/enb.conf data/user_db.csv data/ue.conf /root/.config/srsran/
