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

   kubectl expose pod my-first-pod --name new  --port=80 --target-port=80 --type=NodePort


      * Loadbalancer -> expose app outside the cluster


    kubectl expose pod my-first-pod --name my-lb --type=LoadBalancer --port=80 --target-port=80 
    

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

demo.yaml

syntax:
   key: value

 ## address
   city: pune
   state: MH
   Country: India
   pincode: 411001
   indian: true

   Data type : 
   number : 1,2,3,4
   string : india , pune 
   boolean :  True and False 
   List: [hero,Honda,yamaha,123,hero]
   set: { hero, yamaha}. --unique value
   Distionary /map : {key:value , key:value}

----
