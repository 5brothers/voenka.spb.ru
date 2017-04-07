{extends 'file:templates/base.tpl'}
{block 'pageContent'}
    {block 'SIDEBAR'}
    {/block}
    {block 'CONTENT'}
        {$_modx->runSnippet('!mFilter2',[
            'parents' => 2,
            'element' => 'msProducts',
            'limit' => '30',
            'suggestions' => 0,
            'tplOuter' => '@FILE:chunks/shop/filter/tpl.mFilter2.outer.tpl',
            'filters' => 'ms|price:number,resource|parent:grandparents,resource|parent:parents,ms|vendor:vendors,msoption|size,ms|made_in, ms|avail',
            'tplFilter.outer.default' => '@FILE:chunks/shop/filter/tplFilter.outer.default.tpl',
            'tplFilter.outer.ms|price' => '@FILE:chunks/shop/filter/slider.tpl',
            'tplFilter.row.ms|price' => '@FILE:chunks/shop/filter/tpl.mFilter2.filter.number.tpl',
            'ajaxMode' => 'button',
            'tpl' => '@FILE:chunks/shop/category/product.row.tpl',
            'includeThumbs' => 'medium'
            ])}
    {/block}
{/block}