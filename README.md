Pre-built TD library v1.2.0 on Ubuntu 16.04 amd64 in RelWithDebInfo
configuration with added configuration to use it with Bazel.

This build should work on amd64 Linux if static linkage is used or
only on Ubuntu 16.04 amd64 compatible distribution when dynamic linking
is used.

This workspace configuration examples to build some examples from TD
library in `BUILD.tdlib_examples`:

```shell
$ bazel run @td_examples//:tdjson_example
...
$ bazel run @td_examples//:td_example
...
$ bazel run @td_examples//:td_go_example
```

# TODO

Alternatively TD library can be built using Bazel `genrule()` or
`repository_rule()` which is more bazel-like, but has its downsides,
see:

* https://github.com/bazelbuild/bazel/issues/2792
* https://github.com/bazelbuild/bazel/issues/2814
