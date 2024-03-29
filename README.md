# Home assistant add-on for Mattermost

Home Assistant Add-on for Mattermost helps you deploy Mattermost as Add-on in Home-Assistant.
Mattermost is an open source platform for secure collaboration across the entire software development lifecycle..

It requires external DB, Postgres or MariaDB

https://github.com/mattermost/docker

For issues, please go to [the issue tracker](https://github.com/saya6k/hassio-addons/issues/issues).


## Installation

The installation of this add-on is pretty straightforward and not different in
comparison to installing any other Hass.io add-on.


1. [Add my Hass.io add-ons repository][repository] to your Hass.io instance. [![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fsaya6k%2Fhassio-addons)

1. Install this add-on.
1. Start the add-on.
1. Check the logs of the add-on to see if everything went well.
1. Open WebUI at homeassistant:8065 or use Ingress


[repository]: https://github.com/saya6k/hassio-addons

## LICENSE

[License](./LICENSE)