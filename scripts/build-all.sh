#!/usr/bin/env bash

# stop execution if a command fails
set -e

# curl is needed by sdkman
if ! command -v curl &> /dev/null; then
  echo "curl is not installed. Please install curl and try again."
  exit 1
fi

# enable sdkman
scripts/sdkman-setup.sh
source "$HOME/.sdkman/bin/sdkman-init.sh"

sdk env install

cd product-service
./gradlew clean build
cd ..

cd recommendation-service
./gradlew clean build
cd ..

cd review-service
./gradlew clean build
cd ..

cd product-composite-service
./gradlew clean build
cd ..
