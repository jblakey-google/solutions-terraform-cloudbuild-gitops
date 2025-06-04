PROJECT_ID=$(gcloud config get-value project)
# BUCKET="gs://${PROJECT_ID}-tfstate"

# create the bucket
# gcloud storage buckets create $BUCKET

# verify creation
gcloud storage buckets list

# enable versioning
BUCKET="gs://$(gcloud storage buckets list --format="value(name)" | grep tfstate | head -n 1 )"
gcloud storage buckets update $BUCKET --versioning
echo $BUCKET