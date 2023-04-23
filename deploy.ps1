dart_frog build

Remove-Item build\.gitignore
Remove-Item build\.dockerignore
Copy-Item Dockerfile build\

gcloud run deploy dart-frog --source build --project dart-frog-playground --region asia-southeast1 --allow-unauthenticated