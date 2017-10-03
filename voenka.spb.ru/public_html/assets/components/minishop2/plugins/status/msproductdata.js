miniShop2.plugin.status = {
	getFields: function(config) {
		return {
			status: {xtype: 'textfield', description: '<b>[[+status]]</b><br />'+_('ms2_product_status_help')}
			
		}
	}
	,getColumns: function() {
		return {
			status: {width:50, sortable:true, editor: {xtype: 'textfield', name: 'status'}}
		}
	}
};