<div class="box">
    <div class="box-heading">Последние поступления</div>
    <div class="box-content productsOuter">
        <div class="box-product">
            {$_modx->runSnippet('msProducts',[
                'parents' => 2,
                'limit' => 16,
                'sortby' => 'publishedon',
                'sortdir' => 'DESC',
                'includeThumbs' => 'medium',
                'tpl' => '@FILE:chunks/shop/category/product.row.tpl',
                'where' => '{"Data.avail:!=":"Недоступно для заказа"}'
            ])}
            <div class="clearfix">
                <a href="{$_modx->makeUrl(2)}" title="Каталог военной одежды" class="btn link-btn">Посмотреть больше</a>
            </div>
        </div>
    </div>
</div>