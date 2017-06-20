<div class="box">
    <div class="box-heading">Популярные товары</div>
    <div class="box-content productsOuter">
        <div class="box-product">
            {$_modx->runSnippet('msProducts',[
                'parents' => 2,
                'limit' => 16,
                'sortby' => 'publishedon',
                'sortdir' => 'DESC',
                'includeThumbs' => 'medium',
                'tpl' => '@FILE:chunks/shop/category/product.row.tpl',
                'where' => '{"Data.popular:=":"1"}'
            ])}
        </div>
    </div>
</div>