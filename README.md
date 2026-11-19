## ДЗ №3 по Docker

## Сборка и запуск
```sh
cp .env.example .env
docker compose up -d --build
```

В `.env` можно задать порт хоста (`HOST_PORT`) и приветствие (`GREETING`).

## Проверка

```sh
curl -fsS http://127.0.0.1:8080/
curl -fsS -X POST http://127.0.0.1:8080/increment
curl -fsS http://127.0.0.1:8080/
docker compose down
docker compose up -d
curl -fsS http://127.0.0.1:8080/
docker compose logs app > logs.txt 2>&1
cat logs.txt
```

Вывод:

```sh
{"greeting": "6pts test", "count": 0, "hostname": "ea37d213e6c2", "storage": "sqlite"}%
{"greeting": "6pts test", "count": 1, "hostname": "ea37d213e6c2", "storage": "sqlite"}% 
{"greeting": "6pts test", "count": 1, "hostname": "ea37d213e6c2", "storage": "sqlite"}%   
[+] Running 2/2
 ✔ Container docker_hw3-app-1  Removed                                                                                                                                  10.6s 
 ✔ Network docker_hw3_default  Removed 
[+] Running 2/2
 ✔ Network docker_hw3_default  Created                                                                                                                                   0.8s
 ✔ Container docker_hw3-app-1  Started
 {"greeting": "6pts test", "count": 1, "hostname": "0495bc471c96", "storage": "sqlite"}%   
  app-1  | 2026-11-19 21:10:04,265 listening port=8000 storage=sqlite
  app-1  | 2026-11-19 21:10:14,880 http 172.20.0.1 "GET / HTTP/1.1" 200 -
```
