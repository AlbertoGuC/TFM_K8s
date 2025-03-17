# TFM_Test
Repositorio para las pruebas iniciales del TFM
Creadas las ramas prinicipales de un proyecto generico

docker build -t tfmwebtest:1.1 .  
docker run -d -p 3000:80 tfmwebtest:1.1

Añadido primer CICD

Con docker-compose.yaml:
#docker-compose up

curl "http://localhost:8000/download?url=https://github.com/AlbertoGuC/skills-hello-github-actions"

kubectl delete svc --all
kubectl exec -it <nombre-del-pod> -c repodown -- /bin/bash



