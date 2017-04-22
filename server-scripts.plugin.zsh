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

# add-users
# dbundump
# goto-site

compdef _ss_dbdump dbdump
compdef _users user-setup
