#!/usr/bin/env bash

GENERATED_API_KEY=$(cat $APP_BASE/.api-key-public)

if [ -n ${NUGET_PUBLIC_API_KEY} ]
then
	echo "Using generated API key: $GENERATED_API_KEY"
else
	echo "Using API key $NUGET_PUBLIC_API_KEY"
	sed -i $APP_BASE/inc/config.php -e "s/$GENERATED_API_KEY/$NUGET_PUBLIC_API_KEY/"
fi
