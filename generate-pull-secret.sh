if [ "$#" -ne 4 ]; then
    echo "Usage: $0 <ns-name> <docker-server> <docker-username> <docker-password>"
    exit 1
fi
kubectl -n "$1"  create secret docker-registry docker-registry-pull --docker-server="$2" --docker-username="$3" --docker-password="$4" --dry-run=client -o yaml | kubeseal -o yaml --cert ../sealed-secret/pubkey.cert -w sealed-docker-registry-pull.yaml
