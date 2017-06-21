<div class="wrapper clearafter" id="headerContent">
    <div id="logo">
        {if $_modx->resource.id==1}
            <img src="{$_modx->config.assets_url}templates/image/logo.jpg" title="Военный секонд-хенд &quot;Военка&quot;" alt="Военный секонд-хенд &quot;Военка&quot;" />
        {else}
            <a href="{$_modx->makeUrl(1)}">
                <img src="{$_modx->config.assets_url}templates/image/logo.jpg" title="Военный секонд-хенд &quot;Военка&quot;" alt="Военный секонд-хенд &quot;Военка&quot;" />
            </a>   
        {/if}
    </div>
    <div class="minicart">
        <div class="socialLinks">
            <a href="https://vk.com/{$_modx->config.vkLogin}" class="socLinks" title="Военка в Вконтакте" target="_blank">
                <i class="socIcon socVk"></i>
            </a>
            {if $_modx->config.instaLogin}
            <a href="{$_modx->config.instaLogin}" class="socLinks" title="Военка в инстаграм">
                <i class="socIcon socInsta"></i>
            </a>
            {/if}
            {if $_modx->config.okLogin?}
            <a href="https://ok.ru/{$_modx->config.okLogin}" class="socLinks" title="Военка в Одноклассниках" target="_blank">
                <i class="fa fa-odnoklassniki"></i>
            </a>    
            {/if}
            <a href="{$_modx->makeUrl(510)}" class="socLinks account" title="Личный кабинет">
                <i class="fa fa-user-circle"></i>
            </a>
            <a class="headerPhone" href="tel:{$_modx->config.sitePhone}">{$_modx->config.sitePhone}</a>
        </div>
        <div id="search">
            <div id="search-inner">
                {$_modx->runSnippet('!mSearchForm',[
                    'element' => 'msProducts',
                    'where'=>'{"Data.price:>":"0"}',
                    'tplForm' => '@FILE:chunks/shop/category/search.form.tpl'
                ])}
            </div>
        </div>
        {$_modx->runSnippet('!msMiniCart',[
            'tpl' => '@FILE:chunks/shop/cart/minicart.tpl'
        ])}
    </div>
    <div class="clearbreak"></div>
</div>