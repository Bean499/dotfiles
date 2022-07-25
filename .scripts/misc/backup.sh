#!/bin/bash

if [[ -d "/run/media/bean/BEAN VAULT/" ]]; then
	echo "BEAN VAULT is mounted, proceeding to backup."
else
	echo "BEAN VAULT is not mounted, mounting."
	udisksctl mount -b /dev/sdd1
fi

echo
rsync -avh  ~/vimwiki/ /run/media/bean/BEAN\ VAULT/backups/vimwiki/ --delete
echo
rsync -avh  ~/vimwiki_html/ /run/media/bean/BEAN\ VAULT/backups/vimwiki_html/ --delete
echo

read -p "Would you like to unmount BEAN VAULT? [Y/n] " yesno
if [[ "$yesno" != "n" ]]; then
	udisksctl unmount -b /dev/sdd1
fi
