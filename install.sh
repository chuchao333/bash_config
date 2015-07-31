#!/bin/bash

INSTALL_DIR=${INSTALL_DIR:-~/bash_config}

if [ -d "$INSTALL_DIR" ]; then
  echo "Error: the install dir already exists."
  exit 1
fi

if [ -f "$INSTALL_DIR" ]; then
  echo "Error: a file with same name as install dir already exists."
  exit 1
fi

mkdir -p $INSTALL_DIR

# Absolute path to this script
SCRIPT=$(readlink -f $0)
# Absolute path this script is in
SCRIPT_DIR=`dirname $SCRIPT`

cp $SCRIPT_DIR/* "$INSTALL_DIR/"

# hard coded here for now
FILES_TO_LINK="tmux.conf"
FILES_TO_SOURCE="functions.sh ps1_prompt.sh alias.sh"

for link in $FILES_TO_LINK
do
  echo "creating symbolic link for $link"
  ln -s "$INSTALL_DIR/$link" "${HOME}/.$link"
done

# append to .bashrc
echo -e "\n# bash settings" >> ~/.bashrc
for file in $FILES_TO_SOURCE
do
  echo -e "Add $INSTALL_DIR/$file to source in bashrc\n"
  echo -e "source $INSTALL_DIR/$file" >> ~/.bashrc
done


