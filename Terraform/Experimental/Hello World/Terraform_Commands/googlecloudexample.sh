


tfenv list

tfenv use 0.14.7

terraform init

terraform plan

export GOOGLE_APPLICATION_CREDENTIALS="/Users/judeadumont/Desktop/terraform-gke-5ae77d533de6.json"

echo $GOOGLE_APPLICATION_CREDENTIALS

#gcloud beta compute ssh --zone "us-central1-c" "terraform-instance" --project "nice-virtue-305620"

gcloud config set project terraform-gke-0

export GOOGLE_APPLICATION_CREDENTIALS="/Users/judeadumont/Desktop/terraform-gke-5ae77d533de6.json"

#CURRENT USER
gcloud config list account --format "value(core.account)"

export GOOGLE_APPLICATION_CREDENTIALS="/Users/judeadumont/Desktop/terraform-gke-5ae77d533de6.json"
gcloud auth login dumontjudea2@gmail.com



#- Adding application display name for cleaner dynatrace presentation
#- named application1 in dynatrace before this

#- Get a list of services together so I know which services need to be updated naoo-tst (ask shawn)
#- some services are dead, like ones that supoprt SAP, which was frozen a year ago.
#- Those repos may not need to be done, not sure which ones those are.
#- Jump in any one cluster, (tst), hit workload, write down those repo's
#- no sap services with live pipelines

# Ignore:
# ERROR [,,,] 124045 --- [           main] c.g.e.c.e.CartExceptionHandler           : GFS-jc6vmfdd7GgbmeFZNV8KvG: There was an error with the request.


