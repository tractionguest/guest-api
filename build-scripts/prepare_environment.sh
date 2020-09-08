export API_VERSION=`cat openapi.yml | shyaml get-value info.version`
echo "API version: $API_VERSION"