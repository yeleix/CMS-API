#!/bin/bash

curl "http://localhost:4741/contractors/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \

echo


# t.string :first_name
# t.string :last_name
# t.date :born_on
# t.string :gender
# t.date :hire_date
