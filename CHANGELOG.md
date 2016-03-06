
n.n.n / 2016-03-06
==================

  * git-hook-post-receive, set utf-8 encoding

v0.2.8 / 2016-03-02
===================

  * git-hook-post-receive, new script

v0.2.7 / 2016-02-29
===================

  * average, new script
  * user-setup, removed second argument, changed homedir access from 550 to 510

v0.2.6 / 2016-02-10
===================

  * get_password, changed shebang from sh to bash
  * minor docs fix

v0.2.5 / 2016-02-04
===================

  * chmod +x
  * domains-check - проверка работоспособности сайтов

v0.2.4 / 2016-01-15
===================

  * gitclean fix

v0.2.3 / 2016-01-15
===================

  * gitclean now can clean partially modified working tree
  * backups-check, add hostname to mail title

v0.2.2 / 2016-01-11
===================

  * sites-check, chmod +x
  * sites-check, new script

v0.2.1 / 2016-01-11
===================

  * backups-check, chmod +x
  * backups-check, new script
  * webtop, change encoding to utf-8

v0.2 / 2015-11-03
=================

  * mysql_backup, correct old backups remove
  * sites-load, fix top pages output
  * dns
  * ssh-remove-key, fix work
  * ssh-add-keys, support symlinks search
  * reload-web, restart-web, check apache2 exists
  * get_domain, errors catch
  * allow to run get_domain without arguments, help
  * get_domain moved to script
  * chmod +x
  * Merge branch 'master' of https://github.com/popstas/server-scripts
  * installer without delete files
  * gitinit added config color.ui
  * dbdump auto create backups directory

v0.1.1 / 2015-09-01
===================

  * get-sites, commented maintenance_mode
  * drupal-build-archives, profile build (commented)
  * Merge remote-tracking branch 'origin/master'
  * fix installer for run from any $PWD
  * fix installer
  * fix installer
  * Merge remote-tracking branch 'origin/master'
  * fix installer and include user config, ssh-add-keys auto create directory
  * default values inline in scripts
  * fixed for set -e
  * drupal-build-archives

v0.1 / 2015-08-18
=================

  * default values inline in scripts
  * use_config_var, default value
  * get-sites help
  * convert to utf-8
  * chmod +x
  * get-sites
  * drupal-get-drupals, replaced DRUPAL_EXCLUDED_FILE to SITE_EXCLUDED_FILE
  * detect-viruses, removed output
  * commented echo rsync
  * chmod +x
  * drupal-get-drupals, fix find
  * installer, pip install sh
  * webtop
  * safe restart && verbose reload, штшеюв replaced to service
  * mysql_backup, removed unused DB_BACKUPS_SEND_HOUR
  * drupal-cache-warm, fixed args parse
  * dbundump, symlink detection, correct uncompressed size info
  * mysql_backup, removed notice from cron
  * detect-viruses, removed notices from cron
  * dbdump, commented unnecessary variable
  * dbundump, fix
  * drupal-cache-warm, fix warm mainpages
  * drupal-cache-warm, fix help, dry-run for -d argument, sllep after curl
  * drupal-cache-warm, uncommented warm_page
  * drupal-cache-warm, url rewrite
  * mysql_backup tested
  * minor fixes
  * tests, template
  * mysql_backup, splitted to 3 tasks
  * fixed use_config_var
  * Rewrite install.sh and init script includes
  * chmod +x scripts
  * First commit, without tests
  * Initial commit
