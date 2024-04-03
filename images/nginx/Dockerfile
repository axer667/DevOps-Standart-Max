FROM nginx:1.23.3

COPY ./ssl.conf .

RUN openssl req \
    -x509 \
    -nodes \
    -days 1024 \
    -newkey rsa:2048 \
    -keyout localhost.key \
    -out localhost.crt \
    -config ssl.conf \
    -extensions 'v3_req'

RUN cp localhost.crt /etc/ssl/certs/localhost.crt
RUN cp localhost.key /etc/ssl/private/localhost.key

#RUN apt update
#RUN apt install libnss3-tools -y
#RUN apt install wget -y

#RUN wget https://github.com/FiloSottile/mkcert/releases/download/v1.4.3/mkcert-v1.4.3-linux-amd64
#RUN cp mkcert-v1.4.3-linux-amd64 /usr/local/bin/mkcert
#RUN chmod +x /usr/local/bin/mkcert

#RUN mkcert -install