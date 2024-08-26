# runtime_keygen_openapi

A library for Keygen (keygen.sh) OpenAPI bindings


## Overview

This repository contains code generated from OpenAPI Generator (https://openapi-generator.tech/) for the Keygen OpenAPI spec.

The `dart` directory contains Dart package code and other languages may be added in the future (e.g., Rust, Typescript, etc.).


## The `keygen-openapi.yml` file

The `keygen-openapi.yml` file in this repository is a fork from [the official keygen-openapi.yml file](https://github.com/keygen-sh/keygen-openapi/blob/main/keygen-openapi.yml) with several changes:
* several typo fixes
* several properties that were marked as required are now not required. This is because Keygen itself does not always return these properties
* `leasingStrategy` property of `CreatePolicyRequest` and `UpdatePolicyRequest` has been corrected and split into `machineLeasingStrategy` and `processLeasingStrategy`
* response codes for `RevokeLicenseResponse`, `DetachLicenseEntitlementsResponse`, and `DeactivateMachineResponse` have been fixed

When development has settled, then this accumulation of changes will be contributed back to Keygen.


## Dart code

The `dart` directory is auto-generated from OpenAPI Generator and should not be modified directly.


### How to re-generate the Dart code

A one-time setup is needed to install the required utilities and then it is possible to generate the OpenAPI code from the command-line.

The one-time setup installs `openapi-generator-cli` and sets the version to use.

One-time setup needed for macOS:
```
brew install openjdk

export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

npm install @openapitools/openapi-generator-cli -g

openapi-generator-cli version-manager set 7.3.0
```

Then run to generate the OpenAPI code:
```
cd runtime_keygen_openapi

rm -rf dart

openapi-generator-cli generate -i keygen-openapi.yml -g dart -o dart --global-property modelDocs=false,modelTests=false,apiDocs=false,apiTests=false --additional-properties removeEnumValuePrefix=false --additional-properties pubName=runtime_keygen_openapi --additional-properties pubHomepage=https://github.com/open-runtime/runtime_keygen_openapi --additional-properties pubDescription='A\ Dart\ package\ for\ Keygen\ \(keygen.sh\)\ OpenAPI\ bindings'

git apply manual-fix-after-openapi-generator.patch
```

### Why is the .patch needed?

There are various bugs in `openapi-generator-cli` for Dart:
* https://github.com/OpenAPITools/openapi-generator/issues/13459
* https://github.com/OpenAPITools/openapi-generator/pull/19341

Every time the generator is run, syntactically-incorrect Dart is generated and must be fixed.


### Why `model` and not `models`?

Inside of `dart/lib/`, there is a `model` directory that contains model classes.

It would be nice to have the directory be named `models` instead of `model`.

`openapi-generator-cli` even takes an option `--model-package models` to do this renaming.

However, there are various bugs in `openapi-generator-cli` for Dart.

Even when using the option `--model-package models`, `openapi-generator-cli` still generates Dart code with `model` hard-coded:
e.g.:
```
part 'model/activate_machine_request.dart';
```

So it is not possible to use the `--model-package` option.


### Where are the tests?

`openapi-generator-cli` can also generate tests for the generated code. However, these are just stubbed out with `// TODO` comments and not actual tests.

That is why the `modelTests=false` and `apiTests=false` options are provided when running `openapi-generator-cli`.

Consumers of this Dart package are encouraged to write tests for this code.












