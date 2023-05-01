dart_frog build

Remove-Item build\.env
Remove-Item build\deploy.ps1
Remove-Item build\.gitignore
Remove-Item build\.dockerignore
Copy-Item Dockerfile build\

gcloud run deploy dart-frog-prisma --source build --project dart-frog-playground --region asia-southeast1 --allow-unauthenticated