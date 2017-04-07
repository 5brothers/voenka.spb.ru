<div  class="{$total_count > 0 ? 'full' : ''}" id="msMiniCart">
    <div class="empty">
        <div class="heading">
            <h4><i class="fa fa-shopping-cart"></i> Корзина</h4>
        </div>
    </div>
    <div class="not_empty">
        <div class="heading">
            <a href="{$_modx->makeUrl(34)}">
                <h4><i class="fa fa-shopping-cart"></i> Корзина</h4>
                <span class="miniCartCount miniCartActive">
                    <span class="ms2_total_count">{$total_count}</span>
                </span>
            </a>
        </div>   
    </div>
</div>