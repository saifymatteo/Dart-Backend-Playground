$output = 'protos/generated/'

# Generate Models
Write-Output 'Model'
protoc --proto_path=protos --dart_out=$output `
    models/account.proto `
    models/person.proto
Write-Output 'OK'

# Generate Services
Write-Output 'Services'
protoc --proto_path=protos --dart_out=$output `
    account_service.proto
Write-Output 'OK'

# Generate Well-Known Types
Write-Output 'Google'
protoc --dart_out=$output `
    google/protobuf/timestamp.proto `
    google/protobuf/field_mask.proto `
    google/protobuf/empty.proto
Write-Output 'OK'
