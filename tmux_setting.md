# Конфигурирование tmux

https://github.com/gpakosz/.tmux


Создание новой сессии
```
tmux new -s basic
```

Отключение 
```
Ctr+b d
```

Просмотр сессий

```
tmux ls
```

Создание новой сессии в фоне
```
tmux new -s second_session -d
```

Подключение к выбраной сессии
```
tmux attach -t second_session
```

удаление сессий
```
tmux kill-session -t basic
tmux kill-session -t second_session
```
