export API_VERSION=`cat bundled_openapi.json | shyaml get-value info.version`
echo "API version: $API_VERSION"
echo -n $API_VERSION > .VERSION