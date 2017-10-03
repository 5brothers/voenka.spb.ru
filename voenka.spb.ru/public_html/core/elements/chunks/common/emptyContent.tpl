<div id="content" class="wrapper">
   {$_modx->resource.content}
   {if $_modx->user.id==1}
    {if $_modx->resource.id==709}
        {include 'file:chunks/account/sendSMS.tpl'}
    {/if}
   {/if}
</div>