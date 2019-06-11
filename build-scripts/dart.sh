./openapi-generator.sh generate -i ./openapi.yml -g dart -o guest-dart-sdk/ -DbrowserClient=false -DpubName=guest_sdk
git add guest-dart-sdk guest-dart-sdk/.gitignore guest-dart-sdk/.openapi-generator-ignore guest-dart-sdk/.travis.yml guest-dart-sdk/.openapi-generator/VERSION
