#!/bin/sh
# Make sure you replace the <DD_API_KEY> and <DD_APP_KEY> key below
# with the ones for your account

api_key=<DD_API_KEY>
app_key=<DD_APP_KEY>

curl -X PUT -H "Content-type: application/json" \
-d '{
        "project_id": "<GCP_PROJECT_ID>",
        "client_email": "<CLIENT_EMAIL>",
        "host_filters": "<KEY_1>:<VALUE_1>,<KEY_2>:<VALUE_2>"
    }' \
"https://api.datadoghq.com/api/v1/integration/gcp?api_key=${api_key}&application_key=${app_key}"
