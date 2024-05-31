if [ "$1" -eq 1 ]; then
    kubectl delete secret rw-gs-pass
    kubectl delete -f rw-gs-storage.yaml
    kubectl delete -f rw-gs-cache.yaml
    kubectl delete -f rw-gs-gui.yaml
    kubectl delete -f rw-gs-ingress.yaml  
elif [ "$1" -eq 0 ]; then
    kubectl create secret generic rw-gs-pass --from-literal=rw-gs-pass=rwgspass --from-literal=turn-secret="cup5dBCknRijK4roVJSEUFikEpu8xdKAqGxubX7CbZ2YkpgC4zFsU5Ukqf97PHsE"
    kubectl create -f rw-gs-storage.yaml
    kubectl create -f rw-gs-cache.yaml
    kubectl create -f rw-gs-gui.yaml
    kubectl create -f rw-gs-ingress.yaml  
elif [ "$1" -eq 2 ]; then
    # kubectl create secret generic rw-gs-pass --from-literal=rw-gs-pass=rwgspass --from-literal=turn-secret="cup5dBCknRijK4roVJSEUFikEpu8xdKAqGxubX7CbZ2YkpgC4zFsU5Ukqf97PHsE"
    kubectl delete -f rw-gs-gui.yaml
    kubectl delete -f rw-gs-ingress.yaml  
elif [ "$1" -eq 3 ]; then
    # kubectl create secret generic rw-gs-pass --from-literal=rw-gs-pass=rwgspass --from-literal=turn-secret="cup5dBCknRijK4roVJSEUFikEpu8xdKAqGxubX7CbZ2YkpgC4zFsU5Ukqf97PHsE"
    kubectl create -f rw-gs-gui.yaml
    kubectl create -f rw-gs-ingress.yaml  
else
    echo "Usage: $0 [1]"
    exit 1
fi

# username: user
# password: rwgspass