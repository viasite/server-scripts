# server-scripts
Various scripts for debian based shared hosting server.

## Requirements
- [popstas/drupal-scripts](https://github.com/popstas/drupal-scripts)
- [popstas/drall](https://github.com/popstas/drall)

## Installation
```
git clone https://github.com/popstas/server-scripts.git
cd server-scripts
./install.sh
```

It install scripts to `/usr/share/server-scripts`.
Config placed to `/etc/server-scripts.conf`


## backups-check
Проверка папок с бекапами на наличие свежих файлов.

Скрипт принимает список папок для проверки (из конфига), проверяет, что в каждой из них,
Предполагается, что минимум раз в сутки в папках появляются бекапы.
Если новых файлов не появилось, на email отправляется письмо с предупреждением.

В конфиге папки объявлены bash-массивом, выглядит это так:
```
BACKUPS_CHECK_DIRS=( \
"/path/to/backup" \
"/path/to/backup_sql" \
"/path/to/other/backup" \
)
```


## get-sites
Список сайтов на хостинге, домены, email адреса.
####
- Ищет все "root" в `/etc/nginx/sites-enabled`
- Для каждого `root` достает первый домен (`server_name`)
- Определяет движок сайта (drupal / joomla / wordpress / unknown / none)
- Для Drupal достает email из `site_mail`
- Для Joomla достает email из `configuration.php`
- Если в корне лежит файл с инфой (по умолчанию `.info`, определяется в `SITE_INFO_FILE`), достает из него email=*

### Использование
Список, разделенный табами:  
```get-sites > /root/log/sites.log```

Не включать в список new. и old. сайты:  
``` get-sites | grep "new.\|/old." > /root/log/sites.log```

csv файл:  
```echo "root_path;engine;domain;email" | grep "new.\|/old." > /root/log/sites.csv && get-sites | tr -s"\t" ";" >> /root/log/sites.csv```


## average - измерение среднего времени выполнения команды
Подробности - http://blog.popstas.ru/blog/2016/02/29/average-time-of-script-execution-in-bash/



## domains-check - проверка работоспособности доменов
Получает все сайты хостинга через `get-sites`, проверяет каждый домен сайта внешним DNS,
проверяет, что домен (A-запись) ведет на правильный сервер, в случае несовпадения выводит адрес.



## git-hook-post-receive - интеграция Git и Planfix
Подробности - http://blog.popstas.ru/blog/2016/03/02/git-gitlab-planfix-integration/



## site-rm
Удаляет сайт полностью.

Надо подтверждать каждый шаг.

Удаляет:

- конфиги из sites-enabled
- базу данных (только для drupal сайтов)
- папку сайта

Не делает никаких бэкапов, осторожно!



## sites-check - проверка работоспособности сайтов
Получает все сайты хостинга через `get-sites`, заходит на каждый из них и проверяет на код 200.
#### Исключения:
- сайты на drupal в maintenance mode не считаются упавшими
- сайты с редиректом (коды 3xx) не считаются упавшими




## user-setup - применение правильных прав к файлам сайта
Если в файлах сайта что-то не так с правами, например, часть файлов создана от имени root, это можно исправить командой
user-setup имя_юзера
Команда сменит владельца на указанного, поставит всем папкам 755, а файлам 644.

Применяется к /home/user/www/*, поэтому на большом кол-ве файлов может выполняться до 2 минут.

Параметр www убран, т.к. он был по историческим причинам.


## TODO:
- генерация документации из текста скриптов
