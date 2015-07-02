#!/usr/bin/env bats

setup() {
	. lib/init
	use_config_var "DB_SIZE_NAMES_FILE"
	use_config_var "DB_SIZE_SIZES_FILE"
	use_config_var "DB_SIZE_CACHE_MINS"
}

@test "db-size" {
	run db-size
	echo >&2 "$output"
	[ $status -eq 1 ]
}
