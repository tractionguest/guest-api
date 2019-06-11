echo $API_VERSION
openapi-generator generate -i ./openapi.yml -g dart -o guest-dart-sdk/ -DbrowserClient=false -DpubName=guest_sdk
cd guest-dart-sdk
git commit -a -m "Version $API_VERSION"
git tag $API_VERSION
git push --tags
cd ..
git add guest-dart-sdk
