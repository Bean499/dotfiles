#!/bin/sh

if [ -d "/run/media/bean/BEAN VAULT/" ]; then
	echo "BEAN VAULT is mounted, proceeding to backup."

	echo
	rsync -avh  ~/wiki/ /run/media/bean/BEAN\ VAULT/backups/vimwiki/ --delete
	echo
	rsync -avh  ~/.wiki-html/ /run/media/bean/BEAN\ VAULT/backups/vimwiki_html/ --delete
	echo
	rsync -avh  ~/code/2\ website/ /run/media/bean/BEAN\ VAULT/backups/website/ --delete
	echo
else
	echo "BEAN VAULT is not mounted. Please mount it."
fi
