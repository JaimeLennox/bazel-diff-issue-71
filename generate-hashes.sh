#!/usr/bin/env sh

bazelisk run //:bazel-diff -- -w $(pwd) -b bazelisk generate-hashes $(pwd)/out.txt
