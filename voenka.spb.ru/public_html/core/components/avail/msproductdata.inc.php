<?php
return array(
	'fields' => array(
		'avail' => NULL
	)
	,'fieldMeta' => array(
		'avail' => array(
			'dbtype' => 'varchar'
			,'precision' => '50'
			,'phptype' => 'string'
			,'null' => true
			,'default' => NULL
		)
	)
	,'indexes' => array(
		'avail' => array (
			'alias' => 'avail'
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