#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/contractors"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
      "contractor": {
        "first_name": "'"${FIRST_NAME}"'",
        "last_name": "'"${LAST_NAME}"'",
        "born_on": "'"${BORN_ON}"'",
        "gender": "'"${GENDER}"'",
        "hire_date": "'"${HIRE_DATE}"'"
      }
    }'

echo


# t.string :first_name
# t.string :last_name
# t.date :born_on
# t.string :gender
# t.date :hire_date
