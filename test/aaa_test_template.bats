#!/usr/bin/env bats

setup() {
	. lib/init
	#use_config_var "VAR_NAME"
}

@test "---" {
	run echo template
	#echo >&2 "$output"
	[ "$BATS_TEST" -eq 1 ]
	[ $status -eq 0 ]
	#[ $(expr "${lines[0]}" : "server-scripts") -ne 0 ]
}
