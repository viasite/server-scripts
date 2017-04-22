__dbs_list() {
    mysql -Brs -e "SHOW DATABASES"
}

_ss_dbdump() {
    _arguments -C \
    "1:first_arg:->db"

    case "$state" in
        db)
            dbs=$(__dbs_list)
            compadd "$@" $(echo $dbs)
            ;;
    esac
}

_ss_file_db() {
    _arguments -C \
    "1:first_arg:_files" \
    "2:first_arg:->db"

    case "$state" in
        db)
            dbs=$(__dbs_list)
            compadd "$@" $(echo $dbs)
            ;;
    esac
}

_ss_mysql_backup() {
    compadd "$@" backup send clean
}

# goto-site

compdef _ss_dbdump dbdump
compdef _ss_file_db dbundump
compdef _ss_mysql_backup mysql_backup
compdef _users user-setup
compdef _ss_file_db zipsite
