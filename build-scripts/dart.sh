echo $API_VERSION
openapi-generator generate -i ./openapi.yml -g dart -o guest-dart-sdk/ -DbrowserClient=false -DpubName=guest_sdk
cd guest-dart-sdk
