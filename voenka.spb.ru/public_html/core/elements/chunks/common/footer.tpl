<div id="footer">
    <div class="wrapper clearafter">
        <div class="column">
            <h4>{$_modx->config.siteEmail}</h4>
            <a href="https://vk.com/{$_modx->config.vkLogin}" class="socLinks" target="_blank">
                <i class="socIcon socVk"></i>
            </a>
            {if $_modx->config.instaLogin}
            <a href="{$_modx->config.instaLogin}" class="socLinks" target="_blank">
                <i class="socIcon socInsta"></i>
            </a>
            {/if}
        </div>
        <div class="column">
            <h3>Информация</h3>
            {$_modx->runSnippet('pdoMenu',[
                'parents' => 0,
                'resources' => '9,8,535,536,534,538',
                'level' => 2,
                'where' => '{"template:!=":"3"}'
            ])}
        </div>
        <div class="column">
            <div id="footer_description" itemscope itemtype="http://schema.org/Organization"> 
                <H3><span itemprop="telephone" class="footerPhone">{$_modx->config.sitePhone}</span></H3>
                <a itemprop="url" href="{$_modx->config.site_url}" class="micro_block">
                    <strong itemprop="name">Voenka.spb.ru - Военная одежда Россия, НАТО, Бундесвер.</strong>
                </a>
                <div itemprop="description" class="micro_block">Одежда и товары в стиле "милитари"</div>
                {*<div itemprop="address" itemscope itemtype="http://schema.org/PostalAddress" style="margin-left: 0;">
                <p>
                <span itemprop="addressRegion" >Россия</span>,
                <span itemprop="addressLocality"> Москва</span>,
                <span itemprop="streetAddress">пр. Маршала Жукова, 4</span>
                <span>БЦ «Роспечать»</span>
                </p>
                <span class="micro_block" itemprop="name">Военка СПб</span>
                </div>*}
            </div>
        </div>
    </div>
</div>
{include 'file:chunks/common/cookies.tpl'}