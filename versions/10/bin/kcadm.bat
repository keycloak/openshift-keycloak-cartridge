@echo off

if "%OS%" == "Windows_NT" (
  set "DIRNAME=%~dp0%"
) else (
  set DIRNAME=.\
)
java %KC_OPTS% -cp %DIRNAME%\client\keycloak-admin-cli-2.5.1.Final.jar org.keycloak.client.admin.cli.KcAdmMain %*
