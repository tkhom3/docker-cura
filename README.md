[![Build and Deploy Image](https://github.com/tkhom3/docker-cura/actions/workflows/build-and-deploy.yml/badge.svg)](https://github.com/tkhom3/docker-cura/actions/workflows/build-and-deploy.yml)
[![Security Scans](https://github.com/tkhom3/docker-cura/actions/workflows/security-scans-pr.yml/badge.svg)](https://github.com/tkhom3/docker-cura/actions/workflows/security-scans-pr.yml)
[![Codacy Badge](https://app.codacy.com/project/badge/Grade/495f8372a653499cb0ffe0de389f835a)](https://www.codacy.com/gh/tkhom3/docker-cura/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=tkhom3/docker-cura&amp;utm_campaign=Badge_Grade)

# docker-cura

Forked from https://github.com/8layer8/docker-cura

Hosted Cura instance running on Docker.

## Setup

Mount the following directories: `/config`, `/storage` and `/output`.

<!-- ## Environment Variables

| **Variable**  | **Default**          | **Description**                             |
|---------------|----------------------|---------------------------------------------|
| ACCESS_KEY    |                      | AWS IAM Access Key                          |
| SECRET_KEY    |                      | AWS IAM Secret Key                          |
| S3PATH        |                      | S3 bucket and path                          |
| S3CMDPARAMS   |                      | Custom S3cmd parameters                     |
| CRON_SCHEDULE |`0 3 * * 6`           | How often a backup should be run using CRON |
| LOG_LEVEL     |`INFO`                | Logging Level                               |
| CACHE_FILE    |`/tmp/s3cmd_cache.txt`| Location to write the file cache            |
| LOG_FILE      |`/tmp/s3backup.log`   | Location to write the log file              | -->