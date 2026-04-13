# Traction Guest API

OpenAPI 3.0 specification for the Sign In Solutions Visitor Management System (VMS) API. This repo is the source of truth for the API contract — changes here drive SDK generation and documentation deployments.

[Live API documentation](https://developers.tractionguest.com/)

## Development

```bash
# install dependencies
yarn install

# Build the spec into a static page
yarn run build
```


## CI / Versioning

PRs require a `patch`, `minor`, or `major` label. Merging to master triggers SDK generation and documentation deployment for all supported languages.

## SDKs

Pre-built SDKs are generated automatically from this spec:

 - [Dart/Flutter](https://github.com/tractionguest/guest-dart-sdk)
 - [Swift](https://github.com/tractionguest/guest-swift-sdk)
 - [Android](https://github.com/tractionguest/guest-android-sdk)
 - [Typescript/Angular](https://github.com/tractionguest/guest-typescript-sdk)
 - [Objective C](https://github.com/tractionguest/guest-objc-sdk)
