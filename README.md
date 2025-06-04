Última actualización: 2025-06-04 16:12:08

# TFM_K8s
Repositorio para las pruebas sobre Kompose del TFM.
Por como genera los archivos de K8s Kompose, cuando se despliegan no se crean como NodePorts o PortBalancers, por lo que no se puede acceder directamente a ellos. Para acceder es necesario utilizar  
`kubectl port-forward <nombre-del-pod> 3000:80`



