<?php
return array(
	'fields' => array(
		'status' => NULL
	)
	,'fieldMeta' => array(
		'status' => array(
			'dbtype' => 'varchar'
			,'precision' => '50'
			,'phptype' => 'string'
			,'null' => true
			,'default' => NULL
		)
	)
	,'indexes' => array(
		'status' => array (
			'alias' => 'status'
			,'primary' => false
			,'unique' => false
			,'type' => 'BTREE'
			,'columns' => array (
				'action' => array (
					'length' => ''
					,'collation' => 'A'
					,'null' => false
				)
			)
		)
	)
);