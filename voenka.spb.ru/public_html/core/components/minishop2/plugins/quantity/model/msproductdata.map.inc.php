<?php
return array(
	'fields' => array(
		'quantity' => NULL
	)
	,'fieldMeta' => array(
		'quantity' => array(
			'dbtype' => 'int'
			,'precision' => '10'
			,'phptype' => 'integer'
			,'null' => true
			,'default' => 0
		)
	)
	,'indexes' => array(
		'quantity' => array (
			'alias' => 'quantity'
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