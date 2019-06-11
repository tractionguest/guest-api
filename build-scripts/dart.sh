./openapi-generator.sh generate -i ./openapi.yml -g dart -o guest-dart-sdk/ -DbrowserClient=false -DpubName=guest_sdk
git add guest-dart-sdk/*