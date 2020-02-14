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

| Command      |  Description                                                |
|--------------|-------------------------------------------------------------|
| PREFIX d     | выйти из сессии                                             |
| PREFIX :     | Enters Command mode                                         |
| PREFIX c     | новее окно                                                  |
| PREFIX 0…9   | выбор окна                                                  |
| PREFIX w     | отображение окон для выбора, в текущей сессии               |
| PREFIX ,     | переименование окна                                         |
| PREFIX &     | Closes the current window after prompting for confirmation. |
| PREFIX %     | разделение окна вертикально                                 |
| PREFIX "     | разеделение горизонтально                                   |
| PREFIX o     | перемещение между окнами по порядку                         |
| PREFIX q     | нумерация окон                                              |
| PREFIX x     | закрытие окна                                               |
| PREFIX SPACE | меняет расположение окон                                    |




## настройка `~/.tmux.conf`

```sh
set -g prefix C-a
unbind C-b

```