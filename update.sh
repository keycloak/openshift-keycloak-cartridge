#!/bin/bash

SRC=$1

rm -rf versions/8/modules
rm -rf versions/8/standalone/configuration/keycloak-server.json
rm -rf versions/8/standalone/configuration/themes
rm -rf versions/8/standalone/deployments/auth*

cp -r $SRC/modules versions/8/
cp $SRC/standalone/configuration/keycloak-server.json versions/8/standalone/configuration/
cp -r $SRC/standalone/configuration/themes versions/8/standalone/configuration/
cp -r $SRC/standalone/deployments/auth* versions/8/standalone/deployments/

sed -i 's|<!--||g' versions/8/standalone/deployments/auth-server.war/WEB-INF/web.xml
sed -i 's|-->||g' versions/8/standalone/deployments/auth-server.war/WEB-INF/web.xml

