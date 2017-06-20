<div id="content" class="wrapper"><div id="banner0" class="banner">
        {$_modx->runSnippet('BannerY',[
            'position' => 1,
            'tplWrapper' => '@INLINE <ul class="bxslider">{$output}</ul>',
            'tpl' => '@FILE:chunks/main/banner.row.tpl'
        ])}
    </div>
    {if $_modx->user.id==1}
        {include 'file:chunks/shop/category/popular.tpl'}
        {include 'file:chunks/shop/category/latest.tpl'}
    {else}
    {include 'file:chunks/shop/category/latest.tpl'}
    {/if}
    <h1 style="display: none;">Военный секонд хенд</h1>
    <div class="welcome"></div>
    <h1>{$_modx->resource.longtitle}</h1>
    {$_modx->resource.content}
</div>