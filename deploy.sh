gcloud compute firewall-rules create node-port-jenkins --allow tcp:30000

kubectl create -f jenkins-deployment.yaml

kubectl create -f jenkins-service.yaml
