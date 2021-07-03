# Bazel diff issue

Reproduces the issue from https://github.com/Tinder/bazel-diff/issues/71.

Running `./generate-hashes.sh` fails with a stack overflow error.

Uncommenting the patch in the WORKSPACE file fixes this.

