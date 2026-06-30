kubectl -n example create secret generic example-env --from-env-file=example-env.secret --dry-run=client -o yaml | kubeseal -o yaml --cert ../sealed-secret/pubkey.cert -w sealed-example-env.yaml
