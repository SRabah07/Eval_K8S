# Context

This is the Kubernetes evaluation. It main purpose is setup a K8S cluster to deploy a User management API available [Here](https://hub.docker.com/repository/docker/rsalim1/k8s-evaluation-api) and uses a MYSQL Database [Here](https://hub.docker.com/r/datascientest/mysql-k8s).

## Docker compose

For testing purpose you could use the given docker compose `docker-compose up`, the api exposes three main endpoints:

- `/status` to get the API status
- `/users` to list users
- `/users/{id}` to get the user within the given identifier

```bash
(base) ➜  Eval_K8S git:(master) ✗ docker-compose up
[+] Running 2/2
 ⠿ Container mysql_db        Created                                                                                                                       0.0s
 ⠿ Container api-evaluation  Recreated                                                                                                                     0.1s
Attaching to api-evaluation, mysql_db
mysql_db        | 2021-12-28 12:37:23+00:00 [Note] [Entrypoint]: Entrypoint script for MySQL Server 8.0.25-1debian10 started.
mysql_db        | 2021-12-28 12:37:23+00:00 [Note] [Entrypoint]: Switching to dedicated user 'mysql'
mysql_db        | 2021-12-28 12:37:23+00:00 [Note] [Entrypoint]: Entrypoint script for MySQL Server 8.0.25-1debian10 started.
api-evaluation  | INFO:     Started server process [8]
api-evaluation  | INFO:     Waiting for application startup.
api-evaluation  | INFO:     Application startup complete.
api-evaluation  | INFO:     Uvicorn running on http://0.0.0.0:8000 (Press CTRL+C to quit)
mysql_db        | 2021-12-28T12:37:23.621258Z 0 [System] [MY-010116] [Server] /usr/sbin/mysqld (mysqld 8.0.25) starting as process 1
mysql_db        | 2021-12-28T12:37:23.630749Z 1 [System] [MY-013576] [InnoDB] InnoDB initialization has started.
mysql_db        | 2021-12-28T12:37:23.810346Z 1 [System] [MY-013577] [InnoDB] InnoDB initialization has ended.
mysql_db        | 2021-12-28T12:37:23.944338Z 0 [System] [MY-011323] [Server] X Plugin ready for connections. Bind-address: '::' port: 33060, socket: /var/run/mysqld/mysqlx.sock
mysql_db        | 2021-12-28T12:37:24.060915Z 0 [Warning] [MY-010068] [Server] CA certificate ca.pem is self signed.
mysql_db        | 2021-12-28T12:37:24.061142Z 0 [System] [MY-013602] [Server] Channel mysql_main configured to support TLS. Encrypted connections are now supported for this channel.
mysql_db        | 2021-12-28T12:37:24.065031Z 0 [Warning] [MY-011810] [Server] Insecure configuration for --pid-file: Location '/var/run/mysqld' in the path is accessible to all OS users. Consider choosing a different directory.
mysql_db        | 2021-12-28T12:37:24.110961Z 0 [System] [MY-010931] [Server] /usr/sbin/mysqld: ready for connections. Version: '8.0.25'  socket: '/var/run/mysqld/mysqld.sock'  port: 3306  MySQL Community Server - GPL.
mysql_db        | mbind: Operation not permitted
api-evaluation  | MySQL URL = mysql://root:datascientest1234@mysql_db:3306/Main
api-evaluation  | INFO:     172.20.0.1:61352 - "GET /users HTTP/1.1" 200 OK
api-evaluation  | INFO:     172.20.0.1:61412 - "GET /status HTTP/1.1" 200 OK
api-evaluation  | INFO:     172.20.0.1:61472 - "GET /users/1 HTTP/1.1" 200 OK
api-evaluation  | INFO:     172.20.0.1:61504 - "GET /users/2 HTTP/1.1" 200 OK
api-evaluation  | INFO:     172.20.0.1:62334 - "GET /status HTTP/1.1" 200 OK
api-evaluation  | INFO:     172.20.0.1:62394 - "GET /users/2 HTTP/1.1" 200 OK
api-evaluation  | INFO:     172.20.0.1:62414 - "GET /users/1 HTTP/1.1" 200 OK
api-evaluation  | INFO:     172.20.0.1:62668 - "GET /users/ HTTP/1.1" 307 Temporary Redirect
api-evaluation  | INFO:     172.20.0.1:62668 - "GET /users HTTP/1.1" 200 OK
api-evaluation  | INFO:     172.20.0.1:62760 - "GET /users/ HTTP/1.1" 307 Temporary Redirect
api-evaluation  | INFO:     172.20.0.1:62760 - "GET /users HTTP/1.1" 200 OK
api-evaluation  | INFO:     172.20.0.1:62950 - "GET /users/ HTTP/1.1" 307 Temporary Redirect
api-evaluation  | INFO:     172.20.0.1:62950 - "GET /users HTTP/1.1" 200 OK
api-evaluation  | INFO:     172.20.0.1:64330 - "GET /users/ HTTP/1.1" 307 Temporary Redirect
api-evaluation  | INFO:     172.20.0.1:64348 - "GET /users HTTP/1.1" 200 OK
api-evaluation  | INFO:     172.20.0.1:64416 - "GET /users HTTP/1.1" 200 OK



```

```json
k8S git:(master) curl http: //localhost:9200/status
1%
k8S git:(master) curl http: //localhost:9200/users/2
{
    "user_id": 2,
    "username": "Linda",
    "email": "eleifend.Cras.sed@cursusnonegestas.com"
}%
k8S git:(master) curl http: //localhost:9200/users
[
    {
        "user_id": 1,
        "username": "August",
        "email": "eu.neque.pellentesque@eumetus.edu"
    },
    {
        "user_id": 2,
        "username": "Linda",
        "email": "eleifend.Cras.sed@cursusnonegestas.com"
    },
    {
        "user_id": 3,
        "username": "Kareem",
        "email": "urna@nonummyultricies.co.uk"
    },
    {
        "user_id": 4,
        "username": "Alyssa",
        "email": "Nulla@sagittis.co.uk"
    },
    {
        "user_id": 5,
        "username": "Demetria",
        "email": "nibh@maurisa.ca"
    },
    {
        "user_id": 6,
        "username": "Ahmed",
        "email": "enim.nisl@ac.net"
    },
    {
        "user_id": 7,
        "username": "Chantale",
        "email": "dictum.eleifend.nunc@Praesentinterdumligula.edu"
    },
    {
        "user_id": 8,
        "username": "Marny",
        "email": "ut.ipsum.ac@vehicula.net"
    },
    {
        "user_id": 9,
        "username": "Ryan",
        "email": "Morbi.vehicula@turpis.ca"
    },
    {
        "user_id": 10,
        "username": "Yuli",
        "email": "suscipit.nonummy@lacuspedesagittis.net"
    },
    {
        "user_id": 11,
        "username": "Cailin",
        "email": "elit.Etiam.laoreet@pedemalesuada.org"
    },
    {
        "user_id": 12,
        "username": "Berk",
        "email": "ipsum.Donec.sollicitudin@consequatdolorvitae.ca"
    },
    {
        "user_id": 13,
        "username": "Jacob",
        "email": "venenatis.vel@metus.ca"
    },
    {
        "user_id": 14,
        "username": "Keely",
        "email": "id@consequatnec.ca"
    },
    {
        "user_id": 15,
        "username": "Kameko",
        "email": "sem.molestie.sodales@Vestibulumut.edu"
    },
    {
        "user_id": 16,
        "username": "Amy",
        "email": "ac.turpis.egestas@Duiscursus.edu"
    },
    {
        "user_id": 17,
        "username": "Latifah",
        "email": "et.rutrum.non@consectetuer.net"
    },
    {
        "user_id": 18,
        "username": "Jameson",
        "email": "erat.volutpat@Craseu.net"
    },
    {
        "user_id": 19,
        "username": "Hasad",
        "email": "rutrum.eu.ultrices@nuncsed.net"
    },
    {
        "user_id": 20,
        "username": "Anthony",
        "email": "ante@adipiscingelitAliquam.org"
    },
    {
        "user_id": 21,
        "username": "Oscar",
        "email": "enim.Etiam@erat.org"
    },
    {
        "user_id": 22,
        "username": "Ivy",
        "email": "malesuada@nislarcuiaculis.edu"
    },
    {
        "user_id": 23,
        "username": "Hall",
        "email": "Morbi.vehicula@penatibus.com"
    },
    {
        "user_id": 24,
        "username": "Hilary",
        "email": "Aenean.euismod.mauris@odio.ca"
    },
    {
        "user_id": 25,
        "username": "Plato",
        "email": "eu.eleifend.nec@consequatenimdiam.net"
    },
    {
        "user_id": 26,
        "username": "Jin",
        "email": "Proin.vel@rutrumeuultrices.com"
    },
    {
        "user_id": 27,
        "username": "Cadman",
        "email": "risus@sociosquadlitora.ca"
    },
    {
        "user_id": 28,
        "username": "Kasper",
        "email": "semper@fringillacursus.edu"
    },
    {
        "user_id": 29,
        "username": "Sydney",
        "email": "ornare.In.faucibus@tortornibhsit.co.uk"
    },
    {
        "user_id": 30,
        "username": "Alexander",
        "email": "sapien@Sedpharetra.ca"
    },
    {
        "user_id": 31,
        "username": "Gisela",
        "email": "at.velit.Cras@at.com"
    },
    {
        "user_id": 32,
        "username": "Xenos",
        "email": "ante@enimSuspendissealiquet.co.uk"
    },
    {
        "user_id": 33,
        "username": "Chester",
        "email": "libero.at@eunulla.ca"
    },
    {
        "user_id": 34,
        "username": "Keelie",
        "email": "suscipit.est@odio.edu"
    },
    {
        "user_id": 35,
        "username": "Brett",
        "email": "accumsan@pretiumneque.com"
    },
    {
        "user_id": 36,
        "username": "Craig",
        "email": "mollis.Duis.sit@ligula.net"
    },
    {
        "user_id": 37,
        "username": "Ashton",
        "email": "accumsan@parturient.net"
    },
    {
        "user_id": 38,
        "username": "Yolanda",
        "email": "in.aliquet@egetvenenatis.ca"
    },
    {
        "user_id": 39,
        "username": "Lysandra",
        "email": "odio.Aliquam@tincidunttempus.com"
    },
    {
        "user_id": 40,
        "username": "Drake",
        "email": "neque.et@bibendum.co.uk"
    },
    {
        "user_id": 41,
        "username": "Wayne",
        "email": "dolor@ipsum.edu"
    },
    {
        "user_id": 42,
        "username": "Chaim",
        "email": "convallis.convallis@sitamet.co.uk"
    },
    {
        "user_id": 43,
        "username": "Gary",
        "email": "dapibus@Donec.org"
    },
    {
        "user_id": 44,
        "username": "Oren",
        "email": "interdum.Nunc@infelisNulla.co.uk"
    },
    {
        "user_id": 45,
        "username": "Pandora",
        "email": "vel.nisl@Donec.edu"
    },
    {
        "user_id": 46,
        "username": "Octavius",
        "email": "pellentesque.eget@ami.edu"
    },
    {
        "user_id": 47,
        "username": "James",
        "email": "aliquet.molestie.tellus@ametfaucibus.net"
    },
    {
        "user_id": 48,
        "username": "Nola",
        "email": "Nunc@Etiamgravidamolestie.edu"
    },
    {
        "user_id": 49,
        "username": "Rachel",
        "email": "pretium@Phasellus.net"
    },
    {
        "user_id": 50,
        "username": "Matthew",
        "email": "suscipit@justo.org"
    },
    {
        "user_id": 51,
        "username": "Holmes",
        "email": "quis.turpis.vitae@diam.org"
    },
    {
        "user_id": 52,
        "username": "Geraldine",
        "email": "primis@odio.ca"
    },
    {
        "user_id": 53,
        "username": "Griffin",
        "email": "sit.amet@Donecfelisorci.net"
    },
    {
        "user_id": 54,
        "username": "David",
        "email": "fames@rutrumurna.org"
    },
    {
        "user_id": 55,
        "username": "Kato",
        "email": "Phasellus.at.augue@arcuSedet.edu"
    },
    {
        "user_id": 56,
        "username": "Garth",
        "email": "adipiscing@Donec.com"
    },
    {
        "user_id": 57,
        "username": "Clarke",
        "email": "Quisque.purus.sapien@Pellentesqueultricies.com"
    },
    {
        "user_id": 58,
        "username": "Veda",
        "email": "eu@aliquamerosturpis.org"
    },
    {
        "user_id": 59,
        "username": "Harlan",
        "email": "Aenean@infelisNulla.edu"
    },
    {
        "user_id": 60,
        "username": "Peter",
        "email": "eros@neque.org"
    },
    {
        "user_id": 61,
        "username": "Simon",
        "email": "ac@enim.org"
    },
    {
        "user_id": 62,
        "username": "Barrett",
        "email": "egestas.a@blanditcongueIn.co.uk"
    },
    {
        "user_id": 63,
        "username": "Gary",
        "email": "Morbi@massaSuspendisse.net"
    },
    {
        "user_id": 64,
        "username": "Aubrey",
        "email": "non.enim@lorem.org"
    },
    {
        "user_id": 65,
        "username": "Kim",
        "email": "est.Nunc@egetmetus.edu"
    },
    {
        "user_id": 66,
        "username": "Connor",
        "email": "faucibus.ut.nulla@acturpis.ca"
    },
    {
        "user_id": 67,
        "username": "Cruz",
        "email": "et@sodalespurus.org"
    },
    {
        "user_id": 68,
        "username": "Reece",
        "email": "felis.eget.varius@Aenean.net"
    },
    {
        "user_id": 69,
        "username": "Sybill",
        "email": "euismod.et@dolorDonecfringilla.edu"
    },
    {
        "user_id": 70,
        "username": "Felicia",
        "email": "Curabitur@hendreritconsectetuercursus.net"
    },
    {
        "user_id": 71,
        "username": "Charity",
        "email": "sem.elit.pharetra@molestie.org"
    },
    {
        "user_id": 72,
        "username": "Tiger",
        "email": "rutrum.magna@Sed.com"
    },
    {
        "user_id": 73,
        "username": "Declan",
        "email": "euismod.et@DonecfringillaDonec.net"
    },
    {
        "user_id": 74,
        "username": "Octavius",
        "email": "eu@non.com"
    },
    {
        "user_id": 75,
        "username": "Kylynn",
        "email": "sapien.gravida@Nuncmauris.net"
    },
    {
        "user_id": 76,
        "username": "Teegan",
        "email": "metus@Nulla.edu"
    },
    {
        "user_id": 77,
        "username": "Kane",
        "email": "Nulla.interdum@adui.ca"
    },
    {
        "user_id": 78,
        "username": "Geraldine",
        "email": "ligula.Aliquam@non.net"
    },
    {
        "user_id": 79,
        "username": "Candace",
        "email": "dui.quis.accumsan@mauris.co.uk"
    },
    {
        "user_id": 80,
        "username": "Walter",
        "email": "Proin.non@acfermentumvel.edu"
    },
    {
        "user_id": 81,
        "username": "Hedley",
        "email": "dis.parturient@nascetur.co.uk"
    },
    {
        "user_id": 82,
        "username": "Heather",
        "email": "est.mauris@eratvolutpatNulla.net"
    },
    {
        "user_id": 83,
        "username": "Guinevere",
        "email": "vitae.aliquam@nullamagna.ca"
    },
    {
        "user_id": 84,
        "username": "Lewis",
        "email": "consectetuer.ipsum@erat.com"
    },
    {
        "user_id": 85,
        "username": "Skyler",
        "email": "a.ultricies.adipiscing@Integer.co.uk"
    },
    {
        "user_id": 86,
        "username": "Daniel",
        "email": "cursus.Nunc@et.net"
    },
    {
        "user_id": 87,
        "username": "Norman",
        "email": "lorem.ut@Mauriseuturpis.net"
    },
    {
        "user_id": 88,
        "username": "Chaney",
        "email": "ut.cursus@in.net"
    },
    {
        "user_id": 89,
        "username": "Lenore",
        "email": "sodales@ornare.net"
    },
    {
        "user_id": 90,
        "username": "Veronica",
        "email": "quis@scelerisque.edu"
    },
    {
        "user_id": 91,
        "username": "Imelda",
        "email": "nibh.lacinia.orci@cursusNuncmauris.net"
    },
    {
        "user_id": 92,
        "username": "Nolan",
        "email": "et.magnis.dis@leo.net"
    },
    {
        "user_id": 93,
        "username": "Lysandra",
        "email": "ut.ipsum@quis.net"
    },
    {
        "user_id": 94,
        "username": "Noel",
        "email": "primis@Aenean.edu"
    },
    {
        "user_id": 95,
        "username": "Kyla",
        "email": "Nunc.commodo.auctor@variusultricesmauris.co.uk"
    },
    {
        "user_id": 96,
        "username": "Allen",
        "email": "metus.In@idnuncinterdum.com"
    },
    {
        "user_id": 97,
        "username": "Yardley",
        "email": "fringilla@Quisque.org"
    },
    {
        "user_id": 98,
        "username": "Rigel",
        "email": "ornare@augueeutempor.ca"
    },
    {
        "user_id": 99,
        "username": "Keefe",
        "email": "mattis.Integer@lectussit.edu"
    },
    {
        "user_id": 100,
        "username": "Abbot",
        "email": "Cum.sociis@risusvariusorci.ca"
    }
]%


```



## Kubernetes

This API can be deployed into K8S cluster. It uses the different K8S resources/Objects as below:

- Namespace to group those resources under the same thing
- Config map to store the Database URL
- Secret to store the Database Password
- Deployment, within three pods, each one is composed from two container the API and the Database
- Service to access the API 
- Ingress to route outside the traffic. For this resource an extra work is need. It depends on the K8S used, it might be necessary to install / enable an Ingress Controller, more on that [Here](https://kubernetes.io/docs/concepts/services-networking/ingress/):

    - **a)** If you are using Minikube `minikube addons enable ingress`.
    - **b)** If you are using Kubernetes provided by Docker Desktop application (MacOS/Windows) you can use the `NGINX Ingress Controller` and install it following the [documentation](https://kubernetes.github.io/ingress-nginx/deploy/). In my case I used [Helm](https://helm.sh/docs/topics/charts/#:~:text=Helm%20uses%20a%20packaging%20format,%2C%20caches%2C%20and%20so%20on.) to install the Ingress Controller resources. Once you have Helm installed [Here](https://helm.sh/docs/helm/helm_install/). You can use the command below as explained in the [Ingress Documentation](https://kubernetes.github.io/ingress-nginx/deploy/)

    ```bash
    kubectl create namespace ingress-nginx

    helm upgrade --install ingress-nginx ingress-nginx \
  --repo https://kubernetes.github.io/ingress-nginx \
  --namespace ingress-nginx

    ```

## Start / Stop

I provide two bash shell script to help deploying this API:

- `delete.sh` will delete the namespace `my-evaluation-namespace` and all related resources. You can use this script to cleanup you environment for example
- `start.sh` this script will create all needed resources: namespace, config map, secret map, deployment, service and ingress. Once all resource up (right now I am just using a simple sleep), I test the three main endpoints. If you are using Minikube, please run this `./start.sh minikube` it will enable Ingress and show the Minikube ip address. 



```json
(base) ➜  Eval_K8S git:(master) ✗ ./delete.sh 
Delete evaluation K8S resources within namespace 'my-evaluation-namespace '...
namespace "my-evaluation-namespace" deleted
(base) ➜  Eval_K8S git:(master) ✗ ./start.sh 
Create evaluation K8S resources under 'my-evaluation-namespace' namespace...
namespace/my-evaluation-namespace created
configmap/my-config-map-eval created
secret/my-secret-map-eval created
deployment.apps/my-deployment-eval created
service/my-service-eval created
ingress.networking.k8s.io/my-ingress-eval created
Evaluation K8S resources are: 
NAME                                      READY   STATUS              RESTARTS   AGE
pod/my-deployment-eval-56f7b4788f-kdrt5   0/2     ContainerCreating   0          0s
pod/my-deployment-eval-56f7b4788f-sshhm   0/2     ContainerCreating   0          0s
pod/my-deployment-eval-56f7b4788f-wgsxn   0/2     ContainerCreating   0          0s

NAME                      TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)    AGE
service/my-service-eval   ClusterIP   10.108.53.70   <none>        9300/TCP   0s

NAME                                 READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/my-deployment-eval   0/3     3            0           0s

NAME                                            DESIRED   CURRENT   READY   AGE
replicaset.apps/my-deployment-eval-56f7b4788f   3         3         0       0s
Evaluation K8S Ingress is: 
NAME              CLASS   HOSTS   ADDRESS   PORTS   AGE
my-ingress-eval   nginx   *                 80      0s
Waiting resources up...
Evaluation K8S resources are: 
NAME                                      READY   STATUS    RESTARTS   AGE
pod/my-deployment-eval-56f7b4788f-kdrt5   2/2     Running   0          36s
pod/my-deployment-eval-56f7b4788f-sshhm   2/2     Running   0          36s
pod/my-deployment-eval-56f7b4788f-wgsxn   2/2     Running   0          36s

NAME                      TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)    AGE
service/my-service-eval   ClusterIP   10.108.53.70   <none>        9300/TCP   36s

NAME                                 READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/my-deployment-eval   3/3     3            3           36s

NAME                                            DESIRED   CURRENT   READY   AGE
replicaset.apps/my-deployment-eval-56f7b4788f   3         3         3       36s
Checking status endpoint: 
HTTP/1.1 200 OK
Date: Tue,
28 Dec 2021 12: 46: 10 GMT
Content-Type: application/json
Content-Length: 1
Connection: keep-alive

1Checking users endpoint: 
HTTP/1.1 200 OK
Date: Tue,
28 Dec 2021 12: 46: 10 GMT
Content-Type: application/json
Content-Length: 7196
Connection: keep-alive

[
    {
        "user_id": 1,
        "username": "August",
        "email": "eu.neque.pellentesque@eumetus.edu"
    },
    {
        "user_id": 2,
        "username": "Linda",
        "email": "eleifend.Cras.sed@cursusnonegestas.com"
    },
    {
        "user_id": 3,
        "username": "Kareem",
        "email": "urna@nonummyultricies.co.uk"
    },
    {
        "user_id": 4,
        "username": "Alyssa",
        "email": "Nulla@sagittis.co.uk"
    },
    {
        "user_id": 5,
        "username": "Demetria",
        "email": "nibh@maurisa.ca"
    },
    {
        "user_id": 6,
        "username": "Ahmed",
        "email": "enim.nisl@ac.net"
    },
    {
        "user_id": 7,
        "username": "Chantale",
        "email": "dictum.eleifend.nunc@Praesentinterdumligula.edu"
    },
    {
        "user_id": 8,
        "username": "Marny",
        "email": "ut.ipsum.ac@vehicula.net"
    },
    {
        "user_id": 9,
        "username": "Ryan",
        "email": "Morbi.vehicula@turpis.ca"
    },
    {
        "user_id": 10,
        "username": "Yuli",
        "email": "suscipit.nonummy@lacuspedesagittis.net"
    },
    {
        "user_id": 11,
        "username": "Cailin",
        "email": "elit.Etiam.laoreet@pedemalesuada.org"
    },
    {
        "user_id": 12,
        "username": "Berk",
        "email": "ipsum.Donec.sollicitudin@consequatdolorvitae.ca"
    },
    {
        "user_id": 13,
        "username": "Jacob",
        "email": "venenatis.vel@metus.ca"
    },
    {
        "user_id": 14,
        "username": "Keely",
        "email": "id@consequatnec.ca"
    },
    {
        "user_id": 15,
        "username": "Kameko",
        "email": "sem.molestie.sodales@Vestibulumut.edu"
    },
    {
        "user_id": 16,
        "username": "Amy",
        "email": "ac.turpis.egestas@Duiscursus.edu"
    },
    {
        "user_id": 17,
        "username": "Latifah",
        "email": "et.rutrum.non@consectetuer.net"
    },
    {
        "user_id": 18,
        "username": "Jameson",
        "email": "erat.volutpat@Craseu.net"
    },
    {
        "user_id": 19,
        "username": "Hasad",
        "email": "rutrum.eu.ultrices@nuncsed.net"
    },
    {
        "user_id": 20,
        "username": "Anthony",
        "email": "ante@adipiscingelitAliquam.org"
    },
    {
        "user_id": 21,
        "username": "Oscar",
        "email": "enim.Etiam@erat.org"
    },
    {
        "user_id": 22,
        "username": "Ivy",
        "email": "malesuada@nislarcuiaculis.edu"
    },
    {
        "user_id": 23,
        "username": "Hall",
        "email": "Morbi.vehicula@penatibus.com"
    },
    {
        "user_id": 24,
        "username": "Hilary",
        "email": "Aenean.euismod.mauris@odio.ca"
    },
    {
        "user_id": 25,
        "username": "Plato",
        "email": "eu.eleifend.nec@consequatenimdiam.net"
    },
    {
        "user_id": 26,
        "username": "Jin",
        "email": "Proin.vel@rutrumeuultrices.com"
    },
    {
        "user_id": 27,
        "username": "Cadman",
        "email": "risus@sociosquadlitora.ca"
    },
    {
        "user_id": 28,
        "username": "Kasper",
        "email": "semper@fringillacursus.edu"
    },
    {
        "user_id": 29,
        "username": "Sydney",
        "email": "ornare.In.faucibus@tortornibhsit.co.uk"
    },
    {
        "user_id": 30,
        "username": "Alexander",
        "email": "sapien@Sedpharetra.ca"
    },
    {
        "user_id": 31,
        "username": "Gisela",
        "email": "at.velit.Cras@at.com"
    },
    {
        "user_id": 32,
        "username": "Xenos",
        "email": "ante@enimSuspendissealiquet.co.uk"
    },
    {
        "user_id": 33,
        "username": "Chester",
        "email": "libero.at@eunulla.ca"
    },
    {
        "user_id": 34,
        "username": "Keelie",
        "email": "suscipit.est@odio.edu"
    },
    {
        "user_id": 35,
        "username": "Brett",
        "email": "accumsan@pretiumneque.com"
    },
    {
        "user_id": 36,
        "username": "Craig",
        "email": "mollis.Duis.sit@ligula.net"
    },
    {
        "user_id": 37,
        "username": "Ashton",
        "email": "accumsan@parturient.net"
    },
    {
        "user_id": 38,
        "username": "Yolanda",
        "email": "in.aliquet@egetvenenatis.ca"
    },
    {
        "user_id": 39,
        "username": "Lysandra",
        "email": "odio.Aliquam@tincidunttempus.com"
    },
    {
        "user_id": 40,
        "username": "Drake",
        "email": "neque.et@bibendum.co.uk"
    },
    {
        "user_id": 41,
        "username": "Wayne",
        "email": "dolor@ipsum.edu"
    },
    {
        "user_id": 42,
        "username": "Chaim",
        "email": "convallis.convallis@sitamet.co.uk"
    },
    {
        "user_id": 43,
        "username": "Gary",
        "email": "dapibus@Donec.org"
    },
    {
        "user_id": 44,
        "username": "Oren",
        "email": "interdum.Nunc@infelisNulla.co.uk"
    },
    {
        "user_id": 45,
        "username": "Pandora",
        "email": "vel.nisl@Donec.edu"
    },
    {
        "user_id": 46,
        "username": "Octavius",
        "email": "pellentesque.eget@ami.edu"
    },
    {
        "user_id": 47,
        "username": "James",
        "email": "aliquet.molestie.tellus@ametfaucibus.net"
    },
    {
        "user_id": 48,
        "username": "Nola",
        "email": "Nunc@Etiamgravidamolestie.edu"
    },
    {
        "user_id": 49,
        "username": "Rachel",
        "email": "pretium@Phasellus.net"
    },
    {
        "user_id": 50,
        "username": "Matthew",
        "email": "suscipit@justo.org"
    },
    {
        "user_id": 51,
        "username": "Holmes",
        "email": "quis.turpis.vitae@diam.org"
    },
    {
        "user_id": 52,
        "username": "Geraldine",
        "email": "primis@odio.ca"
    },
    {
        "user_id": 53,
        "username": "Griffin",
        "email": "sit.amet@Donecfelisorci.net"
    },
    {
        "user_id": 54,
        "username": "David",
        "email": "fames@rutrumurna.org"
    },
    {
        "user_id": 55,
        "username": "Kato",
        "email": "Phasellus.at.augue@arcuSedet.edu"
    },
    {
        "user_id": 56,
        "username": "Garth",
        "email": "adipiscing@Donec.com"
    },
    {
        "user_id": 57,
        "username": "Clarke",
        "email": "Quisque.purus.sapien@Pellentesqueultricies.com"
    },
    {
        "user_id": 58,
        "username": "Veda",
        "email": "eu@aliquamerosturpis.org"
    },
    {
        "user_id": 59,
        "username": "Harlan",
        "email": "Aenean@infelisNulla.edu"
    },
    {
        "user_id": 60,
        "username": "Peter",
        "email": "eros@neque.org"
    },
    {
        "user_id": 61,
        "username": "Simon",
        "email": "ac@enim.org"
    },
    {
        "user_id": 62,
        "username": "Barrett",
        "email": "egestas.a@blanditcongueIn.co.uk"
    },
    {
        "user_id": 63,
        "username": "Gary",
        "email": "Morbi@massaSuspendisse.net"
    },
    {
        "user_id": 64,
        "username": "Aubrey",
        "email": "non.enim@lorem.org"
    },
    {
        "user_id": 65,
        "username": "Kim",
        "email": "est.Nunc@egetmetus.edu"
    },
    {
        "user_id": 66,
        "username": "Connor",
        "email": "faucibus.ut.nulla@acturpis.ca"
    },
    {
        "user_id": 67,
        "username": "Cruz",
        "email": "et@sodalespurus.org"
    },
    {
        "user_id": 68,
        "username": "Reece",
        "email": "felis.eget.varius@Aenean.net"
    },
    {
        "user_id": 69,
        "username": "Sybill",
        "email": "euismod.et@dolorDonecfringilla.edu"
    },
    {
        "user_id": 70,
        "username": "Felicia",
        "email": "Curabitur@hendreritconsectetuercursus.net"
    },
    {
        "user_id": 71,
        "username": "Charity",
        "email": "sem.elit.pharetra@molestie.org"
    },
    {
        "user_id": 72,
        "username": "Tiger",
        "email": "rutrum.magna@Sed.com"
    },
    {
        "user_id": 73,
        "username": "Declan",
        "email": "euismod.et@DonecfringillaDonec.net"
    },
    {
        "user_id": 74,
        "username": "Octavius",
        "email": "eu@non.com"
    },
    {
        "user_id": 75,
        "username": "Kylynn",
        "email": "sapien.gravida@Nuncmauris.net"
    },
    {
        "user_id": 76,
        "username": "Teegan",
        "email": "metus@Nulla.edu"
    },
    {
        "user_id": 77,
        "username": "Kane",
        "email": "Nulla.interdum@adui.ca"
    },
    {
        "user_id": 78,
        "username": "Geraldine",
        "email": "ligula.Aliquam@non.net"
    },
    {
        "user_id": 79,
        "username": "Candace",
        "email": "dui.quis.accumsan@mauris.co.uk"
    },
    {
        "user_id": 80,
        "username": "Walter",
        "email": "Proin.non@acfermentumvel.edu"
    },
    {
        "user_id": 81,
        "username": "Hedley",
        "email": "dis.parturient@nascetur.co.uk"
    },
    {
        "user_id": 82,
        "username": "Heather",
        "email": "est.mauris@eratvolutpatNulla.net"
    },
    {
        "user_id": 83,
        "username": "Guinevere",
        "email": "vitae.aliquam@nullamagna.ca"
    },
    {
        "user_id": 84,
        "username": "Lewis",
        "email": "consectetuer.ipsum@erat.com"
    },
    {
        "user_id": 85,
        "username": "Skyler",
        "email": "a.ultricies.adipiscing@Integer.co.uk"
    },
    {
        "user_id": 86,
        "username": "Daniel",
        "email": "cursus.Nunc@et.net"
    },
    {
        "user_id": 87,
        "username": "Norman",
        "email": "lorem.ut@Mauriseuturpis.net"
    },
    {
        "user_id": 88,
        "username": "Chaney",
        "email": "ut.cursus@in.net"
    },
    {
        "user_id": 89,
        "username": "Lenore",
        "email": "sodales@ornare.net"
    },
    {
        "user_id": 90,
        "username": "Veronica",
        "email": "quis@scelerisque.edu"
    },
    {
        "user_id": 91,
        "username": "Imelda",
        "email": "nibh.lacinia.orci@cursusNuncmauris.net"
    },
    {
        "user_id": 92,
        "username": "Nolan",
        "email": "et.magnis.dis@leo.net"
    },
    {
        "user_id": 93,
        "username": "Lysandra",
        "email": "ut.ipsum@quis.net"
    },
    {
        "user_id": 94,
        "username": "Noel",
        "email": "primis@Aenean.edu"
    },
    {
        "user_id": 95,
        "username": "Kyla",
        "email": "Nunc.commodo.auctor@variusultricesmauris.co.uk"
    },
    {
        "user_id": 96,
        "username": "Allen",
        "email": "metus.In@idnuncinterdum.com"
    },
    {
        "user_id": 97,
        "username": "Yardley",
        "email": "fringilla@Quisque.org"
    },
    {
        "user_id": 98,
        "username": "Rigel",
        "email": "ornare@augueeutempor.ca"
    },
    {
        "user_id": 99,
        "username": "Keefe",
        "email": "mattis.Integer@lectussit.edu"
    },
    {
        "user_id": 100,
        "username": "Abbot",
        "email": "Cum.sociis@risusvariusorci.ca"
    }
]Checking user => id=1 endpoint: 
HTTP/1.1 200 OK
Date: Tue,
28 Dec 2021 12: 46: 10 GMT
Content-Type: application/json
Content-Length: 77
Connection: keep-alive

{
    "user_id": 1,
    "username": "August",
    "email": "eu.neque.pellentesque@eumetus.edu"
}%                                                                                  
(base) ➜  Eval_K8S git:(master) ✗ 



```