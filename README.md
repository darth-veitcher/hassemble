# HAssemble
This project seeks to automate the setup of a (fairly) comprehensive home automation baseline using the excellent [Home Assistant](http://home-assistant.io/) coupled with some additional extensions onto a Raspberry Pi 3.

**Q:** What makes this different?

**A:** The project uses a combination of [Ansible](https://www.ansible.com) and [Docker-Compose](https://docs.docker.com/compose/overview/) to both automate the underlying infrastructure setup and orchestrate the various services that would be required. As a result all core services are containerised on the Raspberry Pi itself as guests linked together with a virtual network on the host and fronted by [Traefik](https://traefik.io) as a reverse proxy with [LetsEncrypt](https://letsencrypt.org) on a [DuckDNS](http://www.duckdns.org) domain.


## Features / Roadmap

* Automated setup of Docker, Docker-Compose on a vanilla [Raspbian Lite](https://www.raspberrypi.org/downloads/raspbian/) install
