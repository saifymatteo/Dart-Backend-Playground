# Build the production
dart_frog build

# Remove ignore files
Remove-Item build\.gitignore
Remove-Item build\.dockerignore

# Copy custom Dockerfile to build
Copy-Item Dockerfile build\

# Deploy Google Cloud Run
gcloud run deploy dart-frog --source build --project dart-frog-playground --region asia-southeast1 --allow-unauthenticated