echo "Create evaluation K8S resources under 'my-evaluation-namespace' namespace..."
kubectl create -f my-namespace-eval.yaml
kubectl create -f my-config-map-eval.yaml --namespace=my-evaluation-namespace
kubectl create -f my-secret-eval.yaml --namespace=my-evaluation-namespace
kubectl create -f my-deployment-eval.yaml --namespace=my-evaluation-namespace
kubectl create -f my-service-eval.yaml --namespace=my-evaluation-namespace
kubectl create -f my-ingress-eval.yaml --namespace=my-evaluation-namespace

echo "Evaluation K8S resources are: "
kubectl get all --namespace=my-evaluation-namespace

echo "Evaluation K8S Ingress is: "
kubectl get ingress --namespace=my-evaluation-namespace

echo "Waiting resources up..."
sleep 15

echo "Evaluation K8S resources are: "
kubectl get all --namespace=my-evaluation-namespace

echo "Checking status endpoint: "
curl -i  http://localhost:80/status

echo "Checking users endpoint: "
curl -i  http://localhost:80/users

echo "Checking user => id=1 endpoint: "
curl -i  http://localhost:80/users/1
