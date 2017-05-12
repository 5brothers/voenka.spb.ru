<div id="content" itemscope itemtype="http://schema.org/Product">
    <div id="msProduct">
        <h1 class="productTitle" itemprop="name">{$_modx->resource.pagetitle}</h1>
        <div class="product-info">
            <div class="left">
                {$_modx->runSnippet('!msGallery',[
                    'tpl' => '@FILE:chunks/shop/product/msGallery.tpl',
                    'includeThumbs' => 'small,medium,cart'
                ])}
            </div>
            <div class="right" itemprop="offers" itemscope itemtype="http://schema.org/Offer">
                <form class="form-horizontal ms2_form" method="post">
                    <div class="productProperites">
                        <div class="form-group">
                            <label class="col-md-2">Категория: [[#[[#[[*id]].parent]].pagetitle]]</label>
                        </div>
                        {if $article}
                            <div class="form-group">
                                <label class="col-md-2">{$_modx->lexicon('ms2_product_article')}: {$article}</label>
                            </div>
                        {/if}
                        <div class="form-group">
                            <label class="col-md-2">Состояние: {$status}</label>
                        </div>
                        {if $made_in}
                            <div class="form-group">
                                <label class="col-md-2">{$_modx->lexicon('ms2_product_made_in')}: {$made_in}</label>
                            </div>
                        {/if}
                        {if $vendor}
                            <div class="form-group">
                                <label class="col-md-2">{$_modx->lexicon('ms2_product_vendor')}: {$_modx->getPlaceholder('vendor.name')}</label>
                            </div>
                        {/if}
                        <div class="price">
                             {if $old_price?}
                                <span class="oldprice">{$old_price}</span>    
                              {/if}
                            <span class="priceValue" itemprop="price">{$price}</span> руб.
                        </div>
                        <span class="hidden" itemprop="priceCurrency">
                            RUB
                        </span>
                        {if $avail!='Недоступно для заказа'}
                            {if $avail!='В наличии'}
                                <a data-product="{$_modx->resource.pagetitle}, артикул: {$article}" data-remodal-target="orderModal" href="#orderModal" class="btn getOrder"> <i class="fa fa-shopping-cart"></i> Заказать</a>
                            {else}
                            <div class="cart">
                                <input type="hidden" name="id" value="[[*id]]"/>
                                <div class="form-group">
                                    <div class="productToCartOuter tocart">
                                        <button type="submit" name="ms2_action" value="cart/add">
                                            <i class="fa fa-shopping-cart"></i>
                                            Купить
                                        </button>
                                    </div>
                                </div>
                            </div>
                            {/if}
                        {/if}
                    </div>
                    <div class="productDescription description">
                        <div class="form-group">
                            <label class="optionsLabel">
                                Наличие: 
                            </label>
                            {switch $avail}
                            {case 'Недоступно для заказа'}
                            <span class="status redstatus"></span>
                            <span style="font-weight:bold;color:red">Недоступно для заказа</span>
                            <p>Товар закончился, и когда появится в наличии, мы даже примерно не знаем :(</p>
                            {case 'В наличии'}
                            <span class="status greenstatus"></span>
                            <span style="font-weight:bold;color:green">В наличии</span>
                            {case default}
                            <span class="status yellowstatus"></span>
                            <span style="font-weight:bold;color:#060501">{$avail}</span>
                            {/switch}
                            </span>
                        </div>
                        {if $avail != 'Недоступно для заказа'}
                            <div class="form-group form-inline">
                                <label class="col-md-2 optionsLabel" for="product_price">{$_modx->lexicon('ms2_cart_count')}:</label>
                                <input type="number" name="count" id="product_price" class="input-sm form-control" value="1"/>
                                {$_modx->lexicon('ms2_frontend_count_unit')}
                            </div>
                            {$_modx->runSnippet('msOptions',[
                            'options' => 'size'
                            'tpl' => '@FILE:chunks/shop/product/msOptions.tpl'
                            ])}
                            <a class="sizeTableLink" href="{'590'|url}" title="Таблица размеров" target="_blank">Таблица размеров</a>
                        {/if}
                    </div>
                </form>
            </div>
        </div>
            {var $commentsCount = $_modx->runSnippet('TicketMeta',[
                'tpl' => '@INLINE {$comments}'
            ])}
        <div id="tabs" class="htabs">
            <a href="#tab-description" class="selected">Описание</a>
            <a href="#tab-reviews" class="">Отзывы ({$commentsCount})</a>
        </div>
        <div id="tab-container">
            <div id="tab-description" class="tab-content" style="display: block;">
                <h2>{$_modx->resource.pagetitle}</h2>
                <div itemprop="description">
                    {$_modx->resource.content}
                </div>
            </div>
               <div id="tab-reviews" class="tab-content" style="display: none;">
               {$_modx->runSnippet('!TicketComments',[
                    'allowGuest' => 1,
                    'tplCommentFormGuest' => '@FILE:chunks/tickets/form.guest.tpl',
                ])}
                </div>
        </div>
        {var $tags=$_modx->runSnippet('!msOptions',[
                'name' => 'tags',
                'tpl' => '@FILE:chunks/shop/product/tags.tpl'
            ])}
        <div class="tags"><b>Метки: {$tags}</b>        
        </div>
    </div>
</div>