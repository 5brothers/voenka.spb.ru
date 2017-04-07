{$_modx->runSnippet('!mFilter2',[
    'parents' => $_modx->resource.id,
    'limit' => '32',
    'suggestions' => 0,
    'tplOuter' => '@FILE:chunks/shop/filter/tpl.mFilter2.outer.tpl',
    'filters' => 'ms|price:number,resource|parent:grandparents,resource|parent:parents,ms|vendor:vendors,msoption|size,ms|made_in, ms|avail,ms|status',
    'aliases' => 'ms|price:number==price,resource|parent==category,resource|parent==subcategory,ms|vendor==vendor,msoption|size==size,ms|avail==avail,ms|made_in==country,ms|status==status',
    'tplFilter.outer.default' => '@FILE:chunks/shop/filter/tplFilter.outer.default.tpl',
    'tplFilter.outer.ms|price' => '@FILE:chunks/shop/filter/slider.tpl',
    'tplFilter.row.ms|price' => '@FILE:chunks/shop/filter/tpl.mFilter2.filter.number.tpl',
    'ajaxMode' => 'button',
    'sortby' => 'publishedon',
    'sortdir' => 'DESC',
    'tpl' => '@FILE:chunks/shop/category/product.row.tpl',
    'element' => 'msProducts',
    'includeThumbs' => 'medium'
])}