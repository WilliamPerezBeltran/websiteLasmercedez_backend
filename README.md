# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

websiteLasMercedez_back


$ sudo -u postgres psql
postgres=# 
	create database websitelasmercedez;
postgres=# 
	create user user_websitelasmercedez with password 'websitelasmercedez';
postgres=# 
	grant all privileges on database websitelasmercedez to user_websitelasmercedez;


Example
$ sudo -u postgres psql
postgres=# create user user_mercedez with password 'secure_password';
postgres=# create database db_mercedez owner user_mercedez;
postgres=# grant all privileges on database db_mercedez to user_mercedez;
postgres=# \du
postgres=# ALTER ROLE user_mercedez WITH superuser createdb createrole;

General
$ sudo -u postgres psql
postgres=# create user <user-name> with password '<password>';
postgres=# create database <db_name> owner <user_name>;
postgres=# grant all privileges on database <db-name> to <user-name>;
postgres=# \du
postgres=# ALTER ROLE <user-name> WITH superuser createdb createrole;