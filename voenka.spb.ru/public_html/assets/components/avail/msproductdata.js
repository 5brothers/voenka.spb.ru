miniShop2.plugin.avail = {
    getFields: function () {
        return {
            avail: {
                xtype: 'textfield',
                description: '<b>[[+avail]]</b><br />' + _('ms2_product_avail_help')
            }
        };
    },
    getColumns: function () {
        return {
            avail: {
                width: 50,
                sortable: false,
                editor: {xtype: 'textfield', name: 'avail'}
            }
        };
    }
};