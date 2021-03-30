RED= `tput setaf 2`
NC='\033[0m'

echo "${RED}\nLET GO RUN SERVICES \n\n${NC}"
#minikube stop
#kubectl delete --all pods
#minikube delete
#echo "MINICUBE START"
#minikube start --vm-driver=docker
echo "DOCKER BUILD"
eval $(minikube docker-env)
docker build -t nginx_image .

kubectl apply -f nginx.yaml
kubectl get pods
minikube dashboard
