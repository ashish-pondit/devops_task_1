FROM bitnami/git

WORKDIR /usr/src/app

COPY . .

CMD [ "./main.sh" ]