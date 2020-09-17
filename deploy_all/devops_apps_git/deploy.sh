
#!/bin/bash

CLUSTER=gke-camerch-prod
PROJECT=pr-ca-merch

gcloud config set project $PROJECT
gcloud config set container/cluster  $CLUSTER
export ADMIN_POOL=$(gcloud container node-pools list --zone us-east1|awk '{print $1}'|grep admin)
export DEFAULT_POOL=$(gcloud container node-pools list --zone us-east1|awk '{print $1}'|grep default)


for file in *.yaml ; do

    echo "Installing $file ..."


    if ! cat $file | envsubst | kubectl create -f -
    then
        echo "Failed to install $file"
        continue
    fi

done
