<!DOCTYPE html>
<html dir="ltr" lang="ru">
{block 'HEAD'}
{include 'file:chunks/common/head.tpl'}
{/block}
<body>
<div id="container">
<div id="header" class="clearafter">
{block 'HEADER'}
{include 'file:chunks/common/header.tpl'}
{include 'file:chunks/common/topmenu.tpl'}
{include 'file:chunks/common/crumbs.tpl'}
{/block}
{block 'pageContent'}
    {block 'SIDEBAR'}
    {include 'file:chunks/common/leftbar.tpl'} 
    {/block}
    {block 'CONTENT'}
    {include 'file:chunks/common/content.tpl'}
    {/block}
{/block}
{block 'FOOTER'}
{include 'file:chunks/common/footer.tpl'}
{include 'file:chunks/shop/remodal/orderModal.tpl'}
{/block}
</div>
{block 'SCRIPTS'}
{include 'file:chunks/common/scripts.tpl'}
{/block}
</div>
</body>
</html>