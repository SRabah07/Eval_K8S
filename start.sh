if [ -z "$1" ]
  then
    echo "If you are running K8S using Minikube, restart this script by providing 'minikube' as argument. Otherwise we suppose you are using Desktop Docker to enable K8S"
    INGRESS_IP='localhost'
else
    echo "You are using Minikube. Ingress will be enabled"
    minikube addons enable ingress
    INGRESS_IP=`minikube ip`
fi

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
sleep 45

echo "Evaluation K8S resources are: "
kubectl get all --namespace=my-evaluation-namespace

echo "Ingress is listing on Address: http://$INGRESS_IP:80/. endpoints: [status, users, users/{id}]"

echo "Checking status endpoint: "
curl -i  http://$INGRESS_IP:80/status

echo "Checking users endpoint: "
curl -i  http://$INGRESS_IP:80/users

echo "Checking user => id=1 endpoint: "
curl -i  http://$INGRESS_IP:80/users/1