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



## get-sites - список сайтов на хостинге, домены, email адреса
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



## TODO:
- генерация документации из текста скриптов
