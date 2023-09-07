# Install Argo CD
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

# Download Argo CD CLI
brew install argocd

# Access The Argo CD API Server 
kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'

# kubectl port-forward svc/argocd-server -n argocd 8080:443
