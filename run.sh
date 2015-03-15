if [ -z "${MQTTWARN_CONF}" ]
then
  echo "Please define MQTTWARN_CONF with a URL"
  exit 1
fi

if [ -z "${MQTTWARN_CABUNDLE}" ]
then
  echo "Please define MQTTWARN_CABUNDLE with a URL"
  exit 1
fi
wget -O /mqttwarn/mqttwarn.ini $MQTTWARN_CONF
wget -O /etc/ca-bundle.pem $MQTTWARN_CABUNDLE
cd /mqttwarn

exec /mqttwarn/mqttwarn.py
