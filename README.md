# OpenShift Keycloak Cartridge

You can build a gear using this cartridge with the following command:

	rhc app create keycloak http://cartreflect-claytondev.rhcloud.com/github/keycloak/openshift-keycloak-cartridge
	
It will take a few minutes to build, so be patient.

You can also start a specific version by adding ?commit<VERSION> to the url. For example to start 1.7.0.Final run:

	rhc app create keycloak http://cartreflect-claytondev.rhcloud.com/github/keycloak/openshift-keycloak-cartridge?commit=1.7.0.Final
