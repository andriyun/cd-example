FROM nginx

RUN set -eux; \
    apt update; \
    apt install -qq -y \
    markdown \
    && rm -rf /var/lib/apt/lists/*

COPY README.md ./

RUN markdown README.md > /usr/share/nginx/html/index.html
