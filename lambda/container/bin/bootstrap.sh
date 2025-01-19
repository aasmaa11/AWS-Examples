#!/usr/bin/env bash
set -e

aws ecr create-repository --repository-name python-container-example --image-tag-mutability IMMUTABLE --image-scanning-configuration scanOnPush=true
