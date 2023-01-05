# kubernetes-website
A simple website running on a k3d local kubernetes cluster.

Provision a static flask web application.


## Deployment steps
### Pre-requisites
1. A working local kubernetes runtime (k3d, minikube suggested)
2. A docker runtime

### Steps
1. Clone the project to your machine

2. Create a cluster. Run ```k3d create cluster my-cluster```

3. cd into the /deployments directory and run  
```kubectl apply -f namespace.yaml```  
```kubectl apply -f deployment.yaml```  
```kubectl apply -f loadbalancer.yaml```

4. Expose the port on your local kubernetes runtime.   
    If you're using k3d, you can basically run  
    ```k3d cluster edit mycluster --port-add "5000:5000@loadbalancer"```

5. Helpr web application should be up and running.  
    To verify this, run ```curl localhost:5000/```
    Head to your browser and type http://localhost:5000/ to view the web application

6. If you run into any issues while executing any of these steps, simply create a case

Cheers!
