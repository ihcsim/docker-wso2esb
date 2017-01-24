#!/bin/bash

ESB_HOST=${ESB_HOST:-localhost}
MAX_RETRIES=${MAX_RETRIES:-10}

http_ok=200
failed=false

retries=0
esb_response=`curl -k -s -L -w %{http_code} -o /dev/null https://${ESB_HOST}:9443/carbon`
until [ "${esb_response}" != "000" ] && [ "${esb_response}" != "404" ] || [ ${retries} -eq ${MAX_RETRIES} ]; do
  retries=$((retries + 1))
  echo "Waiting for Admin Console at https://${ESB_HOST}:9443/carbon to be ready...Retries ${retries}"
  sleep 5
  esb_response=`curl -k -s -L -w %{http_code} -o /dev/null https://${ESB_HOST}:9443/carbon`
done

if [ "${esb_response}" != ${http_ok} ];
then
  echo -e "\033[0;31mAdmin Console is unreachable. Received HTTP response ${esb_response}. To view the ESB container logs, run the \"docker logs\" command.\033[0m"
  failed=true
fi

if ${failed} ;
then
  echo -e "\033[0;31mTest failed.\033[0m"
  exit 1
fi
echo -e "\033[0;32mTest passed.\033[0m"
