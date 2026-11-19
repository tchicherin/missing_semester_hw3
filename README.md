## ДЗ №3 по Docker

## Сборка и запуск
```sh
docker build -t hw3 .
docker run -d --name hw3 -p 127.0.0.1:8080:8000 -e 'GREETING=4pts test' hw3
```

## Проверка

```sh
curl -fsS http://127.0.0.1:8080/
curl -fsS -X POST http://127.0.0.1:8080/increment
curl -fsS http://127.0.0.1:8080/readyz
docker logs hw3 > logs.txt 2>&1
cat logs.txt
```

Вывод:

```sh
{"greeting": "4pts test", "count": 0, "hostname": "a37056fb22b0", "storage": "sqlite"}%
{"greeting": "4pts test", "count": 1, "hostname": "a37056fb22b0", "storage": "sqlite"}% 
{"status": "ready", "storage": "sqlite"}%
2026-11-19 20:15:14,791 listening port=8000 storage=sqlite
2026-11-19 20:15:25,937 http 172.17.0.1 "GET / HTTP/1.1" 200 -
2026-11-19 20:17:12,025 http 172.17.0.1 "GET / HTTP/1.1" 200 -
2026-11-19 20:17:17,134 http 172.17.0.1 "POST /increment HTTP/1.1" 200 -
2026-11-19 20:17:21,542 http 172.17.0.1 "GET /readyz HTTP/1.1" 200 -
```
