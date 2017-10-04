#!/usr/bin/env bash

SAVED_CONFIG_VALUE=$(cat $APP_BASE/.api-key-required)
CONFIG="Config::$publicApiKeyRequired = "
REGEX=$CONFIG + ".+"
RTRUE="true;"
RFASE="false;"

if [ -z ${NUGET_USE_PUBLIC_API_KEY+false} ]
then
	echo "Should use public API key: $SAVED_CONFIG_VALUE"
else
	echo "Should use public API key: $NUGET_USE_PUBLIC_API_KEY"
	VALUE = $CONFIG
	if [ $SAVED_CONFIG_VALUE == "true"]
	then
		VALUE = $VALUE + $RTRUE
	else
		VALUE = $VALUE + $RFALSE
	sed -i $APP_BASE/inc/config.php -e "s/$REGEX/$VALUE/"	
fi
