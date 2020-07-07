FROM php:7.4-cli

LABEL version="1.0"
LABEL repository="https://github.com/maddy2101/actions-symfony-phpunit"
LABEL homepage="https://github.com/maddy2101/actions-symfony-phpunit"
LABEL maintainer="Anja Leichsenring <aleichsenring@ab-softlab.de>"

COPY "entrypoint.sh" "/entrypoint.sh"

RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]