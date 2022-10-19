[![Build and Deploy Image](https://github.com/tkhom3/docker-cura/actions/workflows/build-and-deploy.yml/badge.svg)](https://github.com/tkhom3/docker-cura/actions/workflows/build-and-deploy.yml)
[![Security Scans](https://github.com/tkhom3/docker-cura/actions/workflows/security-scans-pr.yml/badge.svg)](https://github.com/tkhom3/docker-cura/actions/workflows/security-scans-pr.yml)
[![Codacy Badge](https://app.codacy.com/project/badge/Grade/495f8372a653499cb0ffe0de389f835a)](https://www.codacy.com/gh/tkhom3/docker-cura/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=tkhom3/docker-cura&amp;utm_campaign=Badge_Grade)

# docker-cura

Forked from https://github.com/8layer8/docker-cura

Hosted Cura instance running on Docker.

## Setup

Mount the following directories: `/config`, `/storage` and `/output`.

## Environment Variables

| **Variable**  | **Default**          | **Description**                                   |
|---------------|----------------------|---------------------------------------------------|
| APP_NAME      | Cura3D               | The name of the application to display in openbox |
| APP_VERSION   | 4.13.1               | The version of Cura to run                        |

## Unraid Template

```
<?xml version="1.0"?>
<Container version="2">
  <Name>CuraV4</Name>
  <Repository>tkhom3/docker-cura</Repository>
  <Registry>https://hub.docker.com/repository/docker/twod/docker-cura</Registry>
  <Network>host</Network>
  <MyIP/>
  <Shell>sh</Shell>
  <Privileged>false</Privileged>
  <Support/>
  <Project>https://github.com/tkhom3/docker-cura</Project>
  <Overview>Cura3d version 4.x</Overview>
  <Category>Productivity:</Category>
  <WebUI>https://[IP]:[PORT:5800]</WebUI>
  <TemplateURL/>
  <Icon>https://github.com/tkhom3/docker-cura/raw/main/metadata/icon.png</Icon>
  <ExtraParams/>
  <PostArgs/>
  <CPUset/>
  <DateInstalled>1666202677</DateInstalled>
  <DonateText/>
  <DonateLink/>
  <Requires/>
  <Config Name="Config" Target="/config" Default="" Mode="rw" Description="" Type="Path" Display="always" Required="true" Mask="false">/mnt/user/appdata/docker/CuraV4/config</Config>
  <Config Name="Storage" Target="/storage" Default="" Mode="rw" Description="" Type="Path" Display="always" Required="true" Mask="false">/mnt/user/appdata/docker/CuraV4/storage</Config>
  <Config Name="Output" Target="/output" Default="" Mode="rw" Description="" Type="Path" Display="always" Required="true" Mask="false">/mnt/user/appdata/docker/CuraV4/output</Config>
  <Config Name="Cura Version" Target="APP_VERSION" Default="4.13.1" Mode="" Description="" Type="Variable" Display="always" Required="false" Mask="false"/>
</Container>
```