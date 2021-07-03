### Bazel setup ###
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

### Java rules ###
http_archive(
    name = "rules_jvm_external",
    sha256 = "31701ad93dbfe544d597dbe62c9a1fdd76d81d8a9150c2bf1ecf928ecdf97169",
    strip_prefix = "rules_jvm_external-4.0",
    url = "https://github.com/bazelbuild/rules_jvm_external/archive/4.0.zip",
)

load("@rules_jvm_external//:defs.bzl", "maven_install")

### gRPC rules ###
http_archive(
    name = "com_github_grpc_grpc",
    sha256 = "f60e5b112913bf776a22c16a3053cc02cf55e60bf27a959fd54d7aaf8e2da6e8",
    strip_prefix = "grpc-1.38.1",
    urls = ["https://github.com/grpc/grpc/archive/v1.38.1.tar.gz"],
)

load("@com_github_grpc_grpc//bazel:grpc_deps.bzl", "grpc_deps")

grpc_deps()

load("@com_github_grpc_grpc//bazel:grpc_extra_deps.bzl", "grpc_extra_deps")

grpc_extra_deps()

### bazel-diff ###
http_archive(
    name = "bazel_diff",
    # Uncomment the patch below to fix the overflow
    #patch_args = ["-p1"],
    #patches = ["//:bazel-diff.patch"],
    sha256 = "b6f115aae20fa0508f186b3ba3dbe88736e06ee377f10b08ebfd09106e070016",
    strip_prefix = "bazel-diff-3.0.0",
    url = "https://github.com/Tinder/bazel-diff/archive/3.0.0.tar.gz",
)

load("@bazel_diff//:repositories.bzl", "bazel_diff_dependencies")

bazel_diff_dependencies()

load("@rules_jvm_external//:defs.bzl", "maven_install")
load("@bazel_diff//:artifacts.bzl", "BAZEL_DIFF_MAVEN_ARTIFACTS")

maven_install(
    name = "bazel_diff_maven",
    artifacts = BAZEL_DIFF_MAVEN_ARTIFACTS,
    repositories = [
        "http://uk.maven.org/maven2",
        "https://jcenter.bintray.com/",
    ],
)
