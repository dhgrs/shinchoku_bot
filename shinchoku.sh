#!/bin/bash

WEBHOOKURL=`<API_URL>`
FILE_PATH=`<PATH_TO_PDF>`
page=`qpdf --show-npages $FILE_PATH`

curl -X POST --data-urlencode "payload={
    \"channel\": \"#random\",
    \"username\": \"進捗どうですか\",
    \"text\": \"$page pages written!\",
    \"icon_emoji\": \":ghost:\",
    \"link_names\": 1}" $WEBHOOKURL
