FROM alpine:edge
RUN echo "http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories 
RUN apk update
RUN apk add --update iojs py-pip build-base python-dev py-boto && rm -rf /var/cache/apk/**/
RUN pip install awscli ansible
WORKDIR /root
ENV PATH /root/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN ln -s /dev/null /root/.ash_history
COPY . /root

CMD ["/root/bin/deploy.js"]
