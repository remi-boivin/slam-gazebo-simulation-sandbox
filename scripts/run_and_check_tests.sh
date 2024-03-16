#!/bin/bash

declare file="test_results"
declare regex=" tests, 0 errors, 0 failures, 0 skipped"

. /opt/ros/iron/setup.bash

colcon test
colcon test-result --all --verbose > "${file}"
declare file_content=$( cat "${file}" )

if [[ " $file_content " =~ $regex ]]
  then
    lcov --directory . --capture --output-file coverage.info
    lcov --list coverage.info
    lcov --extract coverage.info '*/src/*' --output-file coverage_filtered.info
    genhtml coverage_filtered.info --output-directory /results/
    gcovr --root . --json --output=/results/coverage.json > "${file}"
  else
    echo Not All Tests Passed
    exit 1
fi
