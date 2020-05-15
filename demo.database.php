<?php

class DATABASE_CONFIG {

	public function __construct() {
		$this->default['host'] = getenv('DB_HOST');
		$this->default['login'] = getenv('DB_USER');
		$this->default['password'] = getenv('DB_PW');
		$this->default['database'] = getenv('DB_NAME');
	}

	public $default = array(
		'datasource' => 'Database/Mysql',
		'persistent' => true,
		'host' => null,
		'login' => null,
		'password' => null,
		'database' => null,
		'prefix' => 'ib_',
		'encoding' => 'utf8'
	);
}