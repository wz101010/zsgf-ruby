# ZSGFClient::FileListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **directories** | [**Array&lt;DirectoryItem&gt;**](DirectoryItem.md) |  | [optional] |
| **files** | [**Array&lt;FileItem&gt;**](FileItem.md) |  | [optional] |
| **total_directories** | **Integer** |  | [optional] |
| **total_files** | **Integer** |  | [optional] |
| **size** | **Integer** |  | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::FileListResult.new(
  directories: null,
  files: null,
  total_directories: null,
  total_files: null,
  size: null
)
```

