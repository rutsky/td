cc_library(
    name = "td_headers",

    hdrs = glob(["tdlib/include/td/**"]),
    includes = ["tdlib/include/"],
)

td_static_libs = [
  "tdactor",
  "tdclient",
  "tdcore",
  "tddb",
  "tdnet",
  "tdsqlite",
  "tdutils",
]
tdjson_static_libs = td_static_libs + [
  "tdjson_private",
  "tdjson_static",
]

[cc_import(
   name = name,
   static_library = "tdlib/lib/lib{}.a".format(name),
   alwayslink = 1,
 )
for name in tdjson_static_libs]

cc_import(
  name = "tdjson",
  shared_library = "tdlib/lib/libtdjson.so",
)

# Using workaround for <https://github.com/bazelbuild/bazel/issues/4748>
# from <https://groups.google.com/d/msg/bazel-discuss/vX9M-lBBCiU/OSVgAAaIAAAJ>
cc_library(
  name = "TdJson",
  deps = [
    "tdjson",
    "td_headers",
  ],
  visibility = ["//visibility:public"],
)

cc_library(
  name = "TdJsonStatic",
  deps = tdjson_static_libs + [
    "td_headers",
  ],
  linkopts = [
    "-lpthread",
    "-lssl",
    "-lcrypto",
    "-lz",
  ],
  visibility = ["//visibility:public"],
)

cc_library(
  name = "TdStatic",
  deps = td_static_libs + [
    "td_headers",
  ],
  linkopts = [
    "-lpthread",
    "-lssl",
    "-lcrypto",
    "-lz",
  ],
  visibility = ["//visibility:public"],
)

# TODO: TdCoreStatic library
