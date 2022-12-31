# Ghost (Posts Edition)

![Test](https://img.shields.io/github/actions/workflow/status/azuresrv/posts-ghost/updater.yml?branch=main&logo=GitHub%20Actions&logoColor=white)

This is my distribution of Ghost CMS, with my homelab's plugins compiled into it. it is based off of `ghost:alpine` and updates nightly at 4 AM if an upstream update is available.

## Installed Plugins

|Name|Purpose|
|:-|:-|
|**[ghost-storage-adapter-s3]**|Integration with Amazon S3/CloudFront to store and host images|

[ghost-storage-adapter-s3]: https://github.com/colinmeinke/ghost-storage-adapter-s3
