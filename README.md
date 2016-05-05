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



## influxdb-annotate - добавление событий в InfluxDB
Send event from other host for any date:  
```HOST=hostname.tag influxdb-annotate 'text of event' 'tag1 tag2' '2016-04-28 13:00:00'```

Send event from current host for now date:  
```influxdb-annotate 'text of event' 'tag1 tag2'```

date is optional, other arguments required  
default hostname - full machine hostname



## influxdb-clientstat - сохранение информации о загрузке страниц в InfluxDB
Предполагается запуск через telegraf, плагин exec.



## influxdb-nginx-codes - передача метрик из nginx-лога (http коды) в influxdb с помощью logster
Предполагается запуск через telegraf, плагин exec.

- ключ `-d` используется, чтобы вместо подключения к graphite logster писал в stdout,
- `--graphite-host` может вести на любой хост и порт, это неважно,
- `SampleLogster` - стандартный парсер, который подошел для нашего формата лога,
- `cut` - обрезает host:port из вывода, чтобы соответствовать формату graphite.

Конфиг telegraf:
```
  exec:
    commands: ["/usr/local/bin/influxdb-nginx-codes"]
    data_format: "graphite"
    templates: ["measurement.field"]
```

#### Минусы:
- домены не собираются, то есть сейчас известны только коды по всему серверу
- немного костыльная обработка вывода, чтобы он зашел в influxdb. Если использовать logster и дальше, думаю, можно за час написать вывод в формате influxdb
- добавить поддержку тегов (доменов) сложно, этого вообще нет в logster



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

## CONTRIBUTING
Генерируйте CHANGELOG.md через [conventional-changelog](http://blog.popstas.ru/blog/2016/03/06/changelog-dot-md-generate-from-git-conventions/):
```
conventional-changelog -i CHANGELOG.md -s -r 0
```