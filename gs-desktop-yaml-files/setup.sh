if [ "$1" -eq 1 ]; then
    kubectl delete secret &-gs-pass
    kubectl delete -f gs-storage.yaml
    kubectl delete -f gs-cache.yaml
    kubectl delete -f gs-gui.yaml
    kubectl delete -f gs-ingress.yaml  
elif [ "$1" -eq 0 ]; then
    kubectl create secret generic &-gs-pass --from-literal=&-gs-pass=&gspass --from-literal=turn-secret="cup5dBCknRijK4roVJSEUFikEpu8xdKAqGxubX7CbZ2YkpgC4zFsU5Ukqf97PHsE"
    kubectl create -f gs-storage.yaml
    kubectl create -f gs-cache.yaml
    kubectl create -f gs-gui.yaml
    kubectl create -f gs-ingress.yaml  
elif [ "$1" -eq 2 ]; then
    # kubectl create secret generic &-gs-pass --from-literal=&-gs-pass=&gspass --from-literal=turn-secret="cup5dBCknRijK4roVJSEUFikEpu8xdKAqGxubX7CbZ2YkpgC4zFsU5Ukqf97PHsE"
    # kubectl create -f &-gs-storage.yaml
    # kubectl create -f &-gs-cache.yaml
    kubectl delete -f gs-gui.yaml
    kubectl delete -f gs-ingress.yaml  
elif [ "$1" -eq 3 ]; then
    # kubectl create secret generic &-gs-pass --from-literal=&-gs-pass=&gspass --from-literal=turn-secret="cup5dBCknRijK4roVJSEUFikEpu8xdKAqGxubX7CbZ2YkpgC4zFsU5Ukqf97PHsE"
    # kubectl create -f &-gs-storage.yaml
    # kubectl create -f &-gs-cache.yaml
    kubectl create -f gs-gui.yaml
    kubectl create -f gs-ingress.yaml  
else
    echo "Usage: $0 [1]"
    exit 1
fi

# username: user
# password: &gspass