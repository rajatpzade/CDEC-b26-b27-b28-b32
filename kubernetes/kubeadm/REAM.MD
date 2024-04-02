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
  
      * Nodeport -> expose app outside the cluster
  
      * Loadbalancer -> expose app outside the cluster
  
   4. Namespace
   
   5. Replicaset
   
   6. Deployement

   7. DaemonSet

   8. statefulset

   9.  ConfigMap
   
   10. Secrets
   11. 
   12. Pv and Pvc
   13. RBAC
   14. Ingress Gateway

---
## Manifest 

- configuration file of the object
- 