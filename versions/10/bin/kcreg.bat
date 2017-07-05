@echo off

if "%OS%" == "Windows_NT" (
  set "DIRNAME=%~dp0%"
) else (
  set DIRNAME=.\
)
java %KC_OPTS% -cp %DIRNAME%\client\keycloak-client-registration-cli-3.2.0.Final.jar org.keycloak.client.registration.cli.KcRegMain %*
