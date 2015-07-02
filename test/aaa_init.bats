#!/usr/bin/env bats

setup() {
	. lib/init
}


@test "check init" {
	run bash lib/init --help
	echo >&2 "$output"
	[ "$BATS_TEST" -eq 1 ]
	[ $status -eq 1 ]
	[ $(expr "${lines[0]}" : "server-scripts") -ne 0 ]
}

@test "check test variables" {
	var_old="$DB_BACKUPS_ROOT"
	use_config_var "DB_BACKUPS_ROOT"

	[ -n "$BATS_TEST_RESULTS_DIR" ]
	[ "$DB_BACKUPS_ROOT" = "${BATS_TEST_RESULTS_DIR}${var_old}" ]
}
