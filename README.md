# OpenShift Keycloak Cartridge

You can build a gear using this cartridge with the following command:

	rhc app create keycloak http://cartreflect-claytondev.rhcloud.com/github/keycloak/openshift-keycloak-cartridge
	
It will take a few minutes to build, so be patient.

## Thanks to the following:

https://github.com/developercorey/openshift-wildfly-cartridge

## Updating Keycloak

To update the version of Keycloak in the cartridge follow these steps:

1. Extract Keycloak dist
2. Edit `standalone/deployments/auth-server.war/WEB-INF/web.xml` in extracted Keycloak dist and uncomment the `security-constraint` element that enables the `confidential transport-guarantee`
3. Replace `versions/1/modules/base` with `modules/base` from the extracted Keycloak dist
4. Replace `versions/1/standalone/deployments` with `standalone/deployments` from extracted Keycloak dist
5. Replace `versions/1/standalone/configuration/themes` with `standalone/configuration/themes` from extracted Keycloak dist
5. Replace `versions/1/standalone/configuration/keycloak-sever.json` with `standalone/configuration/keycloak-sever.json` from extracted Keycloak dist

To update WildFly version pull in changes from <https://github.com/developercorey/openshift-wildfly-cartridge>
