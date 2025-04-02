# ZSGFClient::SystemFileListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **directories** | [**Array&lt;SystemDirectoryItem&gt;**](SystemDirectoryItem.md) |  | [optional] |
| **files** | [**Array&lt;SystemFileItem&gt;**](SystemFileItem.md) |  | [optional] |
| **size** | **Integer** |  | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::SystemFileListResult.new(
  directories: null,
  files: null,
  size: null
)
```

