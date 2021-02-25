


tfenv list

tfenv use 0.14.7

terraform init

terraform plan

export GOOGLE_APPLICATION_CREDENTIALS="/Users/judeadumont/Desktop/terraform-gke-5ae77d533de6.json"

echo $GOOGLE_APPLICATION_CREDENTIALS

#gcloud beta compute ssh --zone "us-central1-c" "terraform-instance" --project "nice-virtue-305620"

gcloud config set project terraform-gke-0