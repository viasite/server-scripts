#!/bin/bash

PROGRAM_NAME="server-scripts"

DEFAULT_PREFIX="/usr/share"
BIN_PATH="/usr/local/bin"
SOURCE_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
CONFIG_PATH="/etc/$PROGRAM_NAME.conf"
SCRIPT_ASSUME_YES=""

PREFIX="$DEFAULT_PREFIX"
INSTALL_DIR="$PREFIX/$PROGRAM_NAME"

usage() {
	echo "
Usage: $0

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

#PREFIX="$1"
#if [ ! -d "$PREFIX" ]; then
#	PREFIX="$DEFAULT_PREFIX"
#fi

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
fi

python -c "import sh" 2>/dev/null || {
	pip install sh
}

rsync -a "$SOURCE_DIR/" "$INSTALL_DIR" || {
	echo "Sync files to $INSTALL_DIR failed."
	exit 1
}

chmod +x "$INSTALL_DIR"/bin/*
chmod +x "$INSTALL_DIR"/lib/*

if [ -w "$BIN_PATH" ]; then
	# TODO: ln -s -f too danger, it rewrites files!
	find "$INSTALL_DIR"/bin -type f -exec ln -s {} "$BIN_PATH" \; 2>/dev/null
fi

if [ ! -e "$CONFIG_PATH" ]; then
	cp "$SOURCE_DIR/$PROGRAM_NAME.conf.example" "$CONFIG_PATH"
else
	echo "$CONFIG_PATH exists, don't rewrite it."
fi

echo "Installed $PROGRAM_NAME to $INSTALL_DIR."
