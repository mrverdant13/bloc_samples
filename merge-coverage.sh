#!/usr/bin/env bash

escapedPath="$(echo `pwd` | sed 's/\//\\\//g')"

if [ -f "pubspec.yaml" ]; then
  if [ -d "coverage" ]; then
    if [ ! -d "$MELOS_ROOT_PATH/coverage_report" ]; then
      mkdir "$MELOS_ROOT_PATH/coverage_report"
    fi
    sed "s/^SF:lib/SF:$escapedPath\/lib/g" coverage/lcov.info >> "$MELOS_ROOT_PATH/coverage_report/lcov.info"
  fi
fi