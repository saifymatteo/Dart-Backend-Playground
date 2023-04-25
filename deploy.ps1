# Build the production
dart_frog build

# Remove ignore files
Remove-Item build\.gitignore
Remove-Item build\.dockerignore

# Copy custom Dockerfile to build
Copy-Item Dockerfile build\

# Deploy Google Cloud Run
#gcloud run deploy dart-frog --source build --project dart-frog-playground --region asia-southeast1 --allow-unauthenticated

# Deploy AWS ECR
aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin 175192474076.dkr.ecr.ap-southeast-1.amazonaws.com
docker build build --tag 175192474076.dkr.ecr.ap-southeast-1.amazonaws.com/dart_frog_playground:latest
docker push 175192474076.dkr.ecr.ap-southeast-1.amazonaws.com/dart_frog_playground:latest
