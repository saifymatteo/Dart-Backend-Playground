# Build the production
dart_frog build

# Remove files
Remove-Item build\.env
Remove-Item build\.gitignore
Remove-Item build\.dockerignore
Remove-Item build\deploy.ps1
Remove-Item build\stormberry_migrate.ps1

# Setup Production build
Remove-Item build\main.dart
Rename-Item build\main.production.dart -NewName main.dart

# Copy custom Dockerfile to build
Copy-Item Dockerfile build\

# Deploy Google Cloud Run
gcloud run deploy dart-frog `
    --source build `
    --project dart-frog-playground `
    --region asia-southeast1 `
    --allow-unauthenticated `
    --add-cloudsql-instances=dart-frog-playground:asia-southeast1:test