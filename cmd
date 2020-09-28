krishna@evoke:~/Containerization$ git clone https://github.com/kdursoji/kubernetes-sidecar-pattern-v2.git
Cloning into 'kubernetes-sidecar-pattern-v2'...
remote: Enumerating objects: 19, done.
remote: Counting objects: 100% (19/19), done.
remote: Compressing objects: 100% (16/16), done.
remote: Total 19 (delta 2), reused 16 (delta 1), pack-reused 0
Unpacking objects: 100% (19/19), 83.30 KiB | 250.00 KiB/s, done.
krishna@evoke:~/Containerization$ ls
configmap-and-secret-volumes  kubernetes-sidecar-pattern-v2
ingress                       MultiContainer
ipc-master                    multi-container-with-reverse-proxy
knote-java                    sidecar-v2
KubernetesComponents          webapp-master
KubernetesConfigurationFile   webapp-master.zip
kubernetes-ingess
krishna@evoke:~/Containerization$ cd kubernetes-sidecar-pattern-v2/
krishna@evoke:~/Containerization/kubernetes-sidecar-pattern-v2$ ls
Build  Deploy  multi-container-pod.png  README.md
krishna@evoke:~/Containerization/kubernetes-sidecar-pattern-v2$ ls
Build  Deploy  multi-container-pod.png  README.md
krishna@evoke:~/Containerization/kubernetes-sidecar-pattern-v2$ cd Deploy/
krishna@evoke:~/Containerization/kubernetes-sidecar-pattern-v2/Deploy$ ls
db.yaml  web.yaml
krishna@evoke:~/Containerization/kubernetes-sidecar-pattern-v2/Deploy$ kubectl apply -f .
service/mysql created
deployment.apps/mysql created
service/web created
krishna@evoke:~/Containerization/kubernetes-sidecar-pattern-v2/Deploy$ minikube service web --url
http://192.168.99.115:30429
krishna@evoke:~/Containerization/kubernetes-sidecar-pattern-v2/Deploy$ curl http://$NODE_IP:$NODE_PORT/users/1
curl: (3) URL using bad/illegal format or missing URL
krishna@evoke:~/Containerization/kubernetes-sidecar-pattern-v2/Deploy$ export NODE_IP=192.168.99.115
krishna@evoke:~/Containerization/kubernetes-sidecar-pattern-v2/Deploy$ export NODE_PORT=30429
krishna@evoke:~/Containerization/kubernetes-sidecar-pattern-v2/Deploy$ curl http://$NODE_IP:$NODE_PORT/users/1
John Doekrishna@evoke:~/Containerization/kubernetes-sidecar-pattern-v2/Deploy$ curl http://$NODE_IP:$NODE_PORT/users/1
John Doekrishna@evoke:~/Containerization/kubernetes-sidecar-pattern-v2/Deploy$ curl http://$NODE_IP:$NODE_PORT/users/1
John Doekrishna@evoke:~/Containerization/kubernetes-sidecar-pattern-v2/Deploy$ curl http://$NODE_IP:$NODE_PORT/users/1
John Doe(c)krishna@evoke:~/Containerization/kubernetes-sidecar-pattern-v2/Deploy$ curl http://$NODE_IP:$NODE_PORT/users/1
John Doe(c)krishna@evoke:~/Containerization/kubernetes-sidecar-pattern-v2/Deploy$ curl http://$NODE_IP:$NODE_PORT/users/1
John Doe(c)krishna@evoke:~/Containerization/kubernetes-sidecar-pattern-v2/Deploy$ minikube service web --url


