# Третья работа 

1) Создаю Dockerfile 
2) Немного редактирую index.html
2) Собираю контейнер
```
docker build -t docker-whale .
```
3) Запускаю контейнер
```
docker run -d -p 8080:8080 docker-whale
```

Результат третьей работы - страничка nginx

<a href="https://ibb.co/tZ66LJ5"><img src="https://i.ibb.co/CJyyPHF/Screenshot-from-2022-09-08-14-30-49.png" alt="Screenshot-from-2022-09-08-14-30-49" border="0"></a>

Ссылка на мой репозиторий в Dockerhub находится [здесь](https://hub.docker.com/repository/docker/laverati/docker-whale)
