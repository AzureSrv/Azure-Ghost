FROM ghost:alpine
WORKDIR /var/lib/ghost

# add labels
LABEL org.opencontainers.image.authors="me@azureagst.dev"
LABEL org.opencontainers.image.source="https://github.com/AzureSrv/posts-ghost"

# install amazon s3 driver
RUN npm install ghost-s3-compat \
    && mkdir -p content/storage \
    && cp -vr node_modules/ghost-s3-compat content/storage/ghost-s3-compat
