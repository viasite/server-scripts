#!/bin/bash

PROGRAM_NAME="server-scripts"

DEFAULT_PREFIX="/usr/share"
BIN_PATH="/usr/local/bin"
DRUPAL_SCRIPTS_ROOT="$PWD"
USER_CONFIG_PATH="$HOME/.$PROGRAM_NAME.conf"
SCRIPT_ASSUME_YES=""

function usage(){
	echo "
Usage: $0 <prefix>
  e.g. $0 $DEFAULT_PREFIX

Options:
    -y Assume yes for all questions"

}

if [ "$1" = "--help" ]; then
	usage
	exit 1
fi

while getopts ":y" opt; do
	case "$opt" in
		y) SCRIPT_ASSUME_YES="1"
		shift
		;;
	esac
done

PREFIX="$1"
if [ ! -d "$PREFIX" ]; then
	PREFIX="$DEFAULT_PREFIX"
fi
INSTALL_DIR="$PREFIX/$PROGRAM_NAME"

if [ ! -w "$PREFIX" ]; then
	echo "You cannot write to $INSTALL_DIR, aborting."
	exit 1
fi

if [ -z "$SCRIPT_ASSUME_YES" ]; then
	read -p "Install $PROGRAM_NAME to $INSTALL_DIR (y/n)? " -n 1 -r
	echo ""
	if [[ ! $REPLY =~ ^[Yy]$ ]]; then
		echo "Aborting installation."
		exit 1
	fi
fi


if [ -d "$INSTALL_DIR" ]; then
	echo "Previous installation detected."
	if [ -z "$SCRIPT_ASSUME_YES" ]; then
		read -p "Replace $INSTALL_DIR (y/n)? " -n 1 -r
		echo ""
		if [[ ! $REPLY =~ ^[Yy]$ ]]; then
			echo "Aborting installation."
			exit 1
		fi
	fi

	rm -rf "$INSTALL_DIR"
fi

cp -R "$DRUPAL_SCRIPTS_ROOT" "$INSTALL_DIR"

chmod +x "$INSTALL_DIR"/bin/*
chmod +x "$INSTALL_DIR"/lib/*

if [ -w "$BIN_PATH" ]; then
	# TODO: ln -s -f too danger, rewrites files!
	find "$INSTALL_DIR"/bin -type f -exec ln -s {} "$BIN_PATH" \;
fi

if [ ! -e "$USER_CONFIG_PATH" ]; then
	cp "$PROGRAM_NAME.conf.example" "$USER_CONFIG_PATH"
else
	echo "$USER_CONFIG_PATH exists, don't rewrite it."
fi

echo "Installed $PROGRAM_NAME to $INSTALL_DIR."
