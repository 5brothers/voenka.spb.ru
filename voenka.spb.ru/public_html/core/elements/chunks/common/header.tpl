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
            <a href="#" class="socLinks" title="Военка в инстаграм">
                <i class="socIcon socInsta"></i>
            </a>
            {/if}
            <a href="{$_modx->makeUrl(510)}" class="socLinks account" title="Личный кабинет">
                <i class="fa fa-sign-in"></i>
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