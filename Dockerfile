FROM debian

RUN apt update -y && apt install -y gnupg curl
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - && apt install -y nodejs


ENTRYPOINT tail -F /dev/null