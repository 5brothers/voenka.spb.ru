miniShop2.plugin.avail = {
	getFields: function(config) {
		return {
			quantity: {xtype: 'textfield', description: '<b>[[+quantity]]</b><br />'+_('ms2_product_quantity_help')}
			
		}
	}
	,getColumns: function() {
		return {
			quantity: {width:50, sortable:true, editor: {xtype: 'textfield', name: 'quantity'}}
		}
	}
};