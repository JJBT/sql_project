#!/bin/bash

DB="project"

sudo mysql -e "DROP DATABASE IF EXISTS project;"
echo "Dropped previously db. Successful."

sudo mysql -e "CREATE USER IF NOT EXISTS '$DATABASE_USER'@'localhost' IDENTIFIED BY '$DATABASE_PASSWORD';"
echo "Create role. Successful."

sudo mysql -e "source scripts/create.sql;"
echo "Create database 'project'. Successful."

sudo mysql -e "source scripts/fill.sql;"
echo "Fill database 'project'. Successful."

sudo mysql -e "source scripts/procedure.sql;"
echo "Create procedures for database 'project'. Successful."

sudo mysql -e "source scripts/triggers.sql;"
echo "Create triggers for database 'project'. Successful."

sudo mysql -e "GRANT ALL PRIVILEGES ON *.* TO '$DATABASE_USER'@'localhost';"
echo "Grant all privileges. Successful."
