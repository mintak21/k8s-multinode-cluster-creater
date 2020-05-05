# An Official Example: Deploying WordPress and MySQL with Persistent Volumes

## Requirements

+ Kuebernetes Cluster (`minikube`, `kind`, `EKS` etc)
+ `kubectl` 1.14 and above

### Apply
```sh
kubectl apply -k ./
```

### Access
```sh
kubectl port-forward --address 0.0.0.0 svc/wordpress 80:80
```

### Cleanup
```sh
kubectl delete -k ./
```

# References
[公式リンク](https://kubernetes.io/docs/tutorials/stateful-application/mysql-wordpress-persistent-volume/#add-resource-configs-for-mysql-and-wordpress
)
