# Docker to run MySQL 

(base) ➜  Eval_K8S docker container run -it -d --name db_mysql -p3306:3306  --env-file .env  datascientest/mysql-k8s:1.0.0
docker: open .env: no such file or directory.
See 'docker run --help'.
(base) ➜  Eval_K8S docker container run -it -d --name db_mysql -p3306:3306  --env-file .env  datascientest/mysql-k8s:1.0.0
Unable to find image 'datascientest/mysql-k8s:1.0.0' locally
1.0.0: Pulling from datascientest/mysql-k8s
69692152171a: Pull complete 
1651b0be3df3: Pull complete 
951da7386bc8: Pull complete 
0f86c95aa242: Pull complete 
37ba2d8bd4fe: Pull complete 
6d278bb05e94: Pull complete 
497efbd93a3e: Pull complete 
f7fddf10c2c2: Pull complete 
16415d159dfb: Pull complete 
0e530ffc6b73: Pull complete 
b0a4a1a77178: Pull complete 
cd90f92aa9ef: Pull complete 
dd6d37f60fe5: Pull complete 
Digest: sha256:d5555b401347ff54df5ab690bd8a757fbcf1e2aed2709acccc4ca88f89ba60b2
Status: Downloaded newer image for datascientest/mysql-k8s:1.0.0
63db7abb55c735137ba14deca10d4025e0e78ce2a6e99cf92031e8a1184ff27d
(base) ➜  Eval_K8S docker logs 63db7abb55c735137ba14deca10d4025e0e78ce2a6e99cf92031e8a1184ff27d
2021-12-27 21:02:47+00:00 [Note] [Entrypoint]: Entrypoint script for MySQL Server 8.0.25-1debian10 started.
2021-12-27 21:02:47+00:00 [Note] [Entrypoint]: Switching to dedicated user 'mysql'
2021-12-27 21:02:47+00:00 [Note] [Entrypoint]: Entrypoint script for MySQL Server 8.0.25-1debian10 started.
2021-12-27 21:02:47+00:00 [Note] [Entrypoint]: Initializing database files
2021-12-27T21:02:47.300376Z 0 [System] [MY-013169] [Server] /usr/sbin/mysqld (mysqld 8.0.25) initializing of server in progress as process 43
2021-12-27T21:02:47.306702Z 1 [System] [MY-013576] [InnoDB] InnoDB initialization has started.
2021-12-27T21:02:47.869858Z 1 [System] [MY-013577] [InnoDB] InnoDB initialization has ended.
2021-12-27T21:02:49.611875Z 6 [Warning] [MY-010453] [Server] root@localhost is created with an empty password ! Please consider switching off the --initialize-insecure option.
(base) ➜  Eval_K8S docker logs 63db7abb55c735137ba14deca10d4025e0e78ce2a6e99cf92031e8a1184ff27d
2021-12-27 21:02:47+00:00 [Note] [Entrypoint]: Entrypoint script for MySQL Server 8.0.25-1debian10 started.
2021-12-27 21:02:47+00:00 [Note] [Entrypoint]: Switching to dedicated user 'mysql'
2021-12-27 21:02:47+00:00 [Note] [Entrypoint]: Entrypoint script for MySQL Server 8.0.25-1debian10 started.
2021-12-27 21:02:47+00:00 [Note] [Entrypoint]: Initializing database files
2021-12-27T21:02:47.300376Z 0 [System] [MY-013169] [Server] /usr/sbin/mysqld (mysqld 8.0.25) initializing of server in progress as process 43
2021-12-27T21:02:47.306702Z 1 [System] [MY-013576] [InnoDB] InnoDB initialization has started.
2021-12-27T21:02:47.869858Z 1 [System] [MY-013577] [InnoDB] InnoDB initialization has ended.
2021-12-27T21:02:49.611875Z 6 [Warning] [MY-010453] [Server] root@localhost is created with an empty password ! Please consider switching off the --initialize-insecure option.
2021-12-27 21:02:53+00:00 [Note] [Entrypoint]: Database files initialized
2021-12-27 21:02:53+00:00 [Note] [Entrypoint]: Starting temporary server
mysqld will log errors to /var/lib/mysql/63db7abb55c7.err
mysqld is running as pid 90
2021-12-27 21:02:54+00:00 [Note] [Entrypoint]: Temporary server started.
Warning: Unable to load '/usr/share/zoneinfo/iso3166.tab' as time zone. Skipping it.
Warning: Unable to load '/usr/share/zoneinfo/leap-seconds.list' as time zone. Skipping it.
Warning: Unable to load '/usr/share/zoneinfo/zone.tab' as time zone. Skipping it.
Warning: Unable to load '/usr/share/zoneinfo/zone1970.tab' as time zone. Skipping it.
2021-12-27 21:02:58+00:00 [Note] [Entrypoint]: Creating database Main

2021-12-27 21:02:58+00:00 [Note] [Entrypoint]: /usr/local/bin/docker-entrypoint.sh: running /docker-entrypoint-initdb.d/create_schema.sql


2021-12-27 21:02:58+00:00 [Note] [Entrypoint]: /usr/local/bin/docker-entrypoint.sh: running /docker-entrypoint-initdb.d/insert_data.sql


2021-12-27 21:02:58+00:00 [Note] [Entrypoint]: Stopping temporary server
(base) ➜  Eval_K8S docker logs 63db7abb55c735137ba14deca10d4025e0e78ce2a6e99cf92031e8a1184ff27d
2021-12-27 21:02:47+00:00 [Note] [Entrypoint]: Entrypoint script for MySQL Server 8.0.25-1debian10 started.
2021-12-27 21:02:47+00:00 [Note] [Entrypoint]: Switching to dedicated user 'mysql'
2021-12-27 21:02:47+00:00 [Note] [Entrypoint]: Entrypoint script for MySQL Server 8.0.25-1debian10 started.
2021-12-27 21:02:47+00:00 [Note] [Entrypoint]: Initializing database files
2021-12-27T21:02:47.300376Z 0 [System] [MY-013169] [Server] /usr/sbin/mysqld (mysqld 8.0.25) initializing of server in progress as process 43
2021-12-27T21:02:47.306702Z 1 [System] [MY-013576] [InnoDB] InnoDB initialization has started.
2021-12-27T21:02:47.869858Z 1 [System] [MY-013577] [InnoDB] InnoDB initialization has ended.
2021-12-27T21:02:49.611875Z 6 [Warning] [MY-010453] [Server] root@localhost is created with an empty password ! Please consider switching off the --initialize-insecure option.
2021-12-27 21:02:53+00:00 [Note] [Entrypoint]: Database files initialized
2021-12-27 21:02:53+00:00 [Note] [Entrypoint]: Starting temporary server
mysqld will log errors to /var/lib/mysql/63db7abb55c7.err
mysqld is running as pid 90
2021-12-27 21:02:54+00:00 [Note] [Entrypoint]: Temporary server started.
Warning: Unable to load '/usr/share/zoneinfo/iso3166.tab' as time zone. Skipping it.
Warning: Unable to load '/usr/share/zoneinfo/leap-seconds.list' as time zone. Skipping it.
Warning: Unable to load '/usr/share/zoneinfo/zone.tab' as time zone. Skipping it.
Warning: Unable to load '/usr/share/zoneinfo/zone1970.tab' as time zone. Skipping it.
2021-12-27 21:02:58+00:00 [Note] [Entrypoint]: Creating database Main

2021-12-27 21:02:58+00:00 [Note] [Entrypoint]: /usr/local/bin/docker-entrypoint.sh: running /docker-entrypoint-initdb.d/create_schema.sql


2021-12-27 21:02:58+00:00 [Note] [Entrypoint]: /usr/local/bin/docker-entrypoint.sh: running /docker-entrypoint-initdb.d/insert_data.sql


2021-12-27 21:02:58+00:00 [Note] [Entrypoint]: Stopping temporary server
2021-12-27 21:02:59+00:00 [Note] [Entrypoint]: Temporary server stopped

2021-12-27 21:02:59+00:00 [Note] [Entrypoint]: MySQL init process done. Ready for start up.

2021-12-27T21:02:59.459095Z 0 [System] [MY-010116] [Server] /usr/sbin/mysqld (mysqld 8.0.25) starting as process 1
2021-12-27T21:02:59.470134Z 1 [System] [MY-013576] [InnoDB] InnoDB initialization has started.
2021-12-27T21:02:59.632413Z 1 [System] [MY-013577] [InnoDB] InnoDB initialization has ended.
2021-12-27T21:02:59.768025Z 0 [System] [MY-011323] [Server] X Plugin ready for connections. Bind-address: '::' port: 33060, socket: /var/run/mysqld/mysqlx.sock
2021-12-27T21:02:59.842971Z 0 [Warning] [MY-010068] [Server] CA certificate ca.pem is self signed.
2021-12-27T21:02:59.843228Z 0 [System] [MY-013602] [Server] Channel mysql_main configured to support TLS. Encrypted connections are now supported for this channel.
2021-12-27T21:02:59.848637Z 0 [Warning] [MY-011810] [Server] Insecure configuration for --pid-file: Location '/var/run/mysqld' in the path is accessible to all OS users. Consider choosing a different directory.
2021-12-27T21:02:59.874923Z 0 [System] [MY-010931] [Server] /usr/sbin/mysqld: ready for connections. Version: '8.0.25'  socket: '/var/run/mysqld/mysqld.sock'  port: 3306  MySQL Community Server - GPL.
(base) ➜  Eval_K8S docker logs 63db7abb55c735137ba14deca10d4025e0e78ce2a6e99cf92031e8a1184ff27d
2021-12-27 21:02:47+00:00 [Note] [Entrypoint]: Entrypoint script for MySQL Server 8.0.25-1debian10 started.
2021-12-27 21:02:47+00:00 [Note] [Entrypoint]: Switching to dedicated user 'mysql'
2021-12-27 21:02:47+00:00 [Note] [Entrypoint]: Entrypoint script for MySQL Server 8.0.25-1debian10 started.
2021-12-27 21:02:47+00:00 [Note] [Entrypoint]: Initializing database files
2021-12-27T21:02:47.300376Z 0 [System] [MY-013169] [Server] /usr/sbin/mysqld (mysqld 8.0.25) initializing of server in progress as process 43
2021-12-27T21:02:47.306702Z 1 [System] [MY-013576] [InnoDB] InnoDB initialization has started.
2021-12-27T21:02:47.869858Z 1 [System] [MY-013577] [InnoDB] InnoDB initialization has ended.
2021-12-27T21:02:49.611875Z 6 [Warning] [MY-010453] [Server] root@localhost is created with an empty password ! Please consider switching off the --initialize-insecure option.
2021-12-27 21:02:53+00:00 [Note] [Entrypoint]: Database files initialized
2021-12-27 21:02:53+00:00 [Note] [Entrypoint]: Starting temporary server
mysqld will log errors to /var/lib/mysql/63db7abb55c7.err
mysqld is running as pid 90
2021-12-27 21:02:54+00:00 [Note] [Entrypoint]: Temporary server started.
Warning: Unable to load '/usr/share/zoneinfo/iso3166.tab' as time zone. Skipping it.
Warning: Unable to load '/usr/share/zoneinfo/leap-seconds.list' as time zone. Skipping it.
Warning: Unable to load '/usr/share/zoneinfo/zone.tab' as time zone. Skipping it.
Warning: Unable to load '/usr/share/zoneinfo/zone1970.tab' as time zone. Skipping it.
2021-12-27 21:02:58+00:00 [Note] [Entrypoint]: Creating database Main

2021-12-27 21:02:58+00:00 [Note] [Entrypoint]: /usr/local/bin/docker-entrypoint.sh: running /docker-entrypoint-initdb.d/create_schema.sql


2021-12-27 21:02:58+00:00 [Note] [Entrypoint]: /usr/local/bin/docker-entrypoint.sh: running /docker-entrypoint-initdb.d/insert_data.sql


2021-12-27 21:02:58+00:00 [Note] [Entrypoint]: Stopping temporary server
2021-12-27 21:02:59+00:00 [Note] [Entrypoint]: Temporary server stopped

2021-12-27 21:02:59+00:00 [Note] [Entrypoint]: MySQL init process done. Ready for start up.

2021-12-27T21:02:59.459095Z 0 [System] [MY-010116] [Server] /usr/sbin/mysqld (mysqld 8.0.25) starting as process 1
2021-12-27T21:02:59.470134Z 1 [System] [MY-013576] [InnoDB] InnoDB initialization has started.
2021-12-27T21:02:59.632413Z 1 [System] [MY-013577] [InnoDB] InnoDB initialization has ended.
2021-12-27T21:02:59.768025Z 0 [System] [MY-011323] [Server] X Plugin ready for connections. Bind-address: '::' port: 33060, socket: /var/run/mysqld/mysqlx.sock
2021-12-27T21:02:59.842971Z 0 [Warning] [MY-010068] [Server] CA certificate ca.pem is self signed.
2021-12-27T21:02:59.843228Z 0 [System] [MY-013602] [Server] Channel mysql_main configured to support TLS. Encrypted connections are now supported for this channel.
2021-12-27T21:02:59.848637Z 0 [Warning] [MY-011810] [Server] Insecure configuration for --pid-file: Location '/var/run/mysqld' in the path is accessible to all OS users. Consider choosing a different directory.
2021-12-27T21:02:59.874923Z 0 [System] [MY-010931] [Server] /usr/sbin/mysqld: ready for connections. Version: '8.0.25'  socket: '/var/run/mysqld/mysqld.sock'  port: 3306  MySQL Community Server - GPL.
(base) ➜  Eval_K8S docker logs 63db7abb55c735137ba14deca10d4025e0e78ce2a6e99cf92031e8a1184ff27d
2021-12-27 21:02:47+00:00 [Note] [Entrypoint]: Entrypoint script for MySQL Server 8.0.25-1debian10 started.
2021-12-27 21:02:47+00:00 [Note] [Entrypoint]: Switching to dedicated user 'mysql'
2021-12-27 21:02:47+00:00 [Note] [Entrypoint]: Entrypoint script for MySQL Server 8.0.25-1debian10 started.
2021-12-27 21:02:47+00:00 [Note] [Entrypoint]: Initializing database files
2021-12-27T21:02:47.300376Z 0 [System] [MY-013169] [Server] /usr/sbin/mysqld (mysqld 8.0.25) initializing of server in progress as process 43
2021-12-27T21:02:47.306702Z 1 [System] [MY-013576] [InnoDB] InnoDB initialization has started.
2021-12-27T21:02:47.869858Z 1 [System] [MY-013577] [InnoDB] InnoDB initialization has ended.
2021-12-27T21:02:49.611875Z 6 [Warning] [MY-010453] [Server] root@localhost is created with an empty password ! Please consider switching off the --initialize-insecure option.
2021-12-27 21:02:53+00:00 [Note] [Entrypoint]: Database files initialized
2021-12-27 21:02:53+00:00 [Note] [Entrypoint]: Starting temporary server
mysqld will log errors to /var/lib/mysql/63db7abb55c7.err
mysqld is running as pid 90
2021-12-27 21:02:54+00:00 [Note] [Entrypoint]: Temporary server started.
Warning: Unable to load '/usr/share/zoneinfo/iso3166.tab' as time zone. Skipping it.
Warning: Unable to load '/usr/share/zoneinfo/leap-seconds.list' as time zone. Skipping it.
Warning: Unable to load '/usr/share/zoneinfo/zone.tab' as time zone. Skipping it.
Warning: Unable to load '/usr/share/zoneinfo/zone1970.tab' as time zone. Skipping it.
2021-12-27 21:02:58+00:00 [Note] [Entrypoint]: Creating database Main

