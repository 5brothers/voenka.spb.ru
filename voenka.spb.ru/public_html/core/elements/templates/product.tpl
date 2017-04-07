{extends 'file:templates/base.tpl'}
{block 'pageContent'}
    {block 'SIDEBAR'}
    {/block}
    {block 'CONTENT'}
    {include 'file:chunks/shop/product/productContent.tpl'}
    {/block}
{/block}