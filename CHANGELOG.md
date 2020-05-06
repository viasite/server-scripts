# [](https://github.com/viasite/server-scripts/compare/v0.6.6...v) (2020-05-06)



## [0.6.6](https://github.com/viasite/server-scripts/compare/v0.6.5...v0.6.6) (2020-04-29)


### Bug Fixes

* bitrix-sql ([2c0bdbc](https://github.com/viasite/server-scripts/commit/2c0bdbc))


### Features

* download-images-list ([e85bbf7](https://github.com/viasite/server-scripts/commit/e85bbf7))



## [0.6.5](https://github.com/viasite/server-scripts/compare/v0.6.4...v0.6.5) (2019-03-03)


### Features

* **kill-port:** new script ([d77c34a](https://github.com/viasite/server-scripts/commit/d77c34a))



## [0.6.4](https://github.com/viasite/server-scripts/compare/v0.6.3...v0.6.4) (2019-01-21)


### Bug Fixes

* **domain-on-server:** sometimes dig +short returns 2 lines ([2d3625b](https://github.com/viasite/server-scripts/commit/2d3625b))



## [0.6.3](https://github.com/viasite/server-scripts/compare/v0.6.2...v0.6.3) (2019-01-10)


### Features

* **telegraf-dir-sizes:** new script ([d8e7018](https://github.com/viasite/server-scripts/commit/d8e7018))



## [0.6.2](https://github.com/viasite/server-scripts/compare/v0.6.1...v0.6.2) (2018-12-04)


### Bug Fixes

* **git-hook-post-receive:** work with new mail client, lot of changes in ([638cdce](https://github.com/viasite/server-scripts/commit/638cdce))



## [0.6.1](https://github.com/viasite/server-scripts/compare/v0.6.0...v0.6.1) (2018-09-07)


### Bug Fixes

* **bitrix-sql-option:** direct access to bitrix db via PDO ([8161a70](https://github.com/viasite/server-scripts/commit/8161a70))


### Features

* **drupal-cache-hit:** new script ([e4234a4](https://github.com/viasite/server-scripts/commit/e4234a4))



# [0.6.0](https://github.com/viasite/server-scripts/compare/v0.5.9...v0.6.0) (2018-09-04)


### Features

* **get-email:** bitrix support ([e32a2fd](https://github.com/viasite/server-scripts/commit/e32a2fd))



## [0.5.9](https://github.com/viasite/server-scripts/compare/v0.5.8...v0.5.9) (2018-09-04)


### Features

* **bitrix-sql-option:** new script ([828347e](https://github.com/viasite/server-scripts/commit/828347e))



## [0.5.8](https://github.com/viasite/server-scripts/compare/v0.5.7...v0.5.8) (2018-08-31)


### Bug Fixes

* **lvm-extend:** try to xfs_growfs for xfs filesystem extend ([559c374](https://github.com/viasite/server-scripts/commit/559c374))


### Features

* **block-ips:** new script ([3998fd2](https://github.com/viasite/server-scripts/commit/3998fd2))



## [0.5.7](https://github.com/viasite/server-scripts/compare/v0.5.6...v0.5.7) (2018-08-07)


### Bug Fixes

* **lvm-extend:** default lv: home -> data ([a840795](https://github.com/viasite/server-scripts/commit/a840795))



## [0.5.6](https://github.com/viasite/server-scripts/compare/v0.5.5...v0.5.6) (2018-07-27)


### Bug Fixes

* **site-rm:** don't try to delete /user/root/www ([c048a48](https://github.com/viasite/server-scripts/commit/c048a48))
* lvm-extent xfs partitions ([1bec184](https://github.com/viasite/server-scripts/commit/1bec184))



## [0.5.5](https://github.com/viasite/server-scripts/compare/v0.5.4...v0.5.5) (2018-06-09)


### Features

* **exim-errors:** new script ([82fa3d0](https://github.com/viasite/server-scripts/commit/82fa3d0))
* **manvim:** new script ([e9047d7](https://github.com/viasite/server-scripts/commit/e9047d7))



## [0.5.4](https://github.com/viasite/server-scripts/compare/v0.5.3...v0.5.4) (2018-04-20)


### Features

* **apt-list-upgraded:** new script ([28696f5](https://github.com/viasite/server-scripts/commit/28696f5))
* netstat-top, new script ([17d1e21](https://github.com/viasite/server-scripts/commit/17d1e21))



## [0.5.3](https://github.com/viasite/server-scripts/compare/v0.5.2...v0.5.3) (2018-01-26)


### Bug Fixes

* **reload-web:** reload all php-fpm versions (5.6-7.2) ([6cc9f8a](https://github.com/viasite/server-scripts/commit/6cc9f8a))
* **user-setup:** chown -R $HOME ([afbbf05](https://github.com/viasite/server-scripts/commit/afbbf05))



## [0.5.2](https://github.com/viasite/server-scripts/compare/v0.5.1...v0.5.2) (2017-12-26)


### Bug Fixes

* **dbdump:** optimize mysql backups ([fe6538f](https://github.com/viasite/server-scripts/commit/fe6538f))



## [0.5.1](https://github.com/viasite/server-scripts/compare/v0.5.0...v0.5.1) (2017-12-25)


### Bug Fixes

* **site-rm:** delete crontab file when delete user ([ca6979b](https://github.com/viasite/server-scripts/commit/ca6979b))



# [0.5.0](https://github.com/viasite/server-scripts/compare/v0.4.6...v0.5.0) (2017-11-27)


### Bug Fixes

* **drupal-build-archives:** fix break if directory not exists ([8f1ff12](https://github.com/viasite/server-scripts/commit/8f1ff12))
* **site-rm:** exact php user match when remove php-fpm configs ([12dd56a](https://github.com/viasite/server-scripts/commit/12dd56a))


### Features

* remove site-info and get-sites (to pip viasite/site-discovery) ([24cbb43](https://github.com/viasite/server-scripts/commit/24cbb43))



## [0.4.6](https://github.com/viasite/server-scripts/compare/v0.4.5...v0.4.6) (2017-10-27)


### Bug Fixes

* **site-rm:** delete nginx and apache configs separated, delete only ([3ebeda6](https://github.com/viasite/server-scripts/commit/3ebeda6))



## [0.4.5](https://github.com/viasite/server-scripts/compare/v0.4.4...v0.4.5) (2017-10-24)


### Features

* **ssh-know-host:** script for forgot old domain's server ([db9cb16](https://github.com/viasite/server-scripts/commit/db9cb16))



## [0.4.4](https://github.com/viasite/server-scripts/compare/v0.4.3...v0.4.4) (2017-10-19)


### Bug Fixes

* **lvm-extend:** help exit ([9aa8789](https://github.com/viasite/server-scripts/commit/9aa8789))
* **lvm-extend:** more verbose output ([e60022b](https://github.com/viasite/server-scripts/commit/e60022b))
* **lvm-extend:** replace end of partition from mb to 100% ([bd4b1fa](https://github.com/viasite/server-scripts/commit/bd4b1fa))



## [0.4.3](https://github.com/viasite/server-scripts/compare/v0.4.2...v0.4.3) (2017-10-13)


### Features

* **lvm-extend:** new script for extend partitions in VMs ([fec3d18](https://github.com/viasite/server-scripts/commit/fec3d18))



## [0.4.2](https://github.com/viasite/server-scripts/compare/v0.4.1...v0.4.2) (2017-10-11)


### Bug Fixes

* **domain-on-server:** domain idn for passed argument ([60c8371](https://github.com/viasite/server-scripts/commit/60c8371))
* **domain-on-server:** idn (punycode) for unicode domains ([afe446d](https://github.com/viasite/server-scripts/commit/afe446d))
* **get_domain:** fallback method if not found in /etc/nginx/sites-available ([802f466](https://github.com/viasite/server-scripts/commit/802f466))
* **get-engine:** fix zend and presta detection ([3a3ed73](https://github.com/viasite/server-scripts/commit/3a3ed73))
* **get-sites:** disable lock_check ([4d02692](https://github.com/viasite/server-scripts/commit/4d02692))
* **get-sites:** extracted command 'domain-on-server' ([0e3ae95](https://github.com/viasite/server-scripts/commit/0e3ae95))
* **get-sites, site-info:** all fields moved to site-info ([291e11f](https://github.com/viasite/server-scripts/commit/291e11f))


### Features

* **get-sites:** ability to collect site-info ([ae95710](https://github.com/viasite/server-scripts/commit/ae95710))
* **get-sites:** domain_on_server ([ebf6d96](https://github.com/viasite/server-scripts/commit/ebf6d96))
* **get-sites:** limit option ([8a0a582](https://github.com/viasite/server-scripts/commit/8a0a582))
* **user-setup:** customize homedir group and mode ([f0efe09](https://github.com/viasite/server-scripts/commit/f0efe09))



## [0.4.1](https://github.com/viasite/server-scripts/compare/v0.4.0...v0.4.1) (2017-09-26)


### Bug Fixes

* **get-sites:** get-email extracted from get-sites ([8f56e92](https://github.com/viasite/server-scripts/commit/8f56e92))
* **get-sites:** script rewrited from bash to python ([2213b8d](https://github.com/viasite/server-scripts/commit/2213b8d))
* **site-rm:** fix warning 'getcwd() failed: No such file or directory' ([bd2b983](https://github.com/viasite/server-scripts/commit/bd2b983))



# [0.4.0](https://github.com/viasite/server-scripts/compare/v0.3.9...v0.4.0) (2017-09-25)


### Bug Fixes

* **site-info:** chmod +x ([7aaa8f1](https://github.com/viasite/server-scripts/commit/7aaa8f1))


### Features

* **site-rm:** delete user, delete php-fpm configs ([54a1c40](https://github.com/viasite/server-scripts/commit/54a1c40))



## [0.3.9](https://github.com/viasite/server-scripts/compare/v0.3.8...v0.3.9) (2017-09-24)


### Bug Fixes

* **get-sites:** exclude commented sites, check for directory exists ([c9be41d](https://github.com/viasite/server-scripts/commit/c9be41d))


### Features

* **get-sites:** add user column ([b4b576f](https://github.com/viasite/server-scripts/commit/b4b576f))
* **site-info:** new script formelly known as drupal_table.py ([d6d6364](https://github.com/viasite/server-scripts/commit/d6d6364))



## [0.3.8](https://github.com/viasite/server-scripts/compare/v0.3.7...v0.3.8) (2017-09-24)


### Bug Fixes

* **get-sites:** add /var/www/example.com to excluded sites ([068a191](https://github.com/viasite/server-scripts/commit/068a191))
* **get-sites:** correct render 'root "/path/to/dir";' (quotes) ([691954a](https://github.com/viasite/server-scripts/commit/691954a))
* **get-sites:** exclude default nginx directories ([5bc086c](https://github.com/viasite/server-scripts/commit/5bc086c))


### Features

* **get-engine:** detect prestashop, zend ([a2cc059](https://github.com/viasite/server-scripts/commit/a2cc059))



## [0.3.7](https://github.com/viasite/server-scripts/compare/v0.3.6...v0.3.7) (2017-09-23)


### Bug Fixes

* **drupal-build-archives:** extract project types to DRUPAL_PROJECTS_TYPES ([b5fe713](https://github.com/viasite/server-scripts/commit/b5fe713))
* **drupal-build-archives:** fix previous commit ([538168d](https://github.com/viasite/server-scripts/commit/538168d))


### Features

* **get-engine:** extract get-engine from get-sites ([b2d3677](https://github.com/viasite/server-scripts/commit/b2d3677))
* **get-sites:** add hostname column ([63a45a2](https://github.com/viasite/server-scripts/commit/63a45a2))



## [0.3.6](https://github.com/viasite/server-scripts/compare/v0.3.5...v0.3.6) (2017-09-07)


### Bug Fixes

* **backups-check:** stop find after first result ([5dfcb26](https://github.com/viasite/server-scripts/commit/5dfcb26))
* **drupal-build-archives:** allow subdirectory absent ([9367750](https://github.com/viasite/server-scripts/commit/9367750))



## [0.3.5](https://github.com/viasite/server-scripts/compare/v0.3.4...v0.3.5) (2017-07-13)


### Bug Fixes

* **detect-viruses:** allow empty signatures list, more verbose output ([abff437](https://github.com/viasite/server-scripts/commit/abff437))



## [0.3.4](https://github.com/viasite/server-scripts/compare/v0.3.3...v0.3.4) (2017-07-11)


### Features

* **detect-viruses:** add signatures excluded ([be7a352](https://github.com/viasite/server-scripts/commit/be7a352))



## [0.3.3](https://github.com/viasite/server-scripts/compare/v0.3.2...v0.3.3) (2017-05-04)


### Bug Fixes

* **dns:** work on ubuntu 16.04 (fix) ([aa46809](https://github.com/viasite/server-scripts/commit/aa46809))
* **reload-web:** fix false exit code on systems without php-fpm7.0 ([8b91311](https://github.com/viasite/server-scripts/commit/8b91311)), closes [#4](https://github.com/viasite/server-scripts/issues/4)



## [0.3.2](https://github.com/viasite/server-scripts/compare/v0.3.1...v0.3.2) (2017-04-27)


### Bug Fixes

* **dns:** work on ubuntu 16.04 ([eefa5f3](https://github.com/viasite/server-scripts/commit/eefa5f3))
* **reload-web:** add messages ([c103c6c](https://github.com/viasite/server-scripts/commit/c103c6c))



## [0.3.1](https://github.com/viasite/server-scripts/compare/v0.3.0...v0.3.1) (2017-04-22)


### Bug Fixes

* deprecate grepcode in favour of using ag (the_silver_searcher) ([e3a8095](https://github.com/viasite/server-scripts/commit/e3a8095))


### Features

* completions for dbundump, mysql_backup, zipsite ([aa1e698](https://github.com/viasite/server-scripts/commit/aa1e698))



# [0.3.0](https://github.com/viasite/server-scripts/compare/v0.2.27...v0.3.0) (2017-04-22)


### Bug Fixes

* allow to exec goto-site without arguments from site root ([cbb09bb](https://github.com/viasite/server-scripts/commit/cbb09bb))


### Features

* zsh completions plugin: dbdump, user-setup ([1ab85d3](https://github.com/viasite/server-scripts/commit/1ab85d3))
* **reload-web:** add reload service php7.0-fpm ([fde3b41](https://github.com/viasite/server-scripts/commit/fde3b41))



## [0.2.27](https://github.com/viasite/server-scripts/compare/v0.2.26...v0.2.27) (2017-04-06)


### Features

* **dbundump:** NO_BACKUP variable, minimize site downtime while dnundump ([55c9f0a](https://github.com/viasite/server-scripts/commit/55c9f0a)), closes [#2](https://github.com/viasite/server-scripts/issues/2) [#3](https://github.com/viasite/server-scripts/issues/3)



## [0.2.26](https://github.com/viasite/server-scripts/compare/v0.2.25...v0.2.26) (2017-03-22)


### Bug Fixes

* goto-site command ([06e0a97](https://github.com/viasite/server-scripts/commit/06e0a97))


### Features

* goto-site, site-list, new scripts ([b842c8f](https://github.com/viasite/server-scripts/commit/b842c8f))



## [0.2.25](https://github.com/viasite/server-scripts/compare/v0.2.24...v0.2.25) (2017-03-03)


### Bug Fixes

* dbdump, detect-viruses, backups-checks: handle undefined DB_BACKUPS_*, MAILTO ([bb984d6](https://github.com/viasite/server-scripts/commit/bb984d6))
* **find:** add sorting find results and current count ([4ed39fe](https://github.com/viasite/server-scripts/commit/4ed39fe))
* **find:** fix error with empty arguments ([66781fe](https://github.com/viasite/server-scripts/commit/66781fe))


### Features

* **scandir:** removed directories names from output ([e8f5a96](https://github.com/viasite/server-scripts/commit/e8f5a96))



## [0.2.24](https://github.com/viasite/server-scripts/compare/v0.2.23...v0.2.24) (2017-02-23)


### Features

* **find:** find-foreach, new script ([dbfb156](https://github.com/viasite/server-scripts/commit/dbfb156))



## [0.2.23](https://github.com/viasite/server-scripts/compare/v0.2.22...v0.2.23) (2017-02-21)


### Bug Fixes

* **git-hook-post-receive:** выработка не ставилась в проектах без gitlab ([05dfcc6](https://github.com/viasite/server-scripts/commit/05dfcc6))


### Features

* **git:** git-extract-subproject, new script ([e405af2](https://github.com/viasite/server-scripts/commit/e405af2))



## [0.2.22](https://github.com/viasite/server-scripts/compare/v0.2.21...v0.2.22) (2017-01-20)


### Bug Fixes

* **mysql_backup:** clean all databases ([25ae65d](https://github.com/viasite/server-scripts/commit/25ae65d))


### Features

* **git-hook-post-receive:** выработка в Планфиксе из коммита ([4aced4e](https://github.com/viasite/server-scripts/commit/4aced4e))



## [0.2.21](https://github.com/viasite/server-scripts/compare/v0.2.20...v0.2.21) (2016-11-22)


### Bug Fixes

* **detect-virus:** update signatures ([e4826c8](https://github.com/viasite/server-scripts/commit/e4826c8))
* **zipsite:** fixed corrupt _database.sql when autodetect drupal database ([7c12edf](https://github.com/viasite/server-scripts/commit/7c12edf))



## [0.2.20](https://github.com/viasite/server-scripts/compare/v0.2.19...v0.2.20) (2016-09-15)


### Bug Fixes

* **site-rename:** fixed error with sed and replacing symlinks to files in configs ([5bd808d](https://github.com/viasite/server-scripts/commit/5bd808d))



## [0.2.19](https://github.com/viasite/server-scripts/compare/v0.2.18...v0.2.19) (2016-09-08)


### Bug Fixes

* **grepcode:** add less ext ([9f97f2c](https://github.com/viasite/server-scripts/commit/9f97f2c))
* **site-rm:** add init lib ([34d41e1](https://github.com/viasite/server-scripts/commit/34d41e1))
* **site-rm:** check drupal before detect database ([d7ee4ea](https://github.com/viasite/server-scripts/commit/d7ee4ea))
* **watch-modified:** reverse sort order ([ba68e51](https://github.com/viasite/server-scripts/commit/ba68e51))
* chmod +x zipsite ([edb7294](https://github.com/viasite/server-scripts/commit/edb7294))


### Features

* **site:** site-rename, new script ([d28cfe7](https://github.com/viasite/server-scripts/commit/d28cfe7))



## [0.2.18](https://github.com/viasite/server-scripts/compare/v0.2.17...v0.2.18) (2016-05-12)


### Bug Fixes

* **monitoring:** influxdb-nginx-codes, fixed unbound argument ([ad74d74](https://github.com/viasite/server-scripts/commit/ad74d74))


### Features

* **backup:** zipsite, new script ([7afe2f6](https://github.com/viasite/server-scripts/commit/7afe2f6))



## [0.2.17](https://github.com/viasite/server-scripts/compare/v0.2.16...v0.2.17) (2016-05-05)


### Bug Fixes

* **monitoring:** influxdb-annotate: make time argument working ([d3d2a61](https://github.com/viasite/server-scripts/commit/d3d2a61))


### Features

* **monitoring:** influxdb-nginx-codes, new script ([50e680a](https://github.com/viasite/server-scripts/commit/50e680a))



## [0.2.16](https://github.com/viasite/server-scripts/compare/v0.2.15...v0.2.16) (2016-05-01)


### Bug Fixes

* **influxdb:** influxdb-clientstat, domain decode, duplicates, exitcodes ([556847b](https://github.com/viasite/server-scripts/commit/556847b))
* **influxdb:** influxdb-clientstat, don't send anomalies ([2869beb](https://github.com/viasite/server-scripts/commit/2869beb))
* **influxdb:** influxdb-clientstat, metric duplication ([86ca2a3](https://github.com/viasite/server-scripts/commit/86ca2a3))



## [0.2.15](https://github.com/viasite/server-scripts/compare/v0.2.14...v0.2.15) (2016-04-30)


### Bug Fixes

* **influxdb:** influxdb-clientstat, remove test line ([8feac8d](https://github.com/viasite/server-scripts/commit/8feac8d))



## [0.2.14](https://github.com/viasite/server-scripts/compare/v0.2.13...v0.2.14) (2016-04-30)


### Bug Fixes

* **config:** change drupal-enable-caches default config ([d86e386](https://github.com/viasite/server-scripts/commit/d86e386))
* **core:** correct default variable in use_config_var ([a2b7cd8](https://github.com/viasite/server-scripts/commit/a2b7cd8))
* **core:** support of --help for script with $SCRIPT_HELP defined ([b4b5cf3](https://github.com/viasite/server-scripts/commit/b4b5cf3))


### Features

* **influxdb:** influxdb-annotate, new script ([8001859](https://github.com/viasite/server-scripts/commit/8001859))
* **influxdb:** influxdb-clientstat, new script ([4c23b6c](https://github.com/viasite/server-scripts/commit/4c23b6c))



## [0.2.13](https://github.com/viasite/server-scripts/compare/v0.2.12...v0.2.13) (2016-04-15)


### Features

* **site:** site-rm, new script ([e591cc9](https://github.com/viasite/server-scripts/commit/e591cc9))



## [0.2.12](https://github.com/viasite/server-scripts/compare/v0.2.9...v0.2.12) (2016-03-18)


### Features

* **git:** git-hook-pre-push-gitlab, automatic push to gitlab ([64c8f7d](https://github.com/viasite/server-scripts/commit/64c8f7d))



## [0.2.9](https://github.com/viasite/server-scripts/compare/v0.2.11...v0.2.9) (2016-03-10)


### Bug Fixes

* **git-hook-post-receive:** link to gitlab never included to mail ([170f432](https://github.com/viasite/server-scripts/commit/170f432))



## [0.2.8](https://github.com/viasite/server-scripts/compare/v0.2.7...v0.2.8) (2016-03-01)



## [0.2.7](https://github.com/viasite/server-scripts/compare/v0.2.6...v0.2.7) (2016-02-28)



## [0.2.6](https://github.com/viasite/server-scripts/compare/v0.2.5...v0.2.6) (2016-02-10)



## [0.2.5](https://github.com/viasite/server-scripts/compare/v0.2.4...v0.2.5) (2016-02-04)



## [0.2.4](https://github.com/viasite/server-scripts/compare/v0.2.3...v0.2.4) (2016-01-15)



## [0.2.3](https://github.com/viasite/server-scripts/compare/v0.2.2...v0.2.3) (2016-01-15)



## [0.2.2](https://github.com/viasite/server-scripts/compare/v0.2.1...v0.2.2) (2016-01-11)



## [0.2.1](https://github.com/viasite/server-scripts/compare/v0.1.1...v0.2.1) (2016-01-11)



## 0.1.1 (2015-09-01)