2021-12-27 21:02:58+00:00 [Note] [Entrypoint]: /usr/local/bin/docker-entrypoint.sh: running /docker-entrypoint-initdb.d/create_schema.sql


2021-12-27 21:02:58+00:00 [Note] [Entrypoint]: /usr/local/bin/docker-entrypoint.sh: running /docker-entrypoint-initdb.d/insert_data.sql


2021-12-27 21:02:58+00:00 [Note] [Entrypoint]: Stopping temporary server
2021-12-27 21:02:59+00:00 [Note] [Entrypoint]: Temporary server stopped

2021-12-27 21:02:59+00:00 [Note] [Entrypoint]: MySQL init process done. Ready for start up.

2021-12-27T21:02:59.459095Z 0 [System] [MY-010116] [Server] /usr/sbin/mysqld (mysqld 8.0.25) starting as process 1
2021-12-27T21:02:59.470134Z 1 [System] [MY-013576] [InnoDB] InnoDB initialization has started.
2021-12-27T21:02:59.632413Z 1 [System] [MY-013577] [InnoDB] InnoDB initialization has ended.
2021-12-27T21:02:59.768025Z 0 [System] [MY-011323] [Server] X Plugin ready for connections. Bind-address: '::' port: 33060, socket: /var/run/mysqld/mysqlx.sock
2021-12-27T21:02:59.842971Z 0 [Warning] [MY-010068] [Server] CA certificate ca.pem is self signed.
2021-12-27T21:02:59.843228Z 0 [System] [MY-013602] [Server] Channel mysql_main configured to support TLS. Encrypted connections are now supported for this channel.
2021-12-27T21:02:59.848637Z 0 [Warning] [MY-011810] [Server] Insecure configuration for --pid-file: Location '/var/run/mysqld' in the path is accessible to all OS users. Consider choosing a different directory.
2021-12-27T21:02:59.874923Z 0 [System] [MY-010931] [Server] /usr/sbin/mysqld: ready for connections. Version: '8.0.25'  socket: '/var/run/mysqld/mysqld.sock'  port: 3306  MySQL Community Server - GPL.
(base) ➜  Eval_K8S docker container run -it -d --name db_mysql -p3306:3306  --env-file .env  datascientest/mysql-k8s:1.0.0
(base) ➜  Eval_K8S 



--

(base) ➜  Eval_K8S docker build -t k8s-evaluation-api:0.0.1 .                                  
[+] Building 42.1s (10/10) FINISHED                                                                                                                                  
 => [internal] load build definition from Dockerfile                                                                                                            0.0s
 => => transferring dockerfile: 293B                                                                                                                            0.0s
 => [internal] load .dockerignore                                                                                                                               0.0s
 => => transferring context: 2B                                                                                                                                 0.0s
 => [internal] load metadata for docker.io/library/ubuntu:20.04                                                                                                 1.9s
 => [auth] library/ubuntu:pull token for registry-1.docker.io                                                                                                   0.0s
 => [internal] load build context                                                                                                                               0.5s
 => => transferring context: 2.04kB                                                                                                                             0.5s
 => [1/4] FROM docker.io/library/ubuntu:20.04@sha256:626ffe58f6e7566e00254b638eb7e0f3b11d4da9675088f4781a50ae288f3322                                           0.0s
 => => resolve docker.io/library/ubuntu:20.04@sha256:626ffe58f6e7566e00254b638eb7e0f3b11d4da9675088f4781a50ae288f3322                                           0.0s
 => => sha256:626ffe58f6e7566e00254b638eb7e0f3b11d4da9675088f4781a50ae288f3322 1.42kB / 1.42kB                                                                  0.0s
 => => sha256:7cc0576c7c0ec2384de5cbf245f41567e922aab1b075f3e8ad565f508032df17 529B / 529B                                                                      0.0s
 => => sha256:ba6acccedd2923aee4c2acc6a23780b14ed4b8a5fa4e14e252a23b846df9b6c1 1.46kB / 1.46kB                                                                  0.0s
 => [2/4] ADD files/requirements.txt files/main.py /application/                                                                                                0.1s
 => [3/4] WORKDIR /application                                                                                                                                  0.0s
 => [4/4] RUN apt update && apt install python3-pip libmysqlclient-dev -y && pip install -r requirements.txt                                                   35.4s
 => exporting to image                                                                                                                                          4.2s 
 => => exporting layers                                                                                                                                         4.2s 
 => => writing image sha256:bab3809c2447be5d75be7a02a68f9da80876b40a2285e8a5253a2eeec18e45d6                                                                    0.0s 
 => => naming to docker.io/library/k8s-evaluation-api:0.0.1                                                                                                     0.0s 
                                                                                                                                                                     
