FROM ubuntu

RUN groupdel dialout

COPY entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/entrypoint.sh

RUN useradd -m -U -s /bin/bash -p $(openssl passwd -1 "hostuser") hostuser

RUN usermod -a -G sudo hostuser


ENTRYPOINT ["entrypoint.sh"]
