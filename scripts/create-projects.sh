#!/usr/bin/env bash

spring init \
--boot-version=3.3.9 \
--type=gradle-project \
--java-version=21 \
--packaging=jar \
--name=product-service \
--package-name=me.joaopmafra.sms3.product \
--groupId=me.joaopmafra.sms3.product \
--dependencies=actuator,webflux \
--version=1.0.0-SNAPSHOT \
product-service

spring init \
--boot-version=3.3.9 \
--type=gradle-project \
--java-version=21 \
--packaging=jar \
--name=review-service \
--package-name=me.joaopmafra.sms3.review \
--groupId=me.joaopmafra.sms3.review \
--dependencies=actuator,webflux \
--version=1.0.0-SNAPSHOT \
review-service

spring init \
--boot-version=3.3.9 \
--type=gradle-project \
--java-version=21 \
--packaging=jar \
--name=recommendation-service \
--package-name=me.joaopmafra.sms3.recommendation \
--groupId=me.joaopmafra.sms3.recommendation \
--dependencies=actuator,webflux \
--version=1.0.0-SNAPSHOT \
recommendation-service

spring init \
--boot-version=3.3.9 \
--type=gradle-project \
--java-version=21 \
--packaging=jar \
--name=product-composite-service \
--package-name=me.joaopmafra.sms3.product-composite \
--groupId=me.joaopmafra.sms3.product-composite \
--dependencies=actuator,webflux \
--version=1.0.0-SNAPSHOT \
product-composite-service

