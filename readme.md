### CMakeGitCurrentCommitHash
* get current commit hash. execute git rev-parse HEAD and return result.

```cmake
include(CMakeGitCurrentCommitHash.cmake)
CMakeGitCurrentCommitHash(filter_id)
message(${filter_id})
```