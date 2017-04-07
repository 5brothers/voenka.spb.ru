{extends 'file:templates/base.tpl'}
{block 'pageContent'}
    {block 'SIDEBAR'}
    {/block}
    {block 'CONTENT'}
    {/block}
    {include 'file:chunks/shop/category/filter.tpl'}
{/block}