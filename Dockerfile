FROM openresty/openresty:alpine-fat
LABEL author="1141591465@qq.com"
COPY gor_0.16.1_x64.tar.gz .
RUN  apk add --update &&  apk add --no-cache tini  \
    && tar xzf gor_0.16.1_x64.tar.gz -C /usr/local/bin \
    && rm gor_0.16.1_x64.tar.gz 
ENV PATH=$PATH:/usr/local/bin
ADD entrypoint.sh /entrypoint.sh
ADD goreplay.sh /goreplay.sh
ENTRYPOINT ["/sbin/tini","-s", "--", "/entrypoint.sh"]