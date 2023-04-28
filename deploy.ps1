# Rename .gitignore
Rename-Item -Path '.gitignore' -NewName '.gitignore.backup'

# Deploy Google Cloud Run
gcloud run deploy dart-frog --source . --project dart-frog-playground --region asia-southeast1 --allow-unauthenticated

# Rename back after done
Rename-Item -Path '.gitignore.backup' -NewName '.gitignore'
