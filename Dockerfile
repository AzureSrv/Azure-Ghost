FROM ghost:alpine
WORKDIR /var/lib/ghost

# add labels
LABEL org.opencontainers.image.authors="me@azureagst.dev"
LABEL org.opencontainers.image.source="https://github.com/AzureSrv/posts-ghost"

# install amazon s3 driver
RUN npm install ghost-storage-adapter-s3 \
    && mkdir -p ./content/adapters/storage \
    && cp -r ./node_modules/ghost-storage-adapter-s3 ./content/adapters/storage/s3
