$output = 'lib/generated/'

# Remove generated folders if exists
$paths = "$output'google'", "$output'models'", "$output'services'"
foreach($path in $paths) {
    if (Test-Path $path) {
        Remove-Item $path -Recurse -Verbose
    }
}

# Generate Models
Write-Output 'Model'
protoc --proto_path=protos --dart_out=grpc:$output `
    models/account.proto `
    models/person.proto
Write-Output 'OK'

# Generate Services
Write-Output 'Services'
protoc --proto_path=protos --dart_out=grpc:$output `
    services/account_service.proto `
    services/person_service.proto
Write-Output 'OK'

# Generate Well-Known Types
Write-Output 'Google'
protoc --dart_out=grpc:$output `
    google/protobuf/timestamp.proto `
    google/protobuf/field_mask.proto `
    google/protobuf/empty.proto
Write-Output 'OK'

dart format .