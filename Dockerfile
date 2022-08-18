FROM ghost:alpine
WORKDIR /var/lib/ghost

# add labels
LABEL org.opencontainers.image.authors="me@azureagst.dev"
LABEL org.opencontainers.image.source="https://github.com/AzureSrv/Azure-Ghost"

# install amazon s3 driver
RUN npm install ghost-storage-adapter-s3 \
    && mkdir -p ./content.orig/adapters/storage \
    && cp -vr ./node_modules/ghost-storage-adapter-s3 ./content.orig/adapters/storage/s3
