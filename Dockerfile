FROM bitnami/git

ENV REPO=https://github.com/ohmyzsh/ohmyzsh.git
ENV N=20

WORKDIR /usr/src/app

COPY . .

CMD [ "./main.sh" ]