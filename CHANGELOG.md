<a name=""></a>
#  (2017-04-22)




<a name="0.3.1"></a>
## 0.3.1 (2017-04-22)

* feat: completions for dbundump, mysql_backup, zipsite ([aa1e698](https://github.com/popstas/server-scripts/commit/aa1e698))
* fix: deprecate grepcode in favour of using ag (the_silver_searcher) ([e3a8095](https://github.com/popstas/server-scripts/commit/e3a8095))



<a name="0.3.0"></a>
# 0.3.0 (2017-04-22)

* feat(reload-web): add reload service php7.0-fpm ([fde3b41](https://github.com/popstas/server-scripts/commit/fde3b41))
* feat: zsh completions plugin: dbdump, user-setup ([1ab85d3](https://github.com/popstas/server-scripts/commit/1ab85d3))
* fix: allow to exec goto-site without arguments from site root ([cbb09bb](https://github.com/popstas/server-scripts/commit/cbb09bb))
* docs: update changelog ([a9c994b](https://github.com/popstas/server-scripts/commit/a9c994b))



<a name="0.2.27"></a>
## 0.2.27 (2017-04-06)

* feat(dbundump): NO_BACKUP variable, minimize site downtime while dnundump ([55c9f0a](https://github.com/popstas/server-scripts/commit/55c9f0a)), closes [#2](https://github.com/popstas/server-scripts/issues/2) [#3](https://github.com/popstas/server-scripts/issues/3)



<a name="0.2.26"></a>
## 0.2.26 (2017-03-22)

* fix: goto-site command ([06e0a97](https://github.com/popstas/server-scripts/commit/06e0a97))
* feat: goto-site, site-list, new scripts ([b842c8f](https://github.com/popstas/server-scripts/commit/b842c8f))



<a name="0.2.25"></a>
## 0.2.25 (2017-03-03)

* fix(find): add sorting find results and current count ([4ed39fe](https://github.com/popstas/server-scripts/commit/4ed39fe))
* fix(find): fix error with empty arguments ([66781fe](https://github.com/popstas/server-scripts/commit/66781fe))
* fix: dbdump, detect-viruses, backups-checks: handle undefined DB_BACKUPS_*, MAILTO ([bb984d6](https://github.com/popstas/server-scripts/commit/bb984d6))
* docs(find): fix SKIP_ERRORS ([9e5d3a4](https://github.com/popstas/server-scripts/commit/9e5d3a4))
* feat(scandir): removed directories names from output ([e8f5a96](https://github.com/popstas/server-scripts/commit/e8f5a96))



<a name="0.2.24"></a>
## 0.2.24 (2017-02-23)

* feat(find): find-foreach, new script ([dbfb156](https://github.com/popstas/server-scripts/commit/dbfb156))



<a name="0.2.23"></a>
## 0.2.23 (2017-02-21)

* feat(git): git-extract-subproject, new script ([e405af2](https://github.com/popstas/server-scripts/commit/e405af2))
* fix(git-hook-post-receive): выработка не ставилась в проектах без gitlab ([05dfcc6](https://github.com/popstas/server-scripts/commit/05dfcc6))



<a name="0.2.22"></a>
## 0.2.22 (2017-01-20)

* feat(git-hook-post-receive): выработка в Планфиксе из коммита ([4aced4e](https://github.com/popstas/server-scripts/commit/4aced4e))
* fix(mysql_backup): clean all databases ([25ae65d](https://github.com/popstas/server-scripts/commit/25ae65d))



<a name="0.2.21"></a>
## 0.2.21 (2016-11-22)

* fix(detect-virus): update signatures ([e4826c8](https://github.com/popstas/server-scripts/commit/e4826c8))
* fix(zipsite): fixed corrupt _database.sql when autodetect drupal database ([7c12edf](https://github.com/popstas/server-scripts/commit/7c12edf))



<a name="0.2.20"></a>
## 0.2.20 (2016-09-15)

* fix(site-rename): fixed error with sed and replacing symlinks to files in configs ([5bd808d](https://github.com/popstas/server-scripts/commit/5bd808d))



<a name="0.2.19"></a>
## 0.2.19 (2016-09-08)

* feat(site): site-rename, new script ([d28cfe7](https://github.com/popstas/server-scripts/commit/d28cfe7))
* fix(grepcode): add less ext ([9f97f2c](https://github.com/popstas/server-scripts/commit/9f97f2c))
* fix(site-rm): add init lib ([34d41e1](https://github.com/popstas/server-scripts/commit/34d41e1))
* fix(site-rm): check drupal before detect database ([d7ee4ea](https://github.com/popstas/server-scripts/commit/d7ee4ea))
* fix(watch-modified): reverse sort order ([ba68e51](https://github.com/popstas/server-scripts/commit/ba68e51))



<a name="0.2.18"></a>
## 0.2.18 (2016-05-12)

* fix(monitoring): influxdb-nginx-codes, fixed unbound argument ([ad74d74](https://github.com/popstas/server-scripts/commit/ad74d74))
* fix: chmod +x zipsite ([edb7294](https://github.com/popstas/server-scripts/commit/edb7294))
* docs(monitoring): fixed telegraf config fox influxdb-nginx-codes ([7aa7144](https://github.com/popstas/server-scripts/commit/7aa7144))
* docs: changelog ([ae194bd](https://github.com/popstas/server-scripts/commit/ae194bd))
* feat(backup): zipsite, new script ([7afe2f6](https://github.com/popstas/server-scripts/commit/7afe2f6))



<a name="0.2.17"></a>
## 0.2.17 (2016-05-05)

* feat(monitoring): influxdb-nginx-codes, new script ([50e680a](https://github.com/popstas/server-scripts/commit/50e680a))
* fix(monitoring): influxdb-annotate: make time argument working ([d3d2a61](https://github.com/popstas/server-scripts/commit/d3d2a61))



<a name="0.2.16"></a>
## 0.2.16 (2016-05-01)

* fix(influxdb): influxdb-clientstat, domain decode, duplicates, exitcodes ([556847b](https://github.com/popstas/server-scripts/commit/556847b))
* fix(influxdb): influxdb-clientstat, don't send anomalies ([2869beb](https://github.com/popstas/server-scripts/commit/2869beb))
* fix(influxdb): influxdb-clientstat, metric duplication ([86ca2a3](https://github.com/popstas/server-scripts/commit/86ca2a3))



<a name="0.2.15"></a>
## 0.2.15 (2016-04-30)

* fix(influxdb): influxdb-clientstat, remove test line ([8feac8d](https://github.com/popstas/server-scripts/commit/8feac8d))
* docs: changelog ([3dfa013](https://github.com/popstas/server-scripts/commit/3dfa013))



<a name="0.2.14"></a>
## 0.2.14 (2016-04-30)

* feat(influxdb): influxdb-annotate, new script ([8001859](https://github.com/popstas/server-scripts/commit/8001859))
* feat(influxdb): influxdb-clientstat, new script ([4c23b6c](https://github.com/popstas/server-scripts/commit/4c23b6c))
* fix(config): change drupal-enable-caches default config ([d86e386](https://github.com/popstas/server-scripts/commit/d86e386))
* fix(core): correct default variable in use_config_var ([a2b7cd8](https://github.com/popstas/server-scripts/commit/a2b7cd8))
* fix(core): support of --help for script with $SCRIPT_HELP defined ([b4b5cf3](https://github.com/popstas/server-scripts/commit/b4b5cf3))



<a name="0.2.13"></a>
## 0.2.13 (2016-04-15)

* feat(site): site-rm, new script ([e591cc9](https://github.com/popstas/server-scripts/commit/e591cc9))



<a name="0.2.12"></a>
## 0.2.12 (2016-03-18)

* feat(git): git-hook-pre-push-gitlab, automatic push to gitlab ([64c8f7d](https://github.com/popstas/server-scripts/commit/64c8f7d))



<a name="0.2.11"></a>
## 0.2.11 (2016-03-10)

* fix(git-hook-post-receive): link to gitlab never included to mail ([170f432](https://github.com/popstas/server-scripts/commit/170f432))
* add CHANGELOG.md ([009d824](https://github.com/popstas/server-scripts/commit/009d824))
* git-hook-post-receive, set utf-8 encoding ([54caeb3](https://github.com/popstas/server-scripts/commit/54caeb3))
* regenerate CHANGELOG.md with conventional-changelog ([ef6138f](https://github.com/popstas/server-scripts/commit/ef6138f))



<a name="0.2.8"></a>
## 0.2.8 (2016-03-01)

* git-hook-post-receive, new script ([02a2c65](https://github.com/popstas/server-scripts/commit/02a2c65))



<a name="0.2.7"></a>
## 0.2.7 (2016-02-28)

* average, new script ([0b43c1f](https://github.com/popstas/server-scripts/commit/0b43c1f))
* user-setup, removed second argument, changed homedir access from 550 to 510 ([a1c68cf](https://github.com/popstas/server-scripts/commit/a1c68cf))



<a name="0.2.6"></a>
## 0.2.6 (2016-02-10)

* get_password, changed shebang from sh to bash ([d67d7f2](https://github.com/popstas/server-scripts/commit/d67d7f2))
* minor docs fix ([3efc86c](https://github.com/popstas/server-scripts/commit/3efc86c))



<a name="0.2.5"></a>
## 0.2.5 (2016-02-04)

* chmod +x ([2da820a](https://github.com/popstas/server-scripts/commit/2da820a))
* domains-check - проверка работоспособности сайтов ([f3f4c2c](https://github.com/popstas/server-scripts/commit/f3f4c2c))



<a name="0.2.4"></a>
## 0.2.4 (2016-01-15)

* gitclean fix ([4ec9474](https://github.com/popstas/server-scripts/commit/4ec9474))



<a name="0.2.3"></a>
## 0.2.3 (2016-01-15)

* backups-check, add hostname to mail title ([ee4bf25](https://github.com/popstas/server-scripts/commit/ee4bf25))
* gitclean now can clean partially modified working tree ([c2d4fd3](https://github.com/popstas/server-scripts/commit/c2d4fd3))



<a name="0.2.2"></a>
## 0.2.2 (2016-01-11)

* sites-check, chmod +x ([5185cd0](https://github.com/popstas/server-scripts/commit/5185cd0))
* sites-check, new script ([f41e3e7](https://github.com/popstas/server-scripts/commit/f41e3e7))



<a name="0.2.1"></a>
## 0.2.1 (2016-01-11)

* allow to run get_domain without arguments, help ([5385e59](https://github.com/popstas/server-scripts/commit/5385e59))
* backups-check, chmod +x ([09fc00a](https://github.com/popstas/server-scripts/commit/09fc00a))
* backups-check, new script ([47f9d1a](https://github.com/popstas/server-scripts/commit/47f9d1a))
* chmod +x ([e27ae3f](https://github.com/popstas/server-scripts/commit/e27ae3f))
* dbdump auto create backups directory ([bc80481](https://github.com/popstas/server-scripts/commit/bc80481))
* dns ([b9a2bba](https://github.com/popstas/server-scripts/commit/b9a2bba))
* get_domain moved to script ([cbfebaf](https://github.com/popstas/server-scripts/commit/cbfebaf))
* get_domain, errors catch ([bcb42f7](https://github.com/popstas/server-scripts/commit/bcb42f7))
* gitinit added config color.ui ([cb9da44](https://github.com/popstas/server-scripts/commit/cb9da44))
* installer without delete files ([24fedb4](https://github.com/popstas/server-scripts/commit/24fedb4))
* mysql_backup, correct old backups remove ([7bff8ea](https://github.com/popstas/server-scripts/commit/7bff8ea))
* reload-web, restart-web, check apache2 exists ([3005f6e](https://github.com/popstas/server-scripts/commit/3005f6e))
* sites-load, fix top pages output ([8ed7a58](https://github.com/popstas/server-scripts/commit/8ed7a58))
* ssh-add-keys, support symlinks search ([aac635c](https://github.com/popstas/server-scripts/commit/aac635c))
* ssh-remove-key, fix work ([6044f58](https://github.com/popstas/server-scripts/commit/6044f58))
* webtop, change encoding to utf-8 ([9df938c](https://github.com/popstas/server-scripts/commit/9df938c))



<a name="0.1.1"></a>
## 0.1.1 (2015-09-01)

* First commit, without tests ([b1b08a9](https://github.com/popstas/server-scripts/commit/b1b08a9))
* Initial commit ([a859c92](https://github.com/popstas/server-scripts/commit/a859c92))
* Rewrite install.sh and init script includes ([7a8267c](https://github.com/popstas/server-scripts/commit/7a8267c))
* chmod +x ([37c18db](https://github.com/popstas/server-scripts/commit/37c18db))
* chmod +x ([a4e05f8](https://github.com/popstas/server-scripts/commit/a4e05f8))
* chmod +x scripts ([445ac22](https://github.com/popstas/server-scripts/commit/445ac22))
* commented echo rsync ([979bb17](https://github.com/popstas/server-scripts/commit/979bb17))
* convert to utf-8 ([6c9808e](https://github.com/popstas/server-scripts/commit/6c9808e))
* dbdump, commented unnecessary variable ([4d01d2c](https://github.com/popstas/server-scripts/commit/4d01d2c))
* dbundump, fix ([1db25c1](https://github.com/popstas/server-scripts/commit/1db25c1))
* dbundump, symlink detection, correct uncompressed size info ([acdab80](https://github.com/popstas/server-scripts/commit/acdab80))
* default values inline in scripts ([e1f9196](https://github.com/popstas/server-scripts/commit/e1f9196))
* default values inline in scripts ([1b8c9c6](https://github.com/popstas/server-scripts/commit/1b8c9c6))
* detect-viruses, removed notices from cron ([7edd2e1](https://github.com/popstas/server-scripts/commit/7edd2e1))
* detect-viruses, removed output ([bf51feb](https://github.com/popstas/server-scripts/commit/bf51feb))
* drupal-build-archives ([36a1fb5](https://github.com/popstas/server-scripts/commit/36a1fb5))
* drupal-build-archives, profile build (commented) ([f12c756](https://github.com/popstas/server-scripts/commit/f12c756))
* drupal-cache-warm, fix help, dry-run for -d argument, sllep after curl ([6280a8b](https://github.com/popstas/server-scripts/commit/6280a8b))
* drupal-cache-warm, fix warm mainpages ([8a51b29](https://github.com/popstas/server-scripts/commit/8a51b29))
* drupal-cache-warm, fixed args parse ([f39da0b](https://github.com/popstas/server-scripts/commit/f39da0b))
* drupal-cache-warm, uncommented warm_page ([d02b927](https://github.com/popstas/server-scripts/commit/d02b927))
* drupal-cache-warm, url rewrite ([79a34c9](https://github.com/popstas/server-scripts/commit/79a34c9))
* drupal-get-drupals, fix find ([95ecb19](https://github.com/popstas/server-scripts/commit/95ecb19))
* drupal-get-drupals, replaced DRUPAL_EXCLUDED_FILE to SITE_EXCLUDED_FILE ([770fd30](https://github.com/popstas/server-scripts/commit/770fd30))
* fix installer ([3aa20c1](https://github.com/popstas/server-scripts/commit/3aa20c1))
* fix installer ([34ff370](https://github.com/popstas/server-scripts/commit/34ff370))
* fix installer and include user config, ssh-add-keys auto create directory ([afa2b15](https://github.com/popstas/server-scripts/commit/afa2b15))
* fix installer for run from any $PWD ([fd61b9a](https://github.com/popstas/server-scripts/commit/fd61b9a))
* fixed for set -e ([a18f903](https://github.com/popstas/server-scripts/commit/a18f903))
* fixed use_config_var ([b08c2f0](https://github.com/popstas/server-scripts/commit/b08c2f0))
* get-sites ([c647c9a](https://github.com/popstas/server-scripts/commit/c647c9a))
* get-sites help ([f1397b5](https://github.com/popstas/server-scripts/commit/f1397b5))
* get-sites, commented maintenance_mode ([bb7cc96](https://github.com/popstas/server-scripts/commit/bb7cc96))
* installer, pip install sh ([3e9ba5f](https://github.com/popstas/server-scripts/commit/3e9ba5f))
* minor fixes ([d4a4bed](https://github.com/popstas/server-scripts/commit/d4a4bed))
* mysql_backup tested ([50bd632](https://github.com/popstas/server-scripts/commit/50bd632))
* mysql_backup, removed notice from cron ([9bbd8a2](https://github.com/popstas/server-scripts/commit/9bbd8a2))
* mysql_backup, removed unused DB_BACKUPS_SEND_HOUR ([fa6f46d](https://github.com/popstas/server-scripts/commit/fa6f46d))
* mysql_backup, splitted to 3 tasks ([77be8d8](https://github.com/popstas/server-scripts/commit/77be8d8))
* safe restart && verbose reload, штшеюв replaced to service ([2cd8db0](https://github.com/popstas/server-scripts/commit/2cd8db0))
* tests, template ([bb7da6a](https://github.com/popstas/server-scripts/commit/bb7da6a))
* use_config_var, default value ([b502856](https://github.com/popstas/server-scripts/commit/b502856))
* webtop ([6f93d25](https://github.com/popstas/server-scripts/commit/6f93d25))



