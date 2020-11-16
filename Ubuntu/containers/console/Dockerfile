FROM ubuntu

RUN groupdel dialout

RUN useradd -m -U -s /bin/bash hostuser


ENTRYPOINT ["entrypoint.sh"]