Use 'docker scan' to run Snyk tests against images to find vulnerabilities and learn how to fix them                                                                 
(base) ➜  Eval_K8S docker container run -it -d --name db_mysql -p3306:3306  --env-file .env  datascientest/mysql-k8s:1.0.0
(base) ➜  Eval_K8S docker container run -it -d --name eval_api -p8800:8000  --env-file .env  k8s-evaluation-api:0.0.1
ae42e31cc1640b53d5dfd9e88ef4a0ead0db1b836ccb04a783086406af70c67e
(base) ➜  Eval_K8S docker logs ae42e31cc1640b53d5dfd9e88ef4a0ead0db1b836ccb04a783086406af70c67e
INFO:     Started server process [10]
INFO:     Waiting for application startup.
INFO:     Application startup complete.
INFO:     Uvicorn running on http://0.0.0.0:8000 (Press CTRL+C to quit)
(base) ➜  Eval_K8S curl http://localhost:8800/status
1%                                                                                                                                                                   
(base) ➜  Eval_K8S curl http://localhost:8800/users 
Internal Server Error%                                                                                                                                               
(base) ➜  Eval_K8S docker logs ae42e31cc1640b53d5dfd9e88ef4a0ead0db1b836ccb04a783086406af70c67e
INFO:     Started server process [10]
INFO:     Waiting for application startup.
INFO:     Application startup complete.
INFO:     Uvicorn running on http://0.0.0.0:8000 (Press CTRL+C to quit)
INFO:     172.17.0.1:59992 - "GET /status HTTP/1.1" 200 OK
INFO:     172.17.0.1:60228 - "GET /users HTTP/1.1" 500 Internal Server Error
ERROR:    Exception in ASGI application
Traceback (most recent call last):
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/base.py", line 3250, in _wrap_pool_connect
    return fn()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 310, in connect
    return _ConnectionFairy._checkout(self)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 868, in _checkout
    fairy = _ConnectionRecord.checkout(pool)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 476, in checkout
    rec = pool._do_get()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/impl.py", line 146, in _do_get
    self._dec_overflow()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/langhelpers.py", line 70, in __exit__
    compat.raise_(
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/compat.py", line 207, in raise_
    raise exception
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/impl.py", line 143, in _do_get
    return self._create_connection()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 256, in _create_connection
    return _ConnectionRecord(self)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 371, in __init__
    self.__connect()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 666, in __connect
    pool.logger.debug("Error on connect(): %s", e)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/langhelpers.py", line 70, in __exit__
    compat.raise_(
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/compat.py", line 207, in raise_
    raise exception
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 661, in __connect
    self.dbapi_connection = connection = pool._invoke_creator(self)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/create.py", line 590, in connect
    return dialect.connect(*cargs, **cparams)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/default.py", line 597, in connect
    return self.dbapi.connect(*cargs, **cparams)
  File "/usr/local/lib/python3.8/dist-packages/MySQLdb/__init__.py", line 123, in Connect
    return Connection(*args, **kwargs)
  File "/usr/local/lib/python3.8/dist-packages/MySQLdb/connections.py", line 185, in __init__
    super().__init__(*args, **kwargs2)
MySQLdb._exceptions.OperationalError: (2002, "Can't connect to local MySQL server through socket '/var/run/mysqld/mysqld.sock' (2)")

The above exception was the direct cause of the following exception:

Traceback (most recent call last):
  File "/usr/local/lib/python3.8/dist-packages/uvicorn/protocols/http/h11_impl.py", line 373, in run_asgi
    result = await app(self.scope, self.receive, self.send)
  File "/usr/local/lib/python3.8/dist-packages/uvicorn/middleware/proxy_headers.py", line 75, in __call__
    return await self.app(scope, receive, send)
  File "/usr/local/lib/python3.8/dist-packages/fastapi/applications.py", line 208, in __call__
    await super().__call__(scope, receive, send)
  File "/usr/local/lib/python3.8/dist-packages/starlette/applications.py", line 112, in __call__
    await self.middleware_stack(scope, receive, send)
  File "/usr/local/lib/python3.8/dist-packages/starlette/middleware/errors.py", line 181, in __call__
    raise exc
  File "/usr/local/lib/python3.8/dist-packages/starlette/middleware/errors.py", line 159, in __call__
    await self.app(scope, receive, _send)
  File "/usr/local/lib/python3.8/dist-packages/starlette/exceptions.py", line 82, in __call__
    raise exc
  File "/usr/local/lib/python3.8/dist-packages/starlette/exceptions.py", line 71, in __call__
    await self.app(scope, receive, sender)
  File "/usr/local/lib/python3.8/dist-packages/starlette/routing.py", line 656, in __call__
    await route.handle(scope, receive, send)
  File "/usr/local/lib/python3.8/dist-packages/starlette/routing.py", line 259, in handle
    await self.app(scope, receive, send)
  File "/usr/local/lib/python3.8/dist-packages/starlette/routing.py", line 61, in app
    response = await func(request)
  File "/usr/local/lib/python3.8/dist-packages/fastapi/routing.py", line 226, in app
    raw_response = await run_endpoint_function(
  File "/usr/local/lib/python3.8/dist-packages/fastapi/routing.py", line 159, in run_endpoint_function
    return await dependant.call(**values)
  File "/application/./main.py", line 42, in get_users
    with mysql_engine.connect() as connection:
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/base.py", line 3204, in connect
    return self._connection_cls(self, close_with_result=close_with_result)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/base.py", line 96, in __init__
    else engine.raw_connection()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/base.py", line 3283, in raw_connection
    return self._wrap_pool_connect(self.pool.connect, _connection)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/base.py", line 3253, in _wrap_pool_connect
    Connection._handle_dbapi_exception_noconnection(
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/base.py", line 2100, in _handle_dbapi_exception_noconnection
    util.raise_(
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/compat.py", line 207, in raise_
    raise exception
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/base.py", line 3250, in _wrap_pool_connect
    return fn()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 310, in connect
    return _ConnectionFairy._checkout(self)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 868, in _checkout
    fairy = _ConnectionRecord.checkout(pool)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 476, in checkout
    rec = pool._do_get()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/impl.py", line 146, in _do_get
    self._dec_overflow()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/langhelpers.py", line 70, in __exit__
    compat.raise_(
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/compat.py", line 207, in raise_
    raise exception
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/impl.py", line 143, in _do_get
    return self._create_connection()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 256, in _create_connection
    return _ConnectionRecord(self)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 371, in __init__
    self.__connect()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 666, in __connect
    pool.logger.debug("Error on connect(): %s", e)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/langhelpers.py", line 70, in __exit__
    compat.raise_(
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/compat.py", line 207, in raise_
    raise exception
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 661, in __connect
    self.dbapi_connection = connection = pool._invoke_creator(self)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/create.py", line 590, in connect
    return dialect.connect(*cargs, **cparams)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/default.py", line 597, in connect
    return self.dbapi.connect(*cargs, **cparams)
  File "/usr/local/lib/python3.8/dist-packages/MySQLdb/__init__.py", line 123, in Connect
    return Connection(*args, **kwargs)
  File "/usr/local/lib/python3.8/dist-packages/MySQLdb/connections.py", line 185, in __init__
    super().__init__(*args, **kwargs2)
sqlalchemy.exc.OperationalError: (MySQLdb._exceptions.OperationalError) (2002, "Can't connect to local MySQL server through socket '/var/run/mysqld/mysqld.sock' (2)")
(Background on this error at: https://sqlalche.me/e/14/e3q8)
(base) ➜  Eval_K8S docker container stop ae42e31cc1640b53d5dfd9e88ef4a0ead0db1b836ccb04a783086406af70c67e
ae42e31cc1640b53d5dfd9e88ef4a0ead0db1b836ccb04a783086406af70c67e
(base) ➜  Eval_K8S docker container rm ae42e31cc1640b53d5dfd9e88ef4a0ead0db1b836ccb04a783086406af70c67e
ae42e31cc1640b53d5dfd9e88ef4a0ead0db1b836ccb04a783086406af70c67e
(base) ➜  Eval_K8S docker container run -it -d --name eval_api -p8800:8000  --env-file .env  k8s-evaluation-api:0.0.1
1180abf09f3a4a99b3ee94b6eff55e9ce87a0452bcce05b632a89872860b7d40
(base) ➜  Eval_K8S docker logs 1180abf09f3a4a99b3ee94b6eff55e9ce87a0452bcce05b632a89872860b7d40
INFO:     Started server process [9]
INFO:     Waiting for application startup.
INFO:     Application startup complete.
INFO:     Uvicorn running on http://0.0.0.0:8000 (Press CTRL+C to quit)
(base) ➜  Eval_K8S curl http://localhost:8800/users                                                        
Internal Server Error%                                                                                                                                               
(base) ➜  Eval_K8S docker logs 1180abf09f3a4a99b3ee94b6eff55e9ce87a0452bcce05b632a89872860b7d40
INFO:     Started server process [9]
INFO:     Waiting for application startup.
INFO:     Application startup complete.
INFO:     Uvicorn running on http://0.0.0.0:8000 (Press CTRL+C to quit)
INFO:     172.17.0.1:64430 - "GET /users HTTP/1.1" 500 Internal Server Error
ERROR:    Exception in ASGI application
Traceback (most recent call last):
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/base.py", line 3250, in _wrap_pool_connect
    return fn()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 310, in connect
    return _ConnectionFairy._checkout(self)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 868, in _checkout
    fairy = _ConnectionRecord.checkout(pool)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 476, in checkout
    rec = pool._do_get()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/impl.py", line 146, in _do_get
    self._dec_overflow()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/langhelpers.py", line 70, in __exit__
    compat.raise_(
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/compat.py", line 207, in raise_
    raise exception
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/impl.py", line 143, in _do_get
    return self._create_connection()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 256, in _create_connection
    return _ConnectionRecord(self)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 371, in __init__
    self.__connect()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 666, in __connect
    pool.logger.debug("Error on connect(): %s", e)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/langhelpers.py", line 70, in __exit__
    compat.raise_(
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/compat.py", line 207, in raise_
    raise exception
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 661, in __connect
    self.dbapi_connection = connection = pool._invoke_creator(self)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/create.py", line 590, in connect
    return dialect.connect(*cargs, **cparams)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/default.py", line 597, in connect
    return self.dbapi.connect(*cargs, **cparams)
  File "/usr/local/lib/python3.8/dist-packages/MySQLdb/__init__.py", line 123, in Connect
    return Connection(*args, **kwargs)
  File "/usr/local/lib/python3.8/dist-packages/MySQLdb/connections.py", line 185, in __init__
    super().__init__(*args, **kwargs2)
MySQLdb._exceptions.OperationalError: (2002, "Can't connect to local MySQL server through socket '/var/run/mysqld/mysqld.sock' (2)")

The above exception was the direct cause of the following exception:

Traceback (most recent call last):
  File "/usr/local/lib/python3.8/dist-packages/uvicorn/protocols/http/h11_impl.py", line 373, in run_asgi
    result = await app(self.scope, self.receive, self.send)
  File "/usr/local/lib/python3.8/dist-packages/uvicorn/middleware/proxy_headers.py", line 75, in __call__
    return await self.app(scope, receive, send)
  File "/usr/local/lib/python3.8/dist-packages/fastapi/applications.py", line 208, in __call__
    await super().__call__(scope, receive, send)
  File "/usr/local/lib/python3.8/dist-packages/starlette/applications.py", line 112, in __call__
    await self.middleware_stack(scope, receive, send)
  File "/usr/local/lib/python3.8/dist-packages/starlette/middleware/errors.py", line 181, in __call__
    raise exc
  File "/usr/local/lib/python3.8/dist-packages/starlette/middleware/errors.py", line 159, in __call__
    await self.app(scope, receive, _send)
  File "/usr/local/lib/python3.8/dist-packages/starlette/exceptions.py", line 82, in __call__
    raise exc
  File "/usr/local/lib/python3.8/dist-packages/starlette/exceptions.py", line 71, in __call__
    await self.app(scope, receive, sender)
  File "/usr/local/lib/python3.8/dist-packages/starlette/routing.py", line 656, in __call__
    await route.handle(scope, receive, send)
  File "/usr/local/lib/python3.8/dist-packages/starlette/routing.py", line 259, in handle
    await self.app(scope, receive, send)
  File "/usr/local/lib/python3.8/dist-packages/starlette/routing.py", line 61, in app
    response = await func(request)
  File "/usr/local/lib/python3.8/dist-packages/fastapi/routing.py", line 226, in app
    raw_response = await run_endpoint_function(
  File "/usr/local/lib/python3.8/dist-packages/fastapi/routing.py", line 159, in run_endpoint_function
    return await dependant.call(**values)
  File "/application/./main.py", line 42, in get_users
    with mysql_engine.connect() as connection:
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/base.py", line 3204, in connect
    return self._connection_cls(self, close_with_result=close_with_result)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/base.py", line 96, in __init__
    else engine.raw_connection()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/base.py", line 3283, in raw_connection
    return self._wrap_pool_connect(self.pool.connect, _connection)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/base.py", line 3253, in _wrap_pool_connect
    Connection._handle_dbapi_exception_noconnection(
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/base.py", line 2100, in _handle_dbapi_exception_noconnection
    util.raise_(
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/compat.py", line 207, in raise_
    raise exception
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/base.py", line 3250, in _wrap_pool_connect
    return fn()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 310, in connect
    return _ConnectionFairy._checkout(self)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 868, in _checkout
    fairy = _ConnectionRecord.checkout(pool)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 476, in checkout
    rec = pool._do_get()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/impl.py", line 146, in _do_get
    self._dec_overflow()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/langhelpers.py", line 70, in __exit__
    compat.raise_(
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/compat.py", line 207, in raise_
    raise exception
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/impl.py", line 143, in _do_get
    return self._create_connection()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 256, in _create_connection
    return _ConnectionRecord(self)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 371, in __init__
    self.__connect()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 666, in __connect
    pool.logger.debug("Error on connect(): %s", e)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/langhelpers.py", line 70, in __exit__
    compat.raise_(
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/compat.py", line 207, in raise_
    raise exception
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 661, in __connect
    self.dbapi_connection = connection = pool._invoke_creator(self)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/create.py", line 590, in connect
    return dialect.connect(*cargs, **cparams)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/default.py", line 597, in connect
    return self.dbapi.connect(*cargs, **cparams)
  File "/usr/local/lib/python3.8/dist-packages/MySQLdb/__init__.py", line 123, in Connect
    return Connection(*args, **kwargs)
  File "/usr/local/lib/python3.8/dist-packages/MySQLdb/connections.py", line 185, in __init__
    super().__init__(*args, **kwargs2)
sqlalchemy.exc.OperationalError: (MySQLdb._exceptions.OperationalError) (2002, "Can't connect to local MySQL server through socket '/var/run/mysqld/mysqld.sock' (2)")
(Background on this error at: https://sqlalche.me/e/14/e3q8)
(base) ➜  Eval_K8S docker logs d5555b401347ff54df5ab690bd8a757fbcf1e2aed2709acccc4ca88f89ba60b2
Error: No such container: d5555b401347ff54df5ab690bd8a757fbcf1e2aed2709acccc4ca88f89ba60b2
(base) ➜  Eval_K8S docker logs 63db7abb55c735137ba14deca10d4025e0e78ce2a6e99cf92031e8a1184ff27d
2021-12-27 21:02:47+00:00 [Note] [Entrypoint]: Entrypoint script for MySQL Server 8.0.25-1debian10 started.
2021-12-27 21:02:47+00:00 [Note] [Entrypoint]: Switching to dedicated user 'mysql'
2021-12-27 21:02:47+00:00 [Note] [Entrypoint]: Entrypoint script for MySQL Server 8.0.25-1debian10 started.
2021-12-27 21:02:47+00:00 [Note] [Entrypoint]: Initializing database files
2021-12-27T21:02:47.300376Z 0 [System] [MY-013169] [Server] /usr/sbin/mysqld (mysqld 8.0.25) initializing of server in progress as process 43
2021-12-27T21:02:47.306702Z 1 [System] [MY-013576] [InnoDB] InnoDB initialization has started.
2021-12-27T21:02:47.869858Z 1 [System] [MY-013577] [InnoDB] InnoDB initialization has ended.
2021-12-27T21:02:49.611875Z 6 [Warning] [MY-010453] [Server] root@localhost is created with an empty password ! Please consider switching off the --initialize-insecure option.
2021-12-27 21:02:53+00:00 [Note] [Entrypoint]: Database files initialized
2021-12-27 21:02:53+00:00 [Note] [Entrypoint]: Starting temporary server
mysqld will log errors to /var/lib/mysql/63db7abb55c7.err
mysqld is running as pid 90
2021-12-27 21:02:54+00:00 [Note] [Entrypoint]: Temporary server started.
Warning: Unable to load '/usr/share/zoneinfo/iso3166.tab' as time zone. Skipping it.
Warning: Unable to load '/usr/share/zoneinfo/leap-seconds.list' as time zone. Skipping it.
Warning: Unable to load '/usr/share/zoneinfo/zone.tab' as time zone. Skipping it.
Warning: Unable to load '/usr/share/zoneinfo/zone1970.tab' as time zone. Skipping it.
2021-12-27 21:02:58+00:00 [Note] [Entrypoint]: Creating database Main

2021-12-27 21:02:58+00:00 [Note] [Entrypoint]: /usr/local/bin/docker-entrypoint.sh: running /docker-entrypoint-initdb.d/create_schema.sql


2021-12-27 21:02:58+00:00 [Note] [Entrypoint]: /usr/local/bin/docker-entrypoint.sh: running /docker-entrypoint-initdb.d/insert_data.sql


2021-12-27 21:02:58+00:00 [Note] [Entrypoint]: Stopping temporary server
2021-12-27 21:02:59+00:00 [Note] [Entrypoint]: Temporary server stopped

2021-12-27 21:02:59+00:00 [Note] [Entrypoint]: MySQL init process done. Ready for start up.

2021-12-27T21:02:59.459095Z 0 [System] [MY-010116] [Server] /usr/sbin/mysqld (mysqld 8.0.25) starting as process 1
2021-12-27T21:02:59.470134Z 1 [System] [MY-013576] [InnoDB] InnoDB initialization has started.
2021-12-27T21:02:59.632413Z 1 [System] [MY-013577] [InnoDB] InnoDB initialization has ended.
2021-12-27T21:02:59.768025Z 0 [System] [MY-011323] [Server] X Plugin ready for connections. Bind-address: '::' port: 33060, socket: /var/run/mysqld/mysqlx.sock
2021-12-27T21:02:59.842971Z 0 [Warning] [MY-010068] [Server] CA certificate ca.pem is self signed.
2021-12-27T21:02:59.843228Z 0 [System] [MY-013602] [Server] Channel mysql_main configured to support TLS. Encrypted connections are now supported for this channel.
2021-12-27T21:02:59.848637Z 0 [Warning] [MY-011810] [Server] Insecure configuration for --pid-file: Location '/var/run/mysqld' in the path is accessible to all OS users. Consider choosing a different directory.
2021-12-27T21:02:59.874923Z 0 [System] [MY-010931] [Server] /usr/sbin/mysqld: ready for connections. Version: '8.0.25'  socket: '/var/run/mysqld/mysqld.sock'  port: 3306  MySQL Community Server - GPL.
(base) ➜  Eval_K8S docker logs 63db7abb55c735137ba14deca10d4025e0e78ce2a6e99cf92031e8a1184ff27d


--- 
I have to tag and push docker image. From `k8s-evaluation-api:0.0.1` as asked in the evaluation. 


```bash
(base) ➜  Eval_K8S kubectl create -f my-config-map-eval.yaml
configmap/my-config-map-eval created
(base) ➜  Eval_K8S kubectl get configmaps my-config-map
NAME            DATA   AGE
my-config-map   1      3h31m
(base) ➜  Eval_K8S kubectl create -f my-secret-eval.yaml 
secret/my-secret-map-eval created
(base) ➜  Eval_K8S kubectl get secrets my-secret-map-eval 
NAME                 TYPE     DATA   AGE
my-secret-map-eval   Opaque   1      15s
(base) ➜  Eval_K8S kubectl describe secrets my-secret-map-eval 
Name:         my-secret-map-eval
Namespace:    default
Labels:       <none>
Annotations:  <none>

Type:  Opaque

Data
====
db_password:  17 bytes
(base) ➜  Eval_K8S kubectl get secret my-secret-map-eval -o jsonpath='{.data}' 
map[db_password:ZGF0YXNjaWVudGVzdDEyMzQ=]%                                                                                                                
(base) ➜  Eval_K8S echo "ZGF0YXNjaWVudGVzdDEyMzQ=" | base64 --decode
datascientest1234%                                                                                                                                        
(base) ➜  Eval_K8S kubectl create -f my-deployment-eval.yml 

The Deployment "my-deployment-eval" is invalid: spec.template.spec.containers[0].name: Invalid value: "mysql_db": a DNS-1123 label must consist of lower case alphanumeric characters or '-', and must start and end with an alphanumeric character (e.g. 'my-name',  or '123-abc', regex used for validation is '[a-z0-9]([-a-z0-9]*[a-z0-9])?')
(base) ➜  Eval_K8S 
(base) ➜  Eval_K8S kubectl create -f my-deployment-eval.yml
The Deployment "my-deployment-eval" is invalid: spec.template.spec.containers[0].name: Invalid value: "mysql_db": a DNS-1123 label must consist of lower case alphanumeric characters or '-', and must start and end with an alphanumeric character (e.g. 'my-name',  or '123-abc', regex used for validation is '[a-z0-9]([-a-z0-9]*[a-z0-9])?')
(base) ➜  Eval_K8S kubectl delete configmaps my-config-map-eval 
configmap "my-config-map-eval" deleted
(base) ➜  Eval_K8S kubectl create -f my-config-map-eval.yaml 
configmap/my-config-map-eval created
(base) ➜  Eval_K8S kubectl create -f my-deployment-eval.yml           
deployment.apps/my-deployment-eval created
(base) ➜  Eval_K8S kubectl get deployments.apps deployment.apps/my-deployment-eval
error: there is no need to specify a resource type as a separate argument when passing arguments in resource/name form (e.g. 'kubectl get resource/<resource_name>' instead of 'kubectl get resource resource/<resource_name>'
(base) ➜  Eval_K8S kubectl get deployments.apps my-deployment-eval                
NAME                 READY   UP-TO-DATE   AVAILABLE   AGE
my-deployment-eval   2/3     3            2           34s
(base) ➜  Eval_K8S kubectl get deployments.apps my-deployment-eval
NAME                 READY   UP-TO-DATE   AVAILABLE   AGE
my-deployment-eval   1/3     3            1           39s
(base) ➜  Eval_K8S kubectl get deployments.apps my-deployment-eval
NAME                 READY   UP-TO-DATE   AVAILABLE   AGE
my-deployment-eval   0/3     3            0           49s
(base) ➜  Eval_K8S kubectl logs my-deployment-eval-5c574b4fd7-
Error from server (NotFound): pods "my-deployment-eval-5c574b4fd7-" not found
(base) ➜  Eval_K8S kubectl logs my-deployment-eval            
Error from server (NotFound): pods "my-deployment-eval" not found
(base) ➜  Eval_K8S kubectl get deployments.apps my-deployment-eval                
NAME                 READY   UP-TO-DATE   AVAILABLE   AGE
my-deployment-eval   0/3     3            0           83s
(base) ➜  Eval_K8S kubectl delete deployments.apps my-deployment-eval 
deployment.apps "my-deployment-eval" deleted
(base) ➜  Eval_K8S kubectl create -f my-deployment-eval.yml                       
deployment.apps/my-deployment-eval created
(base) ➜  Eval_K8S kubectl get deployments.apps my-deployment-eval 
NAME                 READY   UP-TO-DATE   AVAILABLE   AGE
my-deployment-eval   2/3     3            2           10s
(base) ➜  Eval_K8S kubectl get deployments.apps my-deployment-eval
NAME                 READY   UP-TO-DATE   AVAILABLE   AGE
my-deployment-eval   2/3     3            2           11s
(base) ➜  Eval_K8S kubectl get deployments.apps my-deployment-eval
NAME                 READY   UP-TO-DATE   AVAILABLE   AGE
my-deployment-eval   0/3     3            0           15s
(base) ➜  Eval_K8S kubectl get deployments.apps my-deployment-eval
NAME                 READY   UP-TO-DATE   AVAILABLE   AGE
my-deployment-eval   0/3     3            0           16s
(base) ➜  Eval_K8S kubectl logs 
error: expected 'logs [-f] [-p] (POD | TYPE/NAME) [-c CONTAINER]'.
POD or TYPE/NAME is a required argument for the logs command
See 'kubectl logs -h' for help and examples
(base) ➜  Eval_K8S kubectl describe my-deployment-eval.yml 
error: the server doesn't have a resource type "my-deployment-eval"
(base) ➜  Eval_K8S kubectl describe my-deployment-eval    
error: the server doesn't have a resource type "my-deployment-eval"
(base) ➜  Eval_K8S kubectl get deployments.apps my-deployment-eval
NAME                 READY   UP-TO-DATE   AVAILABLE   AGE
my-deployment-eval   0/3     3            0           84s
(base) ➜  Eval_K8S kubectl get deployments.apps my-deployment-eval
NAME                 READY   UP-TO-DATE   AVAILABLE   AGE
my-deployment-eval   0/3     3            0           88s
(base) ➜  Eval_K8S kubectl get deployments.apps my-deployment-eval
NAME                 READY   UP-TO-DATE   AVAILABLE   AGE
my-deployment-eval   0/3     3            0           90s
(base) ➜  Eval_K8S kubectl describe deployments.apps my-deployment-eval 

Name:                   my-deployment-eval
Namespace:              default
CreationTimestamp:      Mon, 27 Dec 2021 23:57:31 +0100
Labels:                 <none>
Annotations:            deployment.kubernetes.io/revision: 1
Selector:               app=my-eval-api
Replicas:               3 desired | 3 updated | 3 total | 0 available | 3 unavailable
StrategyType:           RollingUpdate
MinReadySeconds:        0
RollingUpdateStrategy:  25% max unavailable, 25% max surge
Pod Template:
  Labels:  app=my-eval-api
  Containers:
   mysql-db:
    Image:      datascientest/mysql-k8s:1.0.0
    Port:       3306/TCP
    Host Port:  0/TCP
    Limits:
      cpu:     500m
      memory:  128Mi
    Environment Variables from:
      my-config-map-eval  ConfigMap  Optional: false
    Environment:
      DATABASE_PASSWORD:  <set to the key 'db_password' in secret 'my-secret-map-eval'>  Optional: false
    Mounts:               <none>
   api:
    Image:      k8s-evaluation-api:0.0.1
    Port:       8000/TCP
    Host Port:  0/TCP
    Limits:
      cpu:        500m
      memory:     128Mi
    Environment:  <none>
    Mounts:       <none>
  Volumes:        <none>
Conditions:
  Type           Status  Reason
  ----           ------  ------
  Available      False   MinimumReplicasUnavailable
  Progressing    True    ReplicaSetUpdated
OldReplicaSets:  <none>
NewReplicaSet:   my-deployment-eval-5c574b4fd7 (3/3 replicas created)
Events:
  Type    Reason             Age   From                   Message
  ----    ------             ----  ----                   -------
  Normal  ScalingReplicaSet  109s  deployment-controller  Scaled up replica set my-deployment-eval-5c574b4fd7 to 3
(base) ➜  Eval_K8S 
(base) ➜  Eval_K8S kubectl get deployments.apps my-deployment-eval 
NAME                 READY   UP-TO-DATE   AVAILABLE   AGE
my-deployment-eval   0/3     3            0           2m14s
(base) ➜  Eval_K8S kubectl get pods
NAME                                  READY   STATUS             RESTARTS   AGE
alpaca-prod                           1/1     Running            23         160d
alpaca-prod-6449d977b-rs9tq           1/1     Running            23         160d
alpaca-prod-6449d977b-vpgsf           1/1     Running            23         160d
alpaca-test-7fd49fd6b-l978l           1/1     Running            23         160d
bandicoot-prod-775f54c9cf-4lr85       1/1     Running            23         160d
bandicoot-prod-775f54c9cf-qws72       1/1     Running            23         160d
bandicoot-test-6977fbcc5-lmkdt        1/1     Running            23         160d
local-pv-pod                          1/1     Running            23         160d
my-deployment-eval-5c574b4fd7-4p2j9   0/2     Evicted            0          2m13s
my-deployment-eval-5c574b4fd7-4pxqh   1/2     CrashLoopBackOff   4          2m43s
my-deployment-eval-5c574b4fd7-5ncd9   0/2     Evicted            0          2m43s
my-deployment-eval-5c574b4fd7-7xq6n   0/2     Evicted            0          2m13s
my-deployment-eval-5c574b4fd7-86znk   0/2     Evicted            0          2m18s
my-deployment-eval-5c574b4fd7-96drb   0/2     Evicted            0          2m13s
my-deployment-eval-5c574b4fd7-b8m2v   0/2     Evicted            0          2m12s
my-deployment-eval-5c574b4fd7-ctdqk   0/2     Evicted            0          2m18s
my-deployment-eval-5c574b4fd7-dhjcz   1/2     CrashLoopBackOff   4          2m43s
my-deployment-eval-5c574b4fd7-dpdhv   0/2     Evicted            0          2m17s
my-deployment-eval-5c574b4fd7-frn9d   0/2     Evicted            0          2m14s
my-deployment-eval-5c574b4fd7-gcs27   0/2     Evicted            0          2m12s
my-deployment-eval-5c574b4fd7-gfggw   0/2     Evicted            0          2m15s
my-deployment-eval-5c574b4fd7-htjj7   0/2     Evicted            0          2m14s
my-deployment-eval-5c574b4fd7-pmdc6   0/2     Evicted            0          2m19s
my-deployment-eval-5c574b4fd7-wl9m6   0/2     Pending            0          2m11s
mydb-6875fcdfbd-ffccv                 0/1     CrashLoopBackOff   13         35d
mydb2-7c8d5d6fc-h6hw5                 1/1     Running            15         28d
mynginx-5b686ccd46-fl7xk              1/1     Running            33         189d
mynginx2-7f8cc8d8-7h5wz               1/1     Running            16         35d
mynginx2-7f8cc8d8-dlpqc               1/1     Running            16         35d
mynginx2-7f8cc8d8-sgrjw               1/1     Running            16         35d
mysql-deployment-945c5758b-8rmbl      1/1     Running            34         189d
mysql-deployment-945c5758b-bsscb      1/1     Running            35         189d
mysql-deployment-945c5758b-ztdv2      1/1     Running            33         189d
nginx-deployment-5c8ff9548-4glld      1/1     Running            29         172d
nginx-deployment-5c8ff9548-qbtd5      1/1     Running            29         172d
nginx-deployment-5c8ff9548-zs696      1/1     Running            29         172d
nginxsvc-76d6444bb-8bhh5              1/1     Running            16         35d
nginxsvc-76d6444bb-d7kmd              1/1     Running            16         35d
nginxsvc-76d6444bb-vrkdk              1/1     Running            16         35d
oldnginx-699f489858-56x5l             1/1     Running            16         35d
oldnginx-699f489858-cbfkh             1/1     Running            16         35d
pv-pod                                1/1     Running            15         28d
test1                                 0/1     CrashLoopBackOff   12         189d
weirbox                               0/1     CrashLoopBackOff   13         35d
(base) ➜  Eval_K8S kubectl logs my-deployment-eval-5c574b4fd7-4p2j9
error: a container name must be specified for pod my-deployment-eval-5c574b4fd7-4p2j9, choose one of: [mysql-db api]
(base) ➜  Eval_K8S kubectl logs my-deployment-eval-5c574b4fd7-4p2j9:mysql-db
Error from server (NotFound): pods "my-deployment-eval-5c574b4fd7-4p2j9:mysql-db" not found
(base) ➜  Eval_K8S kubectl logs my-deployment-eval-5c574b4fd7-4p2j9 -l name=api
error: only a selector (-l) or a POD name is allowed
See 'kubectl logs -h' for help and examples
(base) ➜  Eval_K8S kubectl logs my-deployment-eval-5c574b4fd7-4p2j9 -c mysql-db
Error from server (BadRequest): container "mysql-db" in pod "my-deployment-eval-5c574b4fd7-4p2j9" is not available
(base) ➜  Eval_K8S kubectl get pods                                    
NAME                                  READY   STATUS             RESTARTS   AGE
alpaca-prod                           1/1     Running            23         160d
alpaca-prod-6449d977b-rs9tq           1/1     Running            23         160d
alpaca-prod-6449d977b-vpgsf           1/1     Running            23         160d
alpaca-test-7fd49fd6b-l978l           1/1     Running            23         160d
bandicoot-prod-775f54c9cf-4lr85       1/1     Running            23         160d
bandicoot-prod-775f54c9cf-qws72       1/1     Running            23         160d
bandicoot-test-6977fbcc5-lmkdt        1/1     Running            23         160d
local-pv-pod                          1/1     Running            23         160d
my-deployment-eval-5c574b4fd7-4p2j9   0/2     Evicted            0          4m58s
my-deployment-eval-5c574b4fd7-4pxqh   1/2     CrashLoopBackOff   5          5m28s
my-deployment-eval-5c574b4fd7-5ncd9   0/2     Evicted            0          5m28s
my-deployment-eval-5c574b4fd7-7xq6n   0/2     Evicted            0          4m58s
my-deployment-eval-5c574b4fd7-86znk   0/2     Evicted            0          5m3s
my-deployment-eval-5c574b4fd7-96drb   0/2     Evicted            0          4m58s
my-deployment-eval-5c574b4fd7-b8m2v   0/2     Evicted            0          4m57s
my-deployment-eval-5c574b4fd7-ctdqk   0/2     Evicted            0          5m3s
my-deployment-eval-5c574b4fd7-dhjcz   1/2     CrashLoopBackOff   5          5m28s
my-deployment-eval-5c574b4fd7-dpdhv   0/2     Evicted            0          5m2s
my-deployment-eval-5c574b4fd7-frn9d   0/2     Evicted            0          4m59s
my-deployment-eval-5c574b4fd7-gcs27   0/2     Evicted            0          4m57s
my-deployment-eval-5c574b4fd7-gfggw   0/2     Evicted            0          5m
my-deployment-eval-5c574b4fd7-htjj7   0/2     Evicted            0          4m59s
my-deployment-eval-5c574b4fd7-pmdc6   0/2     Evicted            0          5m4s
my-deployment-eval-5c574b4fd7-wl9m6   0/2     Pending            0          4m56s
mydb-6875fcdfbd-ffccv                 0/1     CrashLoopBackOff   14         35d
mydb2-7c8d5d6fc-h6hw5                 1/1     Running            15         28d
mynginx-5b686ccd46-fl7xk              1/1     Running            33         189d
mynginx2-7f8cc8d8-7h5wz               1/1     Running            16         35d
mynginx2-7f8cc8d8-dlpqc               1/1     Running            16         35d
mynginx2-7f8cc8d8-sgrjw               1/1     Running            16         35d
mysql-deployment-945c5758b-8rmbl      1/1     Running            34         189d
mysql-deployment-945c5758b-bsscb      1/1     Running            35         189d
mysql-deployment-945c5758b-ztdv2      1/1     Running            33         189d
nginx-deployment-5c8ff9548-4glld      1/1     Running            29         172d
nginx-deployment-5c8ff9548-qbtd5      1/1     Running            29         172d
nginx-deployment-5c8ff9548-zs696      1/1     Running            29         172d
nginxsvc-76d6444bb-8bhh5              1/1     Running            16         35d
nginxsvc-76d6444bb-d7kmd              1/1     Running            16         35d
nginxsvc-76d6444bb-vrkdk              1/1     Running            16         35d
oldnginx-699f489858-56x5l             1/1     Running            16         35d
oldnginx-699f489858-cbfkh             1/1     Running            16         35d
pv-pod                                1/1     Running            15         28d
test1                                 0/1     CrashLoopBackOff   13         189d
weirbox                               0/1     CrashLoopBackOff   14         35d
(base) ➜  Eval_K8S kubectl logs my-deployment-eval-5c574b4fd7-4pxqh -c api
INFO:     Started server process [7]
INFO:     Waiting for application startup.
INFO:     Application startup complete.
INFO:     Uvicorn running on http://0.0.0.0:8000 (Press CTRL+C to quit)
(base) ➜  Eval_K8S kubectl logs my-deployment-eval-5c574b4fd7-4pxqh -c mysql-db
2021-12-27 23:01:03+00:00 [Note] [Entrypoint]: Entrypoint script for MySQL Server 8.0.25-1debian10 started.
2021-12-27 23:01:03+00:00 [Note] [Entrypoint]: Switching to dedicated user 'mysql'
2021-12-27 23:01:03+00:00 [Note] [Entrypoint]: Entrypoint script for MySQL Server 8.0.25-1debian10 started.
2021-12-27 23:01:03+00:00 [Note] [Entrypoint]: Initializing database files
2021-12-27T23:01:03.606854Z 0 [System] [MY-013169] [Server] /usr/sbin/mysqld (mysqld 8.0.25) initializing of server in progress as process 42
2021-12-27T23:01:03.612884Z 1 [System] [MY-013576] [InnoDB] InnoDB initialization has started.
2021-12-27T23:01:04.160448Z 1 [System] [MY-013577] [InnoDB] InnoDB initialization has ended.
2021-12-27T23:01:05.999205Z 6 [Warning] [MY-010453] [Server] root@localhost is created with an empty password ! Please consider switching off the --initialize-insecure option.
/usr/local/bin/docker-entrypoint.sh: line 191:    42 Killed                  "$@" --initialize-insecure --default-time-zone=SYSTEM
(base) ➜  Eval_K8S kubectl delete deployments.apps my-deployment-eval 
deployment.apps "my-deployment-eval" deleted
(base) ➜  Eval_K8S kubectl create -f my-deployment-eval.yml 
deployment.apps/my-deployment-eval created
(base) ➜  Eval_K8S kubectl get deployments.apps my-deployment-eval 
NAME                 READY   UP-TO-DATE   AVAILABLE   AGE
my-deployment-eval   3/3     3            3           9s
(base) ➜  Eval_K8S kubectl get deployments.apps my-deployment-eval
NAME                 READY   UP-TO-DATE   AVAILABLE   AGE
my-deployment-eval   3/3     3            3           13s
(base) ➜  Eval_K8S kubectl create -f my-service-eval.yaml 
service/my-service-eval created
(base) ➜  Eval_K8S kubectl get service my-service-eval 

NAME              TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)    AGE
my-service-eval   ClusterIP   10.96.176.176   <none>        9300/TCP   8s
(base) ➜  Eval_K8S 
(base) ➜  Eval_K8S kubectl create -f my-ingress-eval.yaml 
ingress.networking.k8s.io/my-ingress-eval created
(base) ➜  Eval_K8S kubectl get ingress my-ingress-eval 
NAME              CLASS   HOSTS   ADDRESS   PORTS   AGE
my-ingress-eval   nginx   *                 80      13s
(base) ➜  Eval_K8S curl http://localhost:80/status
1%                                                                                                                                                        
(base) ➜  Eval_K8S curl http://localhost:80/users 
Internal Server Error%                                                                                                                                    
(base) ➜  Eval_K8S 

```

- Error on pods mysql-db was fixed by removing the resources limitation right now to work on it increase...



(base) ➜  Eval_K8S curl http://localhost:80/status
1%                                                                                                                                                        
(base) ➜  Eval_K8S curl http://localhost:80/users 
Internal Server Error%                                                                                                                                    
(base) ➜  Eval_K8S kubectl get pods

NAME                                  READY   STATUS             RESTARTS   AGE
alpaca-prod                           1/1     Running            23         160d
alpaca-prod-6449d977b-rs9tq           1/1     Running            23         160d
alpaca-prod-6449d977b-vpgsf           1/1     Running            23         160d
alpaca-test-7fd49fd6b-l978l           1/1     Running            23         160d
bandicoot-prod-775f54c9cf-4lr85       1/1     Running            23         160d
bandicoot-prod-775f54c9cf-qws72       1/1     Running            23         160d
bandicoot-test-6977fbcc5-lmkdt        1/1     Running            23         160d
local-pv-pod                          1/1     Running            23         160d
my-deployment-eval-645f6b4bc9-2dmbh   2/2     Running            0          3m3s
my-deployment-eval-645f6b4bc9-69b7p   2/2     Running            0          3m3s
my-deployment-eval-645f6b4bc9-hfn84   2/2     Running            0          3m3s
mydb-6875fcdfbd-ffccv                 0/1     CrashLoopBackOff   15         35d
mydb2-7c8d5d6fc-h6hw5                 1/1     Running            15         28d
mynginx-5b686ccd46-fl7xk              1/1     Running            33         189d
mynginx2-7f8cc8d8-7h5wz               1/1     Running            16         35d
mynginx2-7f8cc8d8-dlpqc               1/1     Running            16         35d
mynginx2-7f8cc8d8-sgrjw               1/1     Running            16         35d
mysql-deployment-945c5758b-8rmbl      1/1     Running            34         189d
mysql-deployment-945c5758b-bsscb      1/1     Running            35         189d
mysql-deployment-945c5758b-ztdv2      1/1     Running            33         189d
nginx-deployment-5c8ff9548-4glld      1/1     Running            29         172d
nginx-deployment-5c8ff9548-qbtd5      1/1     Running            29         172d
nginx-deployment-5c8ff9548-zs696      1/1     Running            29         172d
nginxsvc-76d6444bb-8bhh5              1/1     Running            16         35d
nginxsvc-76d6444bb-d7kmd              1/1     Running            16         35d
nginxsvc-76d6444bb-vrkdk              1/1     Running            16         35d
oldnginx-699f489858-56x5l             1/1     Running            16         35d
oldnginx-699f489858-cbfkh             1/1     Running            16         35d
pv-pod                                1/1     Running            15         28d
test1                                 0/1     CrashLoopBackOff   14         189d
weirbox                               0/1     CrashLoopBackOff   15         35d
(base) ➜  Eval_K8S 
(base) ➜  Eval_K8S kubectl log my-deployment-eval-645f6b4bc9-2dmbh -c api
Error: unknown command "log" for "kubectl"

Did you mean this?
        top
        logs

Run 'kubectl --help' for usage.
(base) ➜  Eval_K8S kubectl logs my-deployment-eval-645f6b4bc9-2dmbh -c api

INFO:     Started server process [8]
INFO:     Waiting for application startup.
INFO:     Application startup complete.
INFO:     Uvicorn running on http://0.0.0.0:8000 (Press CTRL+C to quit)
MySQL URL = mysql://root:None@None/Main
INFO:     10.1.3.187:47290 - "GET /users HTTP/1.1" 500 Internal Server Error
ERROR:    Exception in ASGI application
Traceback (most recent call last):
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/base.py", line 3250, in _wrap_pool_connect
    return fn()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 310, in connect
    return _ConnectionFairy._checkout(self)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 868, in _checkout
    fairy = _ConnectionRecord.checkout(pool)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 476, in checkout
    rec = pool._do_get()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/impl.py", line 146, in _do_get
    self._dec_overflow()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/langhelpers.py", line 70, in __exit__
    compat.raise_(
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/compat.py", line 207, in raise_
    raise exception
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/impl.py", line 143, in _do_get
    return self._create_connection()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 256, in _create_connection
    return _ConnectionRecord(self)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 371, in __init__
    self.__connect()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 666, in __connect
    pool.logger.debug("Error on connect(): %s", e)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/langhelpers.py", line 70, in __exit__
    compat.raise_(
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/compat.py", line 207, in raise_
    raise exception
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 661, in __connect
    self.dbapi_connection = connection = pool._invoke_creator(self)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/create.py", line 590, in connect
    return dialect.connect(*cargs, **cparams)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/default.py", line 597, in connect
    return self.dbapi.connect(*cargs, **cparams)
  File "/usr/local/lib/python3.8/dist-packages/MySQLdb/__init__.py", line 123, in Connect
    return Connection(*args, **kwargs)
  File "/usr/local/lib/python3.8/dist-packages/MySQLdb/connections.py", line 185, in __init__
    super().__init__(*args, **kwargs2)
MySQLdb._exceptions.OperationalError: (2005, "Unknown MySQL server host 'None' (-2)")

The above exception was the direct cause of the following exception:

Traceback (most recent call last):
  File "/usr/local/lib/python3.8/dist-packages/uvicorn/protocols/http/h11_impl.py", line 373, in run_asgi
    result = await app(self.scope, self.receive, self.send)
  File "/usr/local/lib/python3.8/dist-packages/uvicorn/middleware/proxy_headers.py", line 75, in __call__
    return await self.app(scope, receive, send)
  File "/usr/local/lib/python3.8/dist-packages/fastapi/applications.py", line 208, in __call__
    await super().__call__(scope, receive, send)
  File "/usr/local/lib/python3.8/dist-packages/starlette/applications.py", line 112, in __call__
    await self.middleware_stack(scope, receive, send)
  File "/usr/local/lib/python3.8/dist-packages/starlette/middleware/errors.py", line 181, in __call__
    raise exc
  File "/usr/local/lib/python3.8/dist-packages/starlette/middleware/errors.py", line 159, in __call__
    await self.app(scope, receive, _send)
  File "/usr/local/lib/python3.8/dist-packages/starlette/exceptions.py", line 82, in __call__
    raise exc
  File "/usr/local/lib/python3.8/dist-packages/starlette/exceptions.py", line 71, in __call__
    await self.app(scope, receive, sender)
  File "/usr/local/lib/python3.8/dist-packages/starlette/routing.py", line 656, in __call__
    await route.handle(scope, receive, send)
  File "/usr/local/lib/python3.8/dist-packages/starlette/routing.py", line 259, in handle
    await self.app(scope, receive, send)
  File "/usr/local/lib/python3.8/dist-packages/starlette/routing.py", line 61, in app
    response = await func(request)
  File "/usr/local/lib/python3.8/dist-packages/fastapi/routing.py", line 226, in app
    raw_response = await run_endpoint_function(
  File "/usr/local/lib/python3.8/dist-packages/fastapi/routing.py", line 159, in run_endpoint_function
    return await dependant.call(**values)
  File "/application/./main.py", line 44, in get_users
    with mysql_engine.connect() as connection:
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/base.py", line 3204, in connect
    return self._connection_cls(self, close_with_result=close_with_result)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/base.py", line 96, in __init__
    else engine.raw_connection()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/base.py", line 3283, in raw_connection
    return self._wrap_pool_connect(self.pool.connect, _connection)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/base.py", line 3253, in _wrap_pool_connect
    Connection._handle_dbapi_exception_noconnection(
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/base.py", line 2100, in _handle_dbapi_exception_noconnection
    util.raise_(
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/compat.py", line 207, in raise_
    raise exception
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/base.py", line 3250, in _wrap_pool_connect
    return fn()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 310, in connect
    return _ConnectionFairy._checkout(self)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 868, in _checkout
    fairy = _ConnectionRecord.checkout(pool)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 476, in checkout
    rec = pool._do_get()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/impl.py", line 146, in _do_get
    self._dec_overflow()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/langhelpers.py", line 70, in __exit__
    compat.raise_(
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/compat.py", line 207, in raise_
    raise exception
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/impl.py", line 143, in _do_get
    return self._create_connection()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 256, in _create_connection
    return _ConnectionRecord(self)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 371, in __init__
    self.__connect()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 666, in __connect
    pool.logger.debug("Error on connect(): %s", e)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/langhelpers.py", line 70, in __exit__
    compat.raise_(
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/compat.py", line 207, in raise_
    raise exception
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 661, in __connect
    self.dbapi_connection = connection = pool._invoke_creator(self)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/create.py", line 590, in connect
    return dialect.connect(*cargs, **cparams)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/default.py", line 597, in connect
    return self.dbapi.connect(*cargs, **cparams)
  File "/usr/local/lib/python3.8/dist-packages/MySQLdb/__init__.py", line 123, in Connect
    return Connection(*args, **kwargs)
  File "/usr/local/lib/python3.8/dist-packages/MySQLdb/connections.py", line 185, in __init__
    super().__init__(*args, **kwargs2)
sqlalchemy.exc.OperationalError: (MySQLdb._exceptions.OperationalError) (2005, "Unknown MySQL server host 'None' (-2)")
(Background on this error at: https://sqlalche.me/e/14/e3q8)
INFO:     10.1.3.187:47996 - "GET /users HTTP/1.1" 500 Internal Server Error
ERROR:    Exception in ASGI application
Traceback (most recent call last):
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/base.py", line 3250, in _wrap_pool_connect
    return fn()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 310, in connect
    return _ConnectionFairy._checkout(self)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 868, in _checkout
    fairy = _ConnectionRecord.checkout(pool)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 476, in checkout
    rec = pool._do_get()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/impl.py", line 146, in _do_get
    self._dec_overflow()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/langhelpers.py", line 70, in __exit__
    compat.raise_(
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/compat.py", line 207, in raise_
    raise exception
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/impl.py", line 143, in _do_get
    return self._create_connection()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 256, in _create_connection
    return _ConnectionRecord(self)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 371, in __init__
    self.__connect()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 666, in __connect
    pool.logger.debug("Error on connect(): %s", e)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/langhelpers.py", line 70, in __exit__
    compat.raise_(
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/compat.py", line 207, in raise_
    raise exception
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 661, in __connect
    self.dbapi_connection = connection = pool._invoke_creator(self)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/create.py", line 590, in connect
    return dialect.connect(*cargs, **cparams)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/default.py", line 597, in connect
    return self.dbapi.connect(*cargs, **cparams)
  File "/usr/local/lib/python3.8/dist-packages/MySQLdb/__init__.py", line 123, in Connect
    return Connection(*args, **kwargs)
  File "/usr/local/lib/python3.8/dist-packages/MySQLdb/connections.py", line 185, in __init__
    super().__init__(*args, **kwargs2)
MySQLdb._exceptions.OperationalError: (2005, "Unknown MySQL server host 'None' (-2)")

The above exception was the direct cause of the following exception:

Traceback (most recent call last):
  File "/usr/local/lib/python3.8/dist-packages/uvicorn/protocols/http/h11_impl.py", line 373, in run_asgi
    result = await app(self.scope, self.receive, self.send)
  File "/usr/local/lib/python3.8/dist-packages/uvicorn/middleware/proxy_headers.py", line 75, in __call__
    return await self.app(scope, receive, send)
  File "/usr/local/lib/python3.8/dist-packages/fastapi/applications.py", line 208, in __call__
    await super().__call__(scope, receive, send)
  File "/usr/local/lib/python3.8/dist-packages/starlette/applications.py", line 112, in __call__
    await self.middleware_stack(scope, receive, send)
  File "/usr/local/lib/python3.8/dist-packages/starlette/middleware/errors.py", line 181, in __call__
    raise exc
  File "/usr/local/lib/python3.8/dist-packages/starlette/middleware/errors.py", line 159, in __call__
    await self.app(scope, receive, _send)
  File "/usr/local/lib/python3.8/dist-packages/starlette/exceptions.py", line 82, in __call__
    raise exc
  File "/usr/local/lib/python3.8/dist-packages/starlette/exceptions.py", line 71, in __call__
    await self.app(scope, receive, sender)
  File "/usr/local/lib/python3.8/dist-packages/starlette/routing.py", line 656, in __call__
    await route.handle(scope, receive, send)
  File "/usr/local/lib/python3.8/dist-packages/starlette/routing.py", line 259, in handle
    await self.app(scope, receive, send)
  File "/usr/local/lib/python3.8/dist-packages/starlette/routing.py", line 61, in app
    response = await func(request)
  File "/usr/local/lib/python3.8/dist-packages/fastapi/routing.py", line 226, in app
    raw_response = await run_endpoint_function(
  File "/usr/local/lib/python3.8/dist-packages/fastapi/routing.py", line 159, in run_endpoint_function
    return await dependant.call(**values)
  File "/application/./main.py", line 44, in get_users
    with mysql_engine.connect() as connection:
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/base.py", line 3204, in connect
    return self._connection_cls(self, close_with_result=close_with_result)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/base.py", line 96, in __init__
    else engine.raw_connection()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/base.py", line 3283, in raw_connection
    return self._wrap_pool_connect(self.pool.connect, _connection)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/base.py", line 3253, in _wrap_pool_connect
    Connection._handle_dbapi_exception_noconnection(
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/base.py", line 2100, in _handle_dbapi_exception_noconnection
    util.raise_(
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/compat.py", line 207, in raise_
    raise exception
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/base.py", line 3250, in _wrap_pool_connect
    return fn()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 310, in connect
    return _ConnectionFairy._checkout(self)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 868, in _checkout
    fairy = _ConnectionRecord.checkout(pool)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 476, in checkout
    rec = pool._do_get()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/impl.py", line 146, in _do_get
    self._dec_overflow()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/langhelpers.py", line 70, in __exit__
    compat.raise_(
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/compat.py", line 207, in raise_
    raise exception
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/impl.py", line 143, in _do_get
    return self._create_connection()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 256, in _create_connection
    return _ConnectionRecord(self)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 371, in __init__
    self.__connect()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 666, in __connect
    pool.logger.debug("Error on connect(): %s", e)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/langhelpers.py", line 70, in __exit__
    compat.raise_(
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/compat.py", line 207, in raise_
    raise exception
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 661, in __connect
    self.dbapi_connection = connection = pool._invoke_creator(self)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/create.py", line 590, in connect
    return dialect.connect(*cargs, **cparams)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/default.py", line 597, in connect
    return self.dbapi.connect(*cargs, **cparams)
  File "/usr/local/lib/python3.8/dist-packages/MySQLdb/__init__.py", line 123, in Connect
    return Connection(*args, **kwargs)
  File "/usr/local/lib/python3.8/dist-packages/MySQLdb/connections.py", line 185, in __init__
    super().__init__(*args, **kwargs2)
sqlalchemy.exc.OperationalError: (MySQLdb._exceptions.OperationalError) (2005, "Unknown MySQL server host 'None' (-2)")
(Background on this error at: https://sqlalche.me/e/14/e3q8)
(base) ➜  Eval_K8S 
(base) ➜  Eval_K8S echo "Big error I added the config secret/map on the Mysql Container instead of the api"
Big error I added the config secret/map on the Mysql Container instead of the api
(base) ➜  Eval_K8S kubectl delete deployments.apps my-deployment-eval 
deployment.apps "my-deployment-eval" deleted
(base) ➜  Eval_K8S kubectl create -f my-deployment-eval.yml 
deployment.apps/my-deployment-eval created
(base) ➜  Eval_K8S kubectl get deployments.apps my-deployment-eval 
NAME                 READY   UP-TO-DATE   AVAILABLE   AGE
my-deployment-eval   3/3     3            3           12s
(base) ➜  Eval_K8S curl http://localhost:80/status                                                        
1%                                                                                                                                                        
(base) ➜  Eval_K8S curl http://localhost:80/users                                                         
Internal Server Error%                                                                                                                                    
(base) ➜  Eval_K8S kubectl get pods 

NAME                                 READY   STATUS             RESTARTS   AGE
alpaca-prod                          1/1     Running            23         160d
alpaca-prod-6449d977b-rs9tq          1/1     Running            23         160d
alpaca-prod-6449d977b-vpgsf          1/1     Running            23         160d
alpaca-test-7fd49fd6b-l978l          1/1     Running            23         160d
bandicoot-prod-775f54c9cf-4lr85      1/1     Running            23         160d
bandicoot-prod-775f54c9cf-qws72      1/1     Running            23         160d
bandicoot-test-6977fbcc5-lmkdt       1/1     Running            23         160d
local-pv-pod                         1/1     Running            23         160d
my-deployment-eval-d76d8bfd6-4dgc5   2/2     Running            0          40s
my-deployment-eval-d76d8bfd6-9r269   2/2     Running            0          40s
my-deployment-eval-d76d8bfd6-d7fmn   2/2     Running            0          40s
mydb-6875fcdfbd-ffccv                0/1     CrashLoopBackOff   16         35d
mydb2-7c8d5d6fc-h6hw5                1/1     Running            15         28d
mynginx-5b686ccd46-fl7xk             1/1     Running            33         189d
mynginx2-7f8cc8d8-7h5wz              1/1     Running            16         35d
mynginx2-7f8cc8d8-dlpqc              1/1     Running            16         35d
mynginx2-7f8cc8d8-sgrjw              1/1     Running            16         35d
mysql-deployment-945c5758b-8rmbl     1/1     Running            34         189d
mysql-deployment-945c5758b-bsscb     1/1     Running            35         189d
mysql-deployment-945c5758b-ztdv2     1/1     Running            33         189d
nginx-deployment-5c8ff9548-4glld     1/1     Running            29         172d
nginx-deployment-5c8ff9548-qbtd5     1/1     Running            29         172d
nginx-deployment-5c8ff9548-zs696     1/1     Running            29         172d
nginxsvc-76d6444bb-8bhh5             1/1     Running            16         35d
nginxsvc-76d6444bb-d7kmd             1/1     Running            16         35d
nginxsvc-76d6444bb-vrkdk             1/1     Running            16         35d
oldnginx-699f489858-56x5l            1/1     Running            16         35d
oldnginx-699f489858-cbfkh            1/1     Running            16         35d
pv-pod                               1/1     Running            15         28d
test1                                0/1     CrashLoopBackOff   15         189d
weirbox                              0/1     CrashLoopBackOff   16         35d
(base) ➜  Eval_K8S 
(base) ➜  Eval_K8S kubectl logs my-deployment-eval-d76d8bfd6-4dgc5 -c api 
INFO:     Started server process [9]
INFO:     Waiting for application startup.
INFO:     Application startup complete.
INFO:     Uvicorn running on http://0.0.0.0:8000 (Press CTRL+C to quit)
MySQL URL = mysql://root:None@None/Main
INFO:     10.1.3.187:60024 - "GET /status HTTP/1.1" 200 OK
(base) ➜  Eval_K8S c



With Deployment YAML 


```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: my-deployment-eval
spec:
  replicas: 3
  selector:
    matchLabels:
      app: my-eval-api
  template:
    metadata:
      labels:
        app: my-eval-api
    spec:
      containers:
      - name: mysql-db
        image: datascientest/mysql-k8s:1.0.0
        ports:
        - containerPort: 3306
      - name: api
        image: k8s-evaluation-api:0.0.1
        resources:
          limits:
            memory: "128Mi"
            cpu: "500m"
        ports:
          - containerPort: 8000
        envFrom:
          - configMapRef:
              name: my-config-map-eval
        env:
          - name: DATABASE_PASSWORD
            valueFrom:
              secretKeyRef:
                name:  my-secret-map-eval
                key: DATABASE_PASSWORD

````

I am getting 

(base) ➜  Eval_K8S kubectl create -f my-deployment-eval.yml
deployment.apps/my-deployment-eval created
(base) ➜  Eval_K8S kubectl get deployments.apps 
NAME                 READY   UP-TO-DATE   AVAILABLE   AGE
alpaca-prod          2/2     2            2           160d
alpaca-test          1/1     1            1           160d
bandicoot-prod       2/2     2            2           160d
bandicoot-test       1/1     1            1           160d
my-deployment-eval   3/3     3            3           10s
mydb                 0/1     1            0           35d
mydb2                1/1     1            1           28d
mynginx              1/1     1            1           189d
mynginx2             3/3     3            3           35d
mysql-deployment     3/3     3            3           189d
nginx-deployment     3/3     3            3           172d
nginxsvc             3/3     3            3           35d
oldnginx             2/2     2            2           35d
(base) ➜  Eval_K8S kubectl get deployments.apps my-deployment-eval 
NAME                 READY   UP-TO-DATE   AVAILABLE   AGE
my-deployment-eval   3/3     3            3           16s
(base) ➜  Eval_K8S kubectl get pods
NAME                                  READY   STATUS             RESTARTS   AGE
alpaca-prod                           1/1     Running            23         160d
alpaca-prod-6449d977b-rs9tq           1/1     Running            23         160d
alpaca-prod-6449d977b-vpgsf           1/1     Running            23         160d
alpaca-test-7fd49fd6b-l978l           1/1     Running            23         160d
bandicoot-prod-775f54c9cf-4lr85       1/1     Running            23         160d
bandicoot-prod-775f54c9cf-qws72       1/1     Running            23         160d
bandicoot-test-6977fbcc5-lmkdt        1/1     Running            23         160d
local-pv-pod                          1/1     Running            23         160d
my-deployment-eval-7647dd9d6d-4wspl   2/2     Running            0          21s
my-deployment-eval-7647dd9d6d-bh6ck   2/2     Running            0          21s
my-deployment-eval-7647dd9d6d-wpxsl   2/2     Running            0          21s
mydb-6875fcdfbd-ffccv                 0/1     CrashLoopBackOff   23         35d
mydb2-7c8d5d6fc-h6hw5                 1/1     Running            15         28d
mynginx-5b686ccd46-fl7xk              1/1     Running            33         189d
mynginx2-7f8cc8d8-7h5wz               1/1     Running            16         35d
mynginx2-7f8cc8d8-dlpqc               1/1     Running            16         35d
mynginx2-7f8cc8d8-sgrjw               1/1     Running            16         35d
mysql-deployment-945c5758b-8rmbl      1/1     Running            34         189d
mysql-deployment-945c5758b-bsscb      1/1     Running            35         189d
mysql-deployment-945c5758b-ztdv2      1/1     Running            33         189d
nginx-deployment-5c8ff9548-4glld      1/1     Running            29         172d
nginx-deployment-5c8ff9548-qbtd5      1/1     Running            29         172d
nginx-deployment-5c8ff9548-zs696      1/1     Running            29         172d
nginxsvc-76d6444bb-8bhh5              1/1     Running            16         35d
nginxsvc-76d6444bb-d7kmd              1/1     Running            16         35d
nginxsvc-76d6444bb-vrkdk              1/1     Running            16         35d
oldnginx-699f489858-56x5l             1/1     Running            16         35d
oldnginx-699f489858-cbfkh             1/1     Running            16         35d
pv-pod                                1/1     Running            15         28d
test1                                 0/1     Completed          23         189d
weirbox                               0/1     CrashLoopBackOff   24         35d
(base) ➜  Eval_K8S kubectl logs my-deployment-eval-7647dd9d6d-4wspl -c api
INFO:     Started server process [9]
INFO:     Waiting for application startup.
INFO:     Application startup complete.
INFO:     Uvicorn running on http://0.0.0.0:8000 (Press CTRL+C to quit)
(base) ➜  Eval_K8S curl http://localhost:80/users                         
Internal Server Error%                                                                                                                                    
(base) ➜  Eval_K8S kubectl logs my-deployment-eval-7647dd9d6d-4wspl -c api
INFO:     Started server process [9]
INFO:     Waiting for application startup.
INFO:     Application startup complete.
INFO:     Uvicorn running on http://0.0.0.0:8000 (Press CTRL+C to quit)
MySQL URL = mysql://root:datascientest1234@localhost:3306/Main
INFO:     10.1.3.187:32922 - "GET /users HTTP/1.1" 500 Internal Server Error
ERROR:    Exception in ASGI application
Traceback (most recent call last):
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/base.py", line 3250, in _wrap_pool_connect
    return fn()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 310, in connect
    return _ConnectionFairy._checkout(self)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 868, in _checkout
    fairy = _ConnectionRecord.checkout(pool)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 476, in checkout
    rec = pool._do_get()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/impl.py", line 146, in _do_get
    self._dec_overflow()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/langhelpers.py", line 70, in __exit__
    compat.raise_(
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/compat.py", line 207, in raise_
    raise exception
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/impl.py", line 143, in _do_get
    return self._create_connection()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 256, in _create_connection
    return _ConnectionRecord(self)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 371, in __init__
    self.__connect()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 666, in __connect
    pool.logger.debug("Error on connect(): %s", e)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/langhelpers.py", line 70, in __exit__
    compat.raise_(
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/compat.py", line 207, in raise_
    raise exception
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 661, in __connect
    self.dbapi_connection = connection = pool._invoke_creator(self)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/create.py", line 590, in connect
    return dialect.connect(*cargs, **cparams)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/default.py", line 597, in connect
    return self.dbapi.connect(*cargs, **cparams)
  File "/usr/local/lib/python3.8/dist-packages/MySQLdb/__init__.py", line 123, in Connect
    return Connection(*args, **kwargs)
  File "/usr/local/lib/python3.8/dist-packages/MySQLdb/connections.py", line 185, in __init__
    super().__init__(*args, **kwargs2)
MySQLdb._exceptions.OperationalError: (2002, "Can't connect to local MySQL server through socket '/var/run/mysqld/mysqld.sock' (2)")

The above exception was the direct cause of the following exception:

Traceback (most recent call last):
  File "/usr/local/lib/python3.8/dist-packages/uvicorn/protocols/http/h11_impl.py", line 373, in run_asgi
    result = await app(self.scope, self.receive, self.send)
  File "/usr/local/lib/python3.8/dist-packages/uvicorn/middleware/proxy_headers.py", line 75, in __call__
    return await self.app(scope, receive, send)
  File "/usr/local/lib/python3.8/dist-packages/fastapi/applications.py", line 208, in __call__
    await super().__call__(scope, receive, send)
  File "/usr/local/lib/python3.8/dist-packages/starlette/applications.py", line 112, in __call__
    await self.middleware_stack(scope, receive, send)
  File "/usr/local/lib/python3.8/dist-packages/starlette/middleware/errors.py", line 181, in __call__
    raise exc
  File "/usr/local/lib/python3.8/dist-packages/starlette/middleware/errors.py", line 159, in __call__
    await self.app(scope, receive, _send)
  File "/usr/local/lib/python3.8/dist-packages/starlette/exceptions.py", line 82, in __call__
    raise exc
  File "/usr/local/lib/python3.8/dist-packages/starlette/exceptions.py", line 71, in __call__
    await self.app(scope, receive, sender)
  File "/usr/local/lib/python3.8/dist-packages/starlette/routing.py", line 656, in __call__
    await route.handle(scope, receive, send)
  File "/usr/local/lib/python3.8/dist-packages/starlette/routing.py", line 259, in handle
    await self.app(scope, receive, send)
  File "/usr/local/lib/python3.8/dist-packages/starlette/routing.py", line 61, in app
    response = await func(request)
  File "/usr/local/lib/python3.8/dist-packages/fastapi/routing.py", line 226, in app
    raw_response = await run_endpoint_function(
  File "/usr/local/lib/python3.8/dist-packages/fastapi/routing.py", line 159, in run_endpoint_function
    return await dependant.call(**values)
  File "/application/./main.py", line 44, in get_users
    with mysql_engine.connect() as connection:
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/base.py", line 3204, in connect
    return self._connection_cls(self, close_with_result=close_with_result)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/base.py", line 96, in __init__
    else engine.raw_connection()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/base.py", line 3283, in raw_connection
    return self._wrap_pool_connect(self.pool.connect, _connection)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/base.py", line 3253, in _wrap_pool_connect
    Connection._handle_dbapi_exception_noconnection(
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/base.py", line 2100, in _handle_dbapi_exception_noconnection
    util.raise_(
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/compat.py", line 207, in raise_
    raise exception
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/base.py", line 3250, in _wrap_pool_connect
    return fn()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 310, in connect
    return _ConnectionFairy._checkout(self)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 868, in _checkout
    fairy = _ConnectionRecord.checkout(pool)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 476, in checkout
    rec = pool._do_get()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/impl.py", line 146, in _do_get
    self._dec_overflow()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/langhelpers.py", line 70, in __exit__
    compat.raise_(
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/compat.py", line 207, in raise_
    raise exception
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/impl.py", line 143, in _do_get
    return self._create_connection()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 256, in _create_connection
    return _ConnectionRecord(self)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 371, in __init__
    self.__connect()
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 666, in __connect
    pool.logger.debug("Error on connect(): %s", e)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/langhelpers.py", line 70, in __exit__
    compat.raise_(
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/util/compat.py", line 207, in raise_
    raise exception
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/pool/base.py", line 661, in __connect
    self.dbapi_connection = connection = pool._invoke_creator(self)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/create.py", line 590, in connect
    return dialect.connect(*cargs, **cparams)
  File "/usr/local/lib/python3.8/dist-packages/sqlalchemy/engine/default.py", line 597, in connect
    return self.dbapi.connect(*cargs, **cparams)
  File "/usr/local/lib/python3.8/dist-packages/MySQLdb/__init__.py", line 123, in Connect
    return Connection(*args, **kwargs)
  File "/usr/local/lib/python3.8/dist-packages/MySQLdb/connections.py", line 185, in __init__
    super().__init__(*args, **kwargs2)
sqlalchemy.exc.OperationalError: (MySQLdb._exceptions.OperationalError) (2002, "Can't connect to local MySQL server through socket '/var/run/mysqld/mysqld.sock' (2)")
(Background on this error at: https://sqlalche.me/e/14/e3q8)
(base) ➜  Eval_K8S 


(base) ➜  Eval_K8S kubectl delete deployments.apps my-deployment-eval     
deployment.apps "my-deployment-eval" deleted
(base) ➜  Eval_K8S kubectl delete configmaps my-config-map-eval 
configmap "my-config-map-eval" deleted
(base) ➜  Eval_K8S kubectl create -f  my-config-map-eval.yaml 
configmap/my-config-map-eval created
(base) ➜  Eval_K8S kubectl create -f my-deployment-eval.yml 
deployment.apps/my-deployment-eval created
(base) ➜  Eval_K8S kubectl get pods
NAME                                  READY   STATUS             RESTARTS   AGE
alpaca-prod                           1/1     Running            23         160d
alpaca-prod-6449d977b-rs9tq           1/1     Running            23         160d
alpaca-prod-6449d977b-vpgsf           1/1     Running            23         160d
alpaca-test-7fd49fd6b-l978l           1/1     Running            23         160d
bandicoot-prod-775f54c9cf-4lr85       1/1     Running            23         160d
bandicoot-prod-775f54c9cf-qws72       1/1     Running            23         160d
bandicoot-test-6977fbcc5-lmkdt        1/1     Running            23         160d
local-pv-pod                          1/1     Running            23         160d
my-deployment-eval-6865c7b8cf-7nb6k   2/2     Running            0          4s
my-deployment-eval-6865c7b8cf-cvsz9   2/2     Running            0          4s
my-deployment-eval-6865c7b8cf-gds54   2/2     Running            0          4s
mydb-6875fcdfbd-ffccv                 0/1     CrashLoopBackOff   30         35d
mydb2-7c8d5d6fc-h6hw5                 1/1     Running            15         28d
mynginx-5b686ccd46-fl7xk              1/1     Running            33         189d
mynginx2-7f8cc8d8-7h5wz               1/1     Running            16         35d
mynginx2-7f8cc8d8-dlpqc               1/1     Running            16         35d
mynginx2-7f8cc8d8-sgrjw               1/1     Running            16         35d
mysql-deployment-945c5758b-8rmbl      1/1     Running            34         189d
mysql-deployment-945c5758b-bsscb      1/1     Running            35         189d
mysql-deployment-945c5758b-ztdv2      1/1     Running            33         189d
nginx-deployment-5c8ff9548-4glld      1/1     Running            29         172d
nginx-deployment-5c8ff9548-qbtd5      1/1     Running            29         172d
nginx-deployment-5c8ff9548-zs696      1/1     Running            29         172d
nginxsvc-76d6444bb-8bhh5              1/1     Running            16         35d
nginxsvc-76d6444bb-d7kmd              1/1     Running            16         35d
nginxsvc-76d6444bb-vrkdk              1/1     Running            16         35d
oldnginx-699f489858-56x5l             1/1     Running            16         35d
oldnginx-699f489858-cbfkh             1/1     Running            16         35d
pv-pod                                1/1     Running            15         28d
test1                                 0/1     CrashLoopBackOff   29         189d
weirbox                               0/1     CrashLoopBackOff   30         35d
(base) ➜  Eval_K8S kubectl get deployments.apps my-deployment-eval 
NAME                 READY   UP-TO-DATE   AVAILABLE   AGE
my-deployment-eval   3/3     3            3           22s
(base) ➜  Eval_K8S curl http://localhost:80/status                
1%                                                                                                                                                        
(base) ➜  Eval_K8S curl http://localhost:80/users 
[{"user_id":1,"username":"August","email":"eu.neque.pellentesque@eumetus.edu"},{"user_id":2,"username":"Linda","email":"eleifend.Cras.sed@cursusnonegestas.com"},{"user_id":3,"username":"Kareem","email":"urna@nonummyultricies.co.uk"},{"user_id":4,"username":"Alyssa","email":"Nulla@sagittis.co.uk"},{"user_id":5,"username":"Demetria","email":"nibh@maurisa.ca"},{"user_id":6,"username":"Ahmed","email":"enim.nisl@ac.net"},{"user_id":7,"username":"Chantale","email":"dictum.eleifend.nunc@Praesentinterdumligula.edu"},{"user_id":8,"username":"Marny","email":"ut.ipsum.ac@vehicula.net"},{"user_id":9,"username":"Ryan","email":"Morbi.vehicula@turpis.ca"},{"user_id":10,"username":"Yuli","email":"suscipit.nonummy@lacuspedesagittis.net"},{"user_id":11,"username":"Cailin","email":"elit.Etiam.laoreet@pedemalesuada.org"},{"user_id":12,"username":"Berk","email":"ipsum.Donec.sollicitudin@consequatdolorvitae.ca"},{"user_id":13,"username":"Jacob","email":"venenatis.vel@metus.ca"},{"user_id":14,"username":"Keely","email":"id@consequatnec.ca"},{"user_id":15,"username":"Kameko","email":"sem.molestie.sodales@Vestibulumut.edu"},{"user_id":16,"username":"Amy","email":"ac.turpis.egestas@Duiscursus.edu"},{"user_id":17,"username":"Latifah","email":"et.rutrum.non@consectetuer.net"},{"user_id":18,"username":"Jameson","email":"erat.volutpat@Craseu.net"},{"user_id":19,"username":"Hasad","email":"rutrum.eu.ultrices@nuncsed.net"},{"user_id":20,"username":"Anthony","email":"ante@adipiscingelitAliquam.org"},{"user_id":21,"username":"Oscar","email":"enim.Etiam@erat.org"},{"user_id":22,"username":"Ivy","email":"malesuada@nislarcuiaculis.edu"},{"user_id":23,"username":"Hall","email":"Morbi.vehicula@penatibus.com"},{"user_id":24,"username":"Hilary","email":"Aenean.euismod.mauris@odio.ca"},{"user_id":25,"username":"Plato","email":"eu.eleifend.nec@consequatenimdiam.net"},{"user_id":26,"username":"Jin","email":"Proin.vel@rutrumeuultrices.com"},{"user_id":27,"username":"Cadman","email":"risus@sociosquadlitora.ca"},{"user_id":28,"username":"Kasper","email":"semper@fringillacursus.edu"},{"user_id":29,"username":"Sydney","email":"ornare.In.faucibus@tortornibhsit.co.uk"},{"user_id":30,"username":"Alexander","email":"sapien@Sedpharetra.ca"},{"user_id":31,"username":"Gisela","email":"at.velit.Cras@at.com"},{"user_id":32,"username":"Xenos","email":"ante@enimSuspendissealiquet.co.uk"},{"user_id":33,"username":"Chester","email":"libero.at@eunulla.ca"},{"user_id":34,"username":"Keelie","email":"suscipit.est@odio.edu"},{"user_id":35,"username":"Brett","email":"accumsan@pretiumneque.com"},{"user_id":36,"username":"Craig","email":"mollis.Duis.sit@ligula.net"},{"user_id":37,"username":"Ashton","email":"accumsan@parturient.net"},{"user_id":38,"username":"Yolanda","email":"in.aliquet@egetvenenatis.ca"},{"user_id":39,"username":"Lysandra","email":"odio.Aliquam@tincidunttempus.com"},{"user_id":40,"username":"Drake","email":"neque.et@bibendum.co.uk"},{"user_id":41,"username":"Wayne","email":"dolor@ipsum.edu"},{"user_id":42,"username":"Chaim","email":"convallis.convallis@sitamet.co.uk"},{"user_id":43,"username":"Gary","email":"dapibus@Donec.org"},{"user_id":44,"username":"Oren","email":"interdum.Nunc@infelisNulla.co.uk"},{"user_id":45,"username":"Pandora","email":"vel.nisl@Donec.edu"},{"user_id":46,"username":"Octavius","email":"pellentesque.eget@ami.edu"},{"user_id":47,"username":"James","email":"aliquet.molestie.tellus@ametfaucibus.net"},{"user_id":48,"username":"Nola","email":"Nunc@Etiamgravidamolestie.edu"},{"user_id":49,"username":"Rachel","email":"pretium@Phasellus.net"},{"user_id":50,"username":"Matthew","email":"suscipit@justo.org"},{"user_id":51,"username":"Holmes","email":"quis.turpis.vitae@diam.org"},{"user_id":52,"username":"Geraldine","email":"primis@odio.ca"},{"user_id":53,"username":"Griffin","email":"sit.amet@Donecfelisorci.net"},{"user_id":54,"username":"David","email":"fames@rutrumurna.org"},{"user_id":55,"username":"Kato","email":"Phasellus.at.augue@arcuSedet.edu"},{"user_id":56,"username":"Garth","email":"adipiscing@Donec.com"},{"user_id":57,"username":"Clarke","email":"Quisque.purus.sapien@Pellentesqueultricies.com"},{"user_id":58,"username":"Veda","email":"eu@aliquamerosturpis.org"},{"user_id":59,"username":"Harlan","email":"Aenean@infelisNulla.edu"},{"user_id":60,"username":"Peter","email":"eros@neque.org"},{"user_id":61,"username":"Simon","email":"ac@enim.org"},{"user_id":62,"username":"Barrett","email":"egestas.a@blanditcongueIn.co.uk"},{"user_id":63,"username":"Gary","email":"Morbi@massaSuspendisse.net"},{"user_id":64,"username":"Aubrey","email":"non.enim@lorem.org"},{"user_id":65,"username":"Kim","email":"est.Nunc@egetmetus.edu"},{"user_id":66,"username":"Connor","email":"faucibus.ut.nulla@acturpis.ca"},{"user_id":67,"username":"Cruz","email":"et@sodalespurus.org"},{"user_id":68,"username":"Reece","email":"felis.eget.varius@Aenean.net"},{"user_id":69,"username":"Sybill","email":"euismod.et@dolorDonecfringilla.edu"},{"user_id":70,"username":"Felicia","email":"Curabitur@hendreritconsectetuercursus.net"},{"user_id":71,"username":"Charity","email":"sem.elit.pharetra@molestie.org"},{"user_id":72,"username":"Tiger","email":"rutrum.magna@Sed.com"},{"user_id":73,"username":"Declan","email":"euismod.et@DonecfringillaDonec.net"},{"user_id":74,"username":"Octavius","email":"eu@non.com"},{"user_id":75,"username":"Kylynn","email":"sapien.gravida@Nuncmauris.net"},{"user_id":76,"username":"Teegan","email":"metus@Nulla.edu"},{"user_id":77,"username":"Kane","email":"Nulla.interdum@adui.ca"},{"user_id":78,"username":"Geraldine","email":"ligula.Aliquam@non.net"},{"user_id":79,"username":"Candace","email":"dui.quis.accumsan@mauris.co.uk"},{"user_id":80,"username":"Walter","email":"Proin.non@acfermentumvel.edu"},{"user_id":81,"username":"Hedley","email":"dis.parturient@nascetur.co.uk"},{"user_id":82,"username":"Heather","email":"est.mauris@eratvolutpatNulla.net"},{"user_id":83,"username":"Guinevere","email":"vitae.aliquam@nullamagna.ca"},{"user_id":84,"username":"Lewis","email":"consectetuer.ipsum@erat.com"},{"user_id":85,"username":"Skyler","email":"a.ultricies.adipiscing@Integer.co.uk"},{"user_id":86,"username":"Daniel","email":"cursus.Nunc@et.net"},{"user_id":87,"username":"Norman","email":"lorem.ut@Mauriseuturpis.net"},{"user_id":88,"username":"Chaney","email":"ut.cursus@in.net"},{"user_id":89,"username":"Lenore","email":"sodales@ornare.net"},{"user_id":90,"username":"Veronica","email":"quis@scelerisque.edu"},{"user_id":91,"username":"Imelda","email":"nibh.lacinia.orci@cursusNuncmauris.net"},{"user_id":92,"username":"Nolan","email":"et.magnis.dis@leo.net"},{"user_id":93,"username":"Lysandra","email":"ut.ipsum@quis.net"},{"user_id":94,"username":"Noel","email":"primis@Aenean.edu"},{"user_id":95,"username":"Kyla","email":"Nunc.commodo.auctor@variusultricesmauris.co.uk"},{"user_id":96,"username":"Allen","email":"metus.In@idnuncinterdum.com"},{"user_id":97,"username":"Yardley","email":"fringilla@Quisque.org"},{"user_id":98,"username":"Rigel","email":"ornare@augueeutempor.ca"},{"user_id":99,"username":"Keefe","email":"mattis.Integer@lectussit.edu"},{"user_id":100,"username":"Abbot","email":"Cum.sociis@risusvariusorci.ca"}]%                                         
(base) ➜  Eval_K8S 


--- Once we have a namspace, I tried to freeze/limit DB Resources as I got error `kubectl logs` needs alos the namespace

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
Waiting resources up...
Evaluation K8S resources are: 
NAME                                      READY   STATUS    RESTARTS   AGE
pod/my-deployment-eval-6865c7b8cf-2sljv   2/2     Running   0          10s
pod/my-deployment-eval-6865c7b8cf-5r79x   2/2     Running   0          10s
pod/my-deployment-eval-6865c7b8cf-ckkqf   2/2     Running   0          10s

NAME                      TYPE        CLUSTER-IP    EXTERNAL-IP   PORT(S)    AGE
service/my-service-eval   ClusterIP   10.107.47.7   <none>        9300/TCP   10s

NAME                                 READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/my-deployment-eval   3/3     3            3           10s

NAME                                            DESIRED   CURRENT   READY   AGE
replicaset.apps/my-deployment-eval-6865c7b8cf   3         3         3       10s
Evaluation K8S Ingress is: 
NAME              CLASS   HOSTS   ADDRESS   PORTS   AGE
my-ingress-eval   nginx   *                 80      10s
Checking status endpoint: 
HTTP/1.1 200 OK
Date: Tue, 28 Dec 2021 11:10:48 GMT
Content-Type: application/json
Content-Length: 1
Connection: keep-alive

1Checking users endpoint: 
HTTP/1.1 500 Internal Server Error
Date: Tue, 28 Dec 2021 11:10:48 GMT
Content-Type: text/plain; charset=utf-8
Content-Length: 21
Connection: keep-alive

Internal Server ErrorChecking user => id=1 endpoint: 
HTTP/1.1 500 Internal Server Error
Date: Tue, 28 Dec 2021 11:10:48 GMT
Content-Type: text/plain; charset=utf-8
Content-Length: 21
Connection: keep-alive

Internal Server Error%                                                                                                                                    
(base) ➜  Eval_K8S git:(master) ✗ curl http://localhost:80/users
[{"user_id":1,"username":"August","email":"eu.neque.pellentesque@eumetus.edu"},{"user_id":2,"username":"Linda","email":"eleifend.Cras.sed@cursusnonegestas.com"},{"user_id":3,"username":"Kareem","email":"urna@nonummyultricies.co.uk"},{"user_id":4,"username":"Alyssa","email":"Nulla@sagittis.co.uk"},{"user_id":5,"username":"Demetria","email":"nibh@maurisa.ca"},{"user_id":6,"username":"Ahmed","email":"enim.nisl@ac.net"},{"user_id":7,"username":"Chantale","email":"dictum.eleifend.nunc@Praesentinterdumligula.edu"},{"user_id":8,"username":"Marny","email":"ut.ipsum.ac@vehicula.net"},{"user_id":9,"username":"Ryan","email":"Morbi.vehicula@turpis.ca"},{"user_id":10,"username":"Yuli","email":"suscipit.nonummy@lacuspedesagittis.net"},{"user_id":11,"username":"Cailin","email":"elit.Etiam.laoreet@pedemalesuada.org"},{"user_id":12,"username":"Berk","email":"ipsum.Donec.sollicitudin@consequatdolorvitae.ca"},{"user_id":13,"username":"Jacob","email":"venenatis.vel@metus.ca"},{"user_id":14,"username":"Keely","email":"id@consequatnec.ca"},{"user_id":15,"username":"Kameko","email":"sem.molestie.sodales@Vestibulumut.edu"},{"user_id":16,"username":"Amy","email":"ac.turpis.egestas@Duiscursus.edu"},{"user_id":17,"username":"Latifah","email":"et.rutrum.non@consectetuer.net"},{"user_id":18,"username":"Jameson","email":"erat.volutpat@Craseu.net"},{"user_id":19,"username":"Hasad","email":"rutrum.eu.ultrices@nuncsed.net"},{"user_id":20,"username":"Anthony","email":"ante@adipiscingelitAliquam.org"},{"user_id":21,"username":"Oscar","email":"enim.Etiam@erat.org"},{"user_id":22,"username":"Ivy","email":"malesuada@nislarcuiaculis.edu"},{"user_id":23,"username":"Hall","email":"Morbi.vehicula@penatibus.com"},{"user_id":24,"username":"Hilary","email":"Aenean.euismod.mauris@odio.ca"},{"user_id":25,"username":"Plato","email":"eu.eleifend.nec@consequatenimdiam.net"},{"user_id":26,"username":"Jin","email":"Proin.vel@rutrumeuultrices.com"},{"user_id":27,"username":"Cadman","email":"risus@sociosquadlitora.ca"},{"user_id":28,"username":"Kasper","email":"semper@fringillacursus.edu"},{"user_id":29,"username":"Sydney","email":"ornare.In.faucibus@tortornibhsit.co.uk"},{"user_id":30,"username":"Alexander","email":"sapien@Sedpharetra.ca"},{"user_id":31,"username":"Gisela","email":"at.velit.Cras@at.com"},{"user_id":32,"username":"Xenos","email":"ante@enimSuspendissealiquet.co.uk"},{"user_id":33,"username":"Chester","email":"libero.at@eunulla.ca"},{"user_id":34,"username":"Keelie","email":"suscipit.est@odio.edu"},{"user_id":35,"username":"Brett","email":"accumsan@pretiumneque.com"},{"user_id":36,"username":"Craig","email":"mollis.Duis.sit@ligula.net"},{"user_id":37,"username":"Ashton","email":"accumsan@parturient.net"},{"user_id":38,"username":"Yolanda","email":"in.aliquet@egetvenenatis.ca"},{"user_id":39,"username":"Lysandra","email":"odio.Aliquam@tincidunttempus.com"},{"user_id":40,"username":"Drake","email":"neque.et@bibendum.co.uk"},{"user_id":41,"username":"Wayne","email":"dolor@ipsum.edu"},{"user_id":42,"username":"Chaim","email":"convallis.convallis@sitamet.co.uk"},{"user_id":43,"username":"Gary","email":"dapibus@Donec.org"},{"user_id":44,"username":"Oren","email":"interdum.Nunc@infelisNulla.co.uk"},{"user_id":45,"username":"Pandora","email":"vel.nisl@Donec.edu"},{"user_id":46,"username":"Octavius","email":"pellentesque.eget@ami.edu"},{"user_id":47,"username":"James","emai
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
pod/my-deployment-eval-6865c7b8cf-8pbfc   0/2     ContainerCreating   0          0s
pod/my-deployment-eval-6865c7b8cf-pbsmk   0/2     ContainerCreating   0          0s
pod/my-deployment-eval-6865c7b8cf-xrn5c   0/2     ContainerCreating   0          0s

NAME                      TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)    AGE
service/my-service-eval   ClusterIP   10.108.78.148   <none>        9300/TCP   0s

NAME                                 READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/my-deployment-eval   0/3     3            0           0s

NAME                                            DESIRED   CURRENT   READY   AGE
replicaset.apps/my-deployment-eval-6865c7b8cf   3         3         0       0s
Evaluation K8S Ingress is: 
NAME              CLASS   HOSTS   ADDRESS   PORTS   AGE
my-ingress-eval   nginx   *                 80      0s
Waiting resources up...
Evaluation K8S resources are: 
NAME                                      READY   STATUS    RESTARTS   AGE
pod/my-deployment-eval-6865c7b8cf-8pbfc   2/2     Running   0          16s
pod/my-deployment-eval-6865c7b8cf-pbsmk   2/2     Running   0          16s
pod/my-deployment-eval-6865c7b8cf-xrn5c   2/2     Running   0          16s

NAME                      TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)    AGE
service/my-service-eval   ClusterIP   10.108.78.148   <none>        9300/TCP   16s

NAME                                 READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/my-deployment-eval   3/3     3            3           16s

NAME                                            DESIRED   CURRENT   READY   AGE
replicaset.apps/my-deployment-eval-6865c7b8cf   3         3         3       16s
Checking status endpoint: 
HTTP/1.1 200 OK
Date: Tue, 28 Dec 2021 11:13:59 GMT
Content-Type: application/json
Content-Length: 1
Connection: keep-alive

1Checking users endpoint: 
HTTP/1.1 200 OK
Date: Tue, 28 Dec 2021 11:13:59 GMT
Content-Type: application/json
Content-Length: 7196
Connection: keep-alive

[{"user_id":1,"username":"August","email":"eu.neque.pellentesque@eumetus.edu"},{"user_id":2,"username":"Linda","email":"eleifend.Cras.sed@cursusnonegestas.com"},{"user_id":3,"username":"Kareem","email":"urna@nonummyultricies.co.uk"},{"user_id":4,"username":"Alyssa","email":"Nulla@sagittis.co.uk"},{"user_id":5,"username":"Demetria","email":"nibh@maurisa.ca"},{"user_id":6,"username":"Ahmed","email":"enim.nisl@ac.net"},{"user_id":7,"username":"Chantale","email":"dictum.eleifend.nunc@Praesentinterdumligula.edu"},{"user_id":8,"username":"Marny","email":"ut.ipsum.ac@vehicula.net"},{"user_id":9,"username":"Ryan","email":"Morbi.vehicula@turpis.ca"},{"user_id":10,"username":"Yuli","email":"suscipit.nonummy@lacuspedesagittis.net"},{"user_id":11,"username":"Cailin","email":"elit.Etiam.laoreet@pedemalesuada.org"},{"user_id":12,"username":"Berk","email":"ipsum.Donec.sollicitudin@consequatdolorvitae.ca"},{"user_id":13,"username":"Jacob","email":"venenatis.vel@metus.ca"},{"user_id":14,"username":"Keely","email":"id@consequatnec.ca"},{"user_id":15,"username":"Kameko","email":"sem.molestie.sodales@Vestibulumut.edu"},{"user_id":16,"username":"Amy","email":"ac.turpis.egestas@Duiscursus.edu"},{"user_id":17,"username":"Latifah","email":"et.rutrum.non@consectetuer.net"},{"user_id":18,"username":"Jameson","email":"erat.volutpat@Craseu.net"},{"user_id":19,"username":"Hasad","email":"rutrum.eu.ultrices@nuncsed.net"},{"user_id":20,"username":"Anthony","email":"ante@adipiscingelitAliquam.org"},{"user_id":21,"username":"Oscar","email":"enim.Etiam@erat.org"},{"user_id":22,"username":"Ivy","email":"malesuada@nislarcuiaculis.edu"},{"user_id":23,"username":"Hall","email":"Morbi.vehicula@penatibus.com"},{"user_id":24,"username":"Hilary","email":"Aenean.euismod.mauris@odio.ca"},{"user_id":25,"username":"Plato","email":"eu.eleifend.nec@consequatenimdiam.net"},{"user_id":26,"username":"Jin","email":"Proin.vel@rutrumeuultrices.com"},{"user_id":27,"username":"Cadman","email":"risus@sociosquadlitora.ca"},{"user_id":28,"username":"Kasper","email":"semper@fringillacursus.edu"},{"user_id":29,"username":"Sydney","email":"ornare.In.faucibus@tortornibhsit.co.uk"},{"user_id":30,"username":"Alexander","email":"sapien@Sedpharetra.ca"},{"user_id":31,"username":"Gisela","email":"at.velit.Cras@at.com"},{"user_id":32,"username":"Xenos","email":"ante@enimSuspendissealiquet.co.uk"},{"user_id":33,"username":"Chester","email":"libero.at@eunulla.ca"},{"user_id":34,"username":"Keelie","email":"suscipit.est@odio.edu"},{"user_id":35,"username":"Brett","email":"accumsan@pretiumneque.com"},{"user_id":36,"username":"Craig","email":"mollis.Duis.sit@ligula.net"},{"user_id":37,"username":"Ashton","email":"accumsan@parturient.net"},{"user_id":38,"username":"Yolanda","email":"in.aliquet@egetvenenatis.ca"},{"user_id":39,"username":"Lysandra","email":"odio.Aliquam@tincidunttempus.com"},{"user_id":40,"username":"Drake","email":"neque.et@bibendum.co.uk"},{"user_id":41,"username":"Wayne","email":"dolor@ipsum.edu"},{"user_id":42,"username":"Chaim","email":"convallis.convallis@sitamet.co.uk"},{"user_id":43,"username":"Gary","email":"dapibus@Donec.org"},{"user_id":44,"username":"Oren","email":"interdum.Nunc@infelisNulla.co.uk"},{"user_id":45,"username":"Pandora","email":"vel.nisl@Donec.edu"},{"user_id":46,"username":"Octavius","email":"pellentesque.eget@ami.edu"},{"user_id":47,"username":"James","email":"aliquet.molestie.tellus@ametfaucibus.net"},{"user_id":48,"username":"Nola","email":"Nunc@Etiamgravidamolestie.edu"},{"user_id":49,"username":"Rachel","email":"pretium@Phasellus.net"},{"user_id":50,"username":"Matthew","email":"suscipit@justo.org"},{"user_id":51,"username":"Holmes","email":"quis.turpis.vitae@diam.org"},{"user_id":52,"username":"Geraldine","email":"primis@odio.ca"},{"user_id":53,"username":"Griffin","email":"sit.amet@Donecfelisorci.net"},{"user_id":54,"username":"David","email":"fames@rutrumurna.org"},{"user_id":55,"username":"Kato","email":"Phasellus.at.augue@arcuSedet.edu"},{"user_id":56,"username":"Garth","email":"adipiscing@Donec.com"},{"user_id":57,"username":"Clarke","email":"Quisque.purus.sapien@Pellentesqueultricies.com"},{"user_id":58,"username":"Veda","email":"eu@aliquamerosturpis.org"},{"user_id":59,"username":"Harlan","email":"Aenean@infelisNulla.edu"},{"user_id":60,"username":"Peter","email":"eros@neque.org"},{"user_id":61,"username":"Simon","email":"ac@enim.org"},{"user_id":62,"username":"Barrett","email":"egestas.a@blanditcongueIn.co.uk"},{"user_id":63,"username":"Gary","email":"Morbi@massaSuspendisse.net"},{"user_id":64,"username":"Aubrey","email":"non.enim@lorem.org"},{"user_id":65,"username":"Kim","email":"est.Nunc@egetmetus.edu"},{"user_id":66,"username":"Connor","email":"faucibus.ut.nulla@acturpis.ca"},{"user_id":67,"username
(base) ➜  Eval_K8S git:(master) ✗ git status 
On branch master
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
pod/my-deployment-eval-749567bc99-pzb57   0/2     ContainerCreating   0          0s
pod/my-deployment-eval-749567bc99-xg4zf   0/2     ContainerCreating   0          0s
pod/my-deployment-eval-749567bc99-zq9hz   0/2     ContainerCreating   0          0s

NAME                      TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)    AGE
service/my-service-eval   ClusterIP   10.105.134.88   <none>        9300/TCP   0s

NAME                                 READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/my-deployment-eval   0/3     3            0           0s

NAME                                            DESIRED   CURRENT   READY   AGE
replicaset.apps/my-deployment-eval-749567bc99   3         3         0       0s
Evaluation K8S Ingress is: 
NAME              CLASS   HOSTS   ADDRESS   PORTS   AGE
my-ingress-eval   nginx   *                 80      0s
Waiting resources up...
Evaluation K8S resources are: 
NAME                                      READY   STATUS    RESTARTS   AGE
pod/my-deployment-eval-749567bc99-pzb57   2/2     Running   1          15s
pod/my-deployment-eval-749567bc99-xg4zf   2/2     Running   1          15s
pod/my-deployment-eval-749567bc99-zq9hz   2/2     Running   1          15s

NAME                      TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)    AGE
service/my-service-eval   ClusterIP   10.105.134.88   <none>        9300/TCP   15s

NAME                                 READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/my-deployment-eval   3/3     3            3           15s

NAME                                            DESIRED   CURRENT   READY   AGE
replicaset.apps/my-deployment-eval-749567bc99   3         3         3       15s
Checking status endpoint: 
HTTP/1.1 200 OK
Date: Tue, 28 Dec 2021 11:30:49 GMT
Content-Type: application/json
Content-Length: 1
Connection: keep-alive

1Checking users endpoint: 
HTTP/1.1 500 Internal Server Error
Date: Tue, 28 Dec 2021 11:30:49 GMT
Content-Type: text/plain; charset=utf-8
Content-Length: 21
Connection: keep-alive

Internal Server ErrorChecking user => id=1 endpoint: 
HTTP/1.1 500 Internal Server Error
Date: Tue, 28 Dec 2021 11:30:49 GMT
Content-Type: text/plain; charset=utf-8
Content-Length: 21
Connection: keep-alive

Internal Server Error%                                                                                                                                          
(base) ➜  Eval_K8S git:(master) ✗ kubectl get pods --namespace=my-evaluation-namespace 
NAME                                  READY   STATUS      RESTARTS   AGE
my-deployment-eval-749567bc99-pzb57   1/2     OOMKilled   1          28s
my-deployment-eval-749567bc99-xg4zf   1/2     OOMKilled   1          28s
my-deployment-eval-749567bc99-zq9hz   1/2     OOMKilled   1          28s
(base) ➜  Eval_K8S git:(master) ✗ kubectl logs my-deployment-eval-749567bc99-pzb57 -c mysql-db
Error from server (NotFound): pods "my-deployment-eval-749567bc99-pzb57" not found
(base) ➜  Eval_K8S git:(master) ✗ kubectl get pods --namespace=my-evaluation-namespace        
NAME                                  READY   STATUS             RESTARTS   AGE
my-deployment-eval-749567bc99-pzb57   1/2     CrashLoopBackOff   2          62s
my-deployment-eval-749567bc99-xg4zf   1/2     CrashLoopBackOff   2          62s
my-deployment-eval-749567bc99-zq9hz   1/2     CrashLoopBackOff   2          62s
(base) ➜  Eval_K8S git:(master) ✗ kubectl logs my-deployment-eval-749567bc99-pzb57
Error from server (NotFound): pods "my-deployment-eval-749567bc99-pzb57" not found
(base) ➜  Eval_K8S git:(master) ✗ kubectl logs my-deployment-eval-749567bc99-pzb57
(base) ➜  Eval_K8S git:(master) ✗ kubectl logs my-deployment-eval-749567bc99-xg4zf
Error from server (NotFound): pods "my-deployment-eval-749567bc99-xg4zf" not found
(base) ➜  Eval_K8S git:(master) ✗ kubectl logs my-deployment-eval-749567bc99-zq9hz
Error from server (NotFound): pods "my-deployment-eval-749567bc99-zq9hz" not found
(base) ➜  Eval_K8S git:(master) ✗ kubectl get pods --namespace=my-evaluation-namespace        
NAME                                  READY   STATUS             RESTARTS   AGE
my-deployment-eval-749567bc99-pzb57   1/2     CrashLoopBackOff   3          101s
my-deployment-eval-749567bc99-xg4zf   1/2     CrashLoopBackOff   3          101s
my-deployment-eval-749567bc99-zq9hz   1/2     CrashLoopBackOff   3          101s
(base) ➜  Eval_K8S git:(master) ✗ kubectl logs my-deployment-eval-749567bc99-pzb57
Error from server (NotFound): pods "my-deployment-eval-749567bc99-pzb57" not found
(base) ➜  Eval_K8S git:(master) ✗ kubectl logs my-deployment-eval-749567bc99-pzb57
Error from server (NotFound): pods "my-deployment-eval-749567bc99-pzb57" not found
(base) ➜  Eval_K8S git:(master) ✗ kubectl get pods --namespace=my-evaluation-namespace
NAME                                  READY   STATUS             RESTARTS   AGE
my-deployment-eval-749567bc99-pzb57   1/2     CrashLoopBackOff   4          2m39s
my-deployment-eval-749567bc99-xg4zf   1/2     CrashLoopBackOff   4          2m39s
my-deployment-eval-749567bc99-zq9hz   1/2     CrashLoopBackOff   4          2m39s
(base) ➜  Eval_K8S git:(master) ✗ kubectl logs my-deployment-eval-749567bc99-pzb57 -c mysql-db --namespace=my-evaluation-namespac
Error from server (NotFound): namespaces "my-evaluation-namespac" not found
(base) ➜  Eval_K8S git:(master) ✗ kubectl logs my-deployment-eval-749567bc99-pzb57 -c mysql-db --namespace=my-evaluation-namespace
2021-12-28 11:32:37+00:00 [Note] [Entrypoint]: Entrypoint script for MySQL Server 8.0.25-1debian10 started.
2021-12-28 11:32:37+00:00 [Note] [Entrypoint]: Switching to dedicated user 'mysql'
2021-12-28 11:32:37+00:00 [Note] [Entrypoint]: Entrypoint script for MySQL Server 8.0.25-1debian10 started.
2021-12-28 11:32:37+00:00 [Note] [Entrypoint]: Initializing database files
2021-12-28T11:32:37.693959Z 0 [System] [MY-013169] [Server] /usr/sbin/mysqld (mysqld 8.0.25) initializing of server in progress as process 44
2021-12-28T11:32:37.700164Z 1 [System] [MY-013576] [InnoDB] InnoDB initialization has started.
2021-12-28T11:32:38.435118Z 1 [System] [MY-013577] [InnoDB] InnoDB initialization has ended.
2021-12-28T11:32:41.423432Z 6 [Warning] [MY-010453] [Server] root@localhost is created with an empty password ! Please consider switching off the --initialize-insecure option.
/usr/local/bin/docker-entrypoint.sh: line 191:    44 Killed                  "$@" --initialize-insecure --default-time-zone=SYSTEM
(base) ➜  Eval_K8S git:(master) ✗ 