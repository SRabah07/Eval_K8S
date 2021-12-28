echo "Generating secret object..."

kubectl create secret generic my-secret-map-eval --from-env-file .credentials --dry-run=client -o yaml > my-secret-eval.yaml