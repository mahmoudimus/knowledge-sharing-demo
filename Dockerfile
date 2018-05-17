FROM python:3-alpine

# install console and node
RUN apk update &&\
    apk add --no-cache \
        bash \
        socat && \
    mkdir -p /opt/app

# install pip ( in separate dir due to docker cache)
ADD setup.py /opt/app
RUN cd /opt/app && pip install -e .

WORKDIR /opt/app/src
ADD  . /opt/app/src
VOLUME /opt/app/src

# this is for virtual host purposes
EXPOSE 3000
CMD ["bash"]
