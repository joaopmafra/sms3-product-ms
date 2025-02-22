#!/usr/bin/env bash

# stop execution if a command fails
set -e

# enable sdkman
scripts/sdkman-setup.sh
source "$HOME/.sdkman/bin/sdkman-init.sh"

sdk env install
sdk env

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
