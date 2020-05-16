# Docker image for devpi

devpi is a PyPI server and packaging/testing/release tool

## tags and respective `Dockerfile` links

- [`5.5.0`, `5-latest`, `latest` (*5.5.0/Dockerfile*)](https://github.com/mpeeters/docker-devpi/blob/master/5.0/5.5.0/Dockerfile)
- [`5.4.1` (*5.4.1/Dockerfile*)](https://github.com/mpeeters/docker-devpi/blob/master/5.0/5.4.1/Dockerfile)
- [`5.4.0` (*5.4.0/Dockerfile*)](https://github.com/mpeeters/docker-devpi/blob/master/5.0/5.4.0/Dockerfile)
- [`5.3.1` (*5.3.1/Dockerfile*)](https://github.com/mpeeters/docker-devpi/blob/master/5.0/5.3.1/Dockerfile)
- [`5.3.0` (*5.3.0/Dockerfile*)](https://github.com/mpeeters/docker-devpi/blob/master/5.0/5.3.0/Dockerfile)
- [`5.2.0` (*5.2.0/Dockerfile*)](https://github.com/mpeeters/docker-devpi/blob/master/5.0/5.2.0/Dockerfile)
- [`5.1.0` (*5.1.0/Dockerfile*)](https://github.com/mpeeters/docker-devpi/blob/master/5.0/5.1.0/Dockerfile)

# Environment variables

| Variable                  | Description                                           |
|---------------------------|-------------------------------------------------------|
| DEVPI_PASSWORD            | Root password                                         |
| DEVPI_PASSWORD_FILE       | File with root password                               |
| DEVPI_OUTSIDE_URL         | Outside url                                           |
| DEVPI_PORT                | Default: ``3141``                                     |
| DEVPI_SERVERDIR           | Default: ``/devpi/server``                            |
| DEVPI_CLIENTDIR           | Default: ``/devpi/client``                            |

# Contribute

- Issue Tracker: http://github.com/mpeeters/docker-devpi/issues
- Source Code: http://github.com/mpeeters/docker-devpi

# License

The project is licensed under the MIT.

Inspired by https://github.com/apihackers/docker-devpi
