### Pre-requisites

`wget` package installed

### Magento installation

Run

```shell
sh ./download-magento.sh
```

Provide the sudo user password in order to give right permissions to the magento sources folder.

### Run

Run docker containers with the Magento 2

```shell
cd docker
docker compose up -d
```

Go to the web container and do the composer install and further Magento 2 installation.

```shell
docker exec -it docker-web-1 bash
composer install

php bin/magento module:disable {Magento_Elasticsearch,Magento_Elasticsearch6,Magento_Elasticsearch7}

php bin/magento setup:install \
--admin-firstname=Test \
--admin-lastname=Test \
--admin-email=test@test.com \
--admin-user=admin \
--admin-password='!@#123asd' \
--base-url=http://localhost \
--backend-frontname=admin \
--db-host=db \
--db-name=magento \
--db-user=magento \
--db-password=magento \
--use-rewrites=1 \
--language=en_US \
--currency=USD \
--timezone=America/New_York
```