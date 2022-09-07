cp ../searxng/settings.yml  /opt/data-adm-docker/volumes/searxng/data
## cp ./Caddyfile /opt/data-adm-docker/volumes/searxng/caddy
sed -i "s|ultrasecretkey|$(openssl rand -hex 32)|g" /opt/data-adm-docker/volumes/searxng/data/settings.yml
docker compose  --env-file /opt/data-adm-docker/volumes/searxng/.env  down
docker compose --env-file /opt/data-adm-docker/volumes/searxng/.env up
