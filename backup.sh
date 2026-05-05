#!/bin/bash

BACKUP_DIR="$HOME/gaming/backups"
SOURCE_DIR="$HOME/gaming"
DATE=$(DATE +%Y-%m-%d_%H-%M%S)

mkdir -p "$BACKUP_DIR"

tar -czvf "$BACKUP_DIR/backup_$DATE.tar.gz" "$SOURCE_DIR" 

echo "backup completed: $BACKUP/backup_$DATE.tar.gz"
