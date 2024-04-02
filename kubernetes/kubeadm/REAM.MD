# Kubernetes command

## show cluster related info 
```
kubectl cluster-info
```

## show all nodes 
```
kubectl get nodes
```

### create pod 


kubectl run <pod_name> --image=<imagename>

```
kubectl run my-first-pod --image=nginx 
```
### pod related info 

```
kubectl get pods
```
```
kubectl get -o wide pods  #details
```
```
kubectl get -o wide nodes 
```

```
kubectl describe pod my-first-pod
```
```
 kubectl run my-pod --port=80 --image=nginx
 ```
  
  ## kubernetes Object 

   1.Pods -smallest deployment unit of the k8s 

   2.Nodes-worker nodes

   3.service-Expose application outside the cluster/conatiner

      * ClusterIP -> interal communication inside the cluster

    kubectl expose pod my-first-pod --port=80 --type=ClusterIP

    kubectl get services
  
      * Nodeport -> expose app outside the cluster
   
   kubectl expose pod my-first-pod --port=80 --target-port=80 --type=NodePort

      * Loadbalancer -> expose app outside the cluster
  
   1. Namespace
   
   2. Replicaset
   
   3. Deployement

   4. DaemonSet

   5. statefulset

   6.  ConfigMap
   
   7.  Secrets
   
   8.  Pv and Pvc
   

   12. RBAC
   
   13. Ingress Gateway

---
## Manifest 

- configuration file of the object
- 