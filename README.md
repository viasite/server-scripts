# Drall
- поиск всех папок друпала
- фильтрация папок
- переход в корневую папку друпала
- выполнение заданной команды от имени юзера сайта или root


Usage: `drall [options] ["command or command_file_path"]`

```
Options:
  -h, --help            show this help message and exit
  -r, --asroot          Exec as root
  -q, --quiet           don't print status messages to stdout
  -v, --verbose         Verbose
  -n NUMBER             Only NUMBER first sites. 0 = all sites
  --name=ROOT_PATH_MASK
                        only matches by root_path
  -m MATCH_TESTS, --match-test=MATCH_TESTS
                        only matches if command output not empty string
                        commands from/usr/local/bin/drupal-tests/ allowed
                        multiple tests You can use negative matchers, add "-"
                        before command
  --test                Test exec, only first site
  --theme=THEME         Only for sites with theme
```

## Команда:
Команда будет запущена в каждой папке отфильтрованного сайта.  
Можно указать путь к скрипту, а можно написать bash строку, она будет выполнена.  
Чтобы не экранировать строку команды, можно писать ее в одинарных кавычках.  
`drall "echo \$(pwd)"` - правильно  
`drall 'echo $(pwd)'` - правильно  
`drall "echo $(pwd)"` - неправильно, в каждой папке выдаст путь папки, из которой был запущен drall  


## Параметры:
`-q` Не выводить путь к папке сайта перед выполнением команды  
`-v` Подробный вывод работы скрипта  
`-r`, `--asroot` Выполнить команду под root (иначе выполнится от имени владельца папки)  
`-n` Применить только к первым n сайтам  
`-m` --match-test Фильтровать сайты командой  
`--theme` Применять только к сайтам с определенной темой  


## Фильтрация сайтов:
`-m` - главная команда для фильтрации. Работает так:  
В /usr/local/bin/drupal-tests ищется одноименный файл и выполняется в корне сайта.  
Если результат не пустой и не равен нулю, сайт проходит фильтр.  
Можно указывать несколько тестов так:  
`drall -m test1 -m test2`  
  
Можно использовать отрицательные тесты, нужно добавить "-" перед командой.  
Например, вывести сайты с "грязным" css:  
`drall -m visitkaplus -m -clean_css`  
  
`--theme` - принимает имя темы, проверяет, лежит ли в sites/all/themes такая папка. После появления match-test не особо полезен.  
  
`-n` - ограничивает выходной список указанным количеством  
  
`--name` - ограничивает выходной список сайтами, содержащими в пути указанную подстроку. Удобно, если нужно проверить drall на конкретном одном сайте  



## Примеры использования:
`drall` - просто выведет список всех друпалов  
`drall -m snormal` выведет список всех snormal  
`drall -m visitkaplus -m clean_css` - получение списка всех визиток с чистым css  
`drall "drush dis dblog"` - отключит dblog на всех сайтах  
`drall "drush ublk user@example.com"` - а также другие drush-команды  
`drall "drupal-patch http://drupal.org/path/to/patch"`  
# пропатчить все готовые не измененные сайты (патч просто молча не применится, если сайт изменен)  
`drall -m visitkaplus "drupal-patch http://visitkaplus.viasite.ru/patches/style.css_menu_width.patch"`  
`drall -m "-drs vget viasite_update_modified" -m visitkaplus` # получить все визитки+ не отключенные от апдейтов  
`drall -v -m all_complete -m clean_all` # все готовые не измененные сайты  
`drall --asroot -m snormal -m clean_css -v 'cp-chown /home/snormal/www/snormal.viasite.ru $PWD sites/all/themes/viasite_vplus/css/style.css'` # скопировать style.css из эталона в каждый неизмененный snormal  


## Известные проблемы:
1. Команду нужно заключать в кавычки, фактически, команда должна быть одним параметром скрипта
2. Если в папке тестов drupal-tests будет несколько одноименных тестов, команда скорее всего упадет
3. Если скрипт выдает exitcode отличный от нуля, программа упадет