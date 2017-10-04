if [ -z ${CAT+false} ]
then
	echo "Ya"
else
	echo "Na"
fi

if [ "$CAT" = "Meow" ]
then
	echo "Cat: Meow"
else
	echo "Cat: Nope"
fi

SAMPLE="Config::\$publicApiKeyRequired = false;"
CONFIG="Config::\$publicApiKeyRequired = "
RTRUE="true;"
RFALSE="false;"
REGEX="$CONFIG.*"

VALUE=$CONFIG
if [ "$EVALUE" = "true" ]
then
	VALUE="$VALUE$RTRUE"
	echo $VALUE
else
	VALUE="$VALUE$RFALSE"
	echo $VALUE
fi
echo $SAMPLE | sed "s/$REGEX/$VALUE/"
	
