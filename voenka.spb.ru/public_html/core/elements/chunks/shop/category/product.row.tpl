<div class="msProductItem ms2_product">
    <div class="image">
        {if $thumb?}
            <a href="{$uri}">
                <img src="{$medium}" alt="{$pagetitle}" title="{$pagetitle}"/>
            </a>
        {else}
            <img src="{'assets_url' | option}templates/image/no-image.jpg" alt="{$pagetitle}" title="{$pagetitle}"/>
        {/if}
    </div>
    <div class="name">
        <a href="{$uri}">{$pagetitle|truncate:36:"..."}</a>
    </div>
    <div class="price">
        {if $old_price?}
        <span class="oldprice">{$old_price}</span>    
        {/if}
        <span class="productPriceVal">{$price}</span>
        <span class="productCurrency">руб.</span>
    </div>
    <div class="tocart">
        <form method="post" class="ms2_form">
            {if $avail=='Недоступно для заказа'}
                <button type="submit" name="ms2_action" value="cart/add" disabled="disabled">
                    <i class="fa fa-close" aria-hidden="true"></i> 
                    Нет в наличии
                </button>
            {else}
                {if $avail!='В наличии'}
                    <a data-product="{$pagetitle}, артикул: {$article}" data-remodal-target="orderModal" href="#orderModal" class="btn getOrder"> <i class="fa fa-shopping-cart"></i> Заказать</a>
                {else}
                    <button type="submit" name="ms2_action" value="cart/add">
                        <i class="fa fa-cart-arrow-down" aria-hidden="true"></i> 
                        В корзину
                    </button>
                {/if}
            {/if}
            <input type="hidden" name="id" value="{$id}">
            <input type="hidden" name="count" value="1">
            <input type="hidden" name="options" value="[]">
        </form>
    </div>
</div>