if [ "$1" -eq 1 ]; then
    kubectl delete secret nerf-pass
    kubectl delete -f nerf-storage.yaml
    kubectl delete -f nerf-cache.yaml
    kubectl delete -f nerf-gui.yaml
    kubectl delete -f nerf-ingress.yaml  
elif [ "$1" -eq 0 ]; then
    kubectl create secret generic nerf-pass --from-literal=nerf-pass=nerfpass --from-literal=turn-secret="cup5dBCknRijK4roVJSEUFikEpu8xdKAqGxubX7CbZ2YkpgC4zFsU5Ukqf97PHsE"
    kubectl create -f nerf-storage.yaml
    kubectl create -f nerf-cache.yaml
    kubectl create -f nerf-gui.yaml
    kubectl create -f nerf-ingress.yaml  
elif [ "$1" -eq 2 ]; then
    # kubectl create secret generic nerf-pass --from-literal=nerf-pass=nerfpass --from-literal=turn-secret="cup5dBCknRijK4roVJSEUFikEpu8xdKAqGxubX7CbZ2YkpgC4zFsU5Ukqf97PHsE"
    # kubectl create -f nerf-storage.yaml
    # kubectl create -f nerf-cache.yaml
    kubectl delete -f nerf-gui.yaml
    kubectl delete -f nerf-ingress.yaml  
elif [ "$1" -eq 3 ]; then
    # kubectl create secret generic nerf-pass --from-literal=nerf-pass=nerfpass --from-literal=turn-secret="cup5dBCknRijK4roVJSEUFikEpu8xdKAqGxubX7CbZ2YkpgC4zFsU5Ukqf97PHsE"
    # kubectl create -f nerf-storage.yaml
    # kubectl create -f nerf-cache.yaml
    kubectl create -f nerf-gui.yaml
    kubectl create -f nerf-ingress.yaml  
else
    echo "Usage: $0 [1]"
    exit 1
fi

