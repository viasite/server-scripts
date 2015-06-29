#!/usr/bin/env bats

setup() {
	. lib/init
	use_config_var "DB_BACKUPS_ROOT"
	mkdir -p "$DB_BACKUPS_ROOT"
}

@test "dbdump not exists db" {
	run dbdump bats_foo
	[ $status -eq 1 ]
	[ $(expr "${lines[0]}" : "bats_foo not exists") -ne 0 ]
}

@test "dbdump mysql db" {
	run dbdump mysql
	[ $(echo "$output" | wc -l) = 1 ]
	[ -f "$output" ]
	#[ $(expr "${lines[0]}" : "server-scripts") -ne 0 ]
}
