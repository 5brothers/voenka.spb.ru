<div id="msCart">
    {if !count($products)}
        {'ms2_cart_is_empty' | lexicon}
    {else}
        <div class="table-responsive">
            <table class="table cartTable">
                <tr class="header">
                    <th class="image">Фото</th>
                    <th class="title">{'ms2_cart_title' | lexicon}</th>
                    <th class="count">{'ms2_cart_count' | lexicon}</th>
                    <th class="price">{'ms2_cart_price' | lexicon}</th>
                    <th class="remove">{'ms2_cart_remove' | lexicon}</th>
                </tr>

                {foreach $products as $product}
                    <tr id="{$product.key}">
                        <td class="image">
                            {if $product.thumb?}
                                <img src="{$product.thumb}" alt="{$product.pagetitle}" title="{$product.pagetitle}"/>
                            {else}
                                <img src="{'assets_url' | option}components/minishop2/img/web/ms2_small.png"
                                     srcset="{'assets_url' | option}components/minishop2/img/web/ms2_small@2x.png 2x"
                                     alt="{$product.pagetitle}" title="{$product.pagetitle}"/>
                            {/if}
                        </td>
                        <td class="title">
                            {if $product.id?}
                                <a href="{$product.id | url}">{$product.pagetitle}</a>
                            {else}
                                {$product.name}
                            {/if}
                            {if $product.options?}
                                <div class="small">
                                    {$product.options | join : '; '}
                                </div>
                            {/if}
                        </td>
                        <td class="count">
                            <form method="post" class="ms2_form form-inline" role="form">
                                <input type="hidden" name="key" value="{$product.key}"/>
                                <div class="form-group">
                                    <input type="number" name="count" value="{$product.count}"
                                           class="input-sm form-control" min="1"/>
                                    <span class="hidden-xs">{'ms2_frontend_count_unit' | lexicon}</span>
                                    <button class="btn btn-default" type="submit" name="ms2_action" value="cart/change">
                                        <i class="glyphicon glyphicon-refresh"></i>
                                    </button>
                                </div>
                            </form>
                        </td>
                        <td class="price">
                            <span>{$product.price}</span> р.
                            {if $product.old_price?}
                            <span class="old_price">{$product.old_price} р.
                                {/if}
                        </td>
                        <td class="remove">
                            <form method="post" class="ms2_form">
                                <input type="hidden" name="key" value="{$product.key}">
                                <button class="btn btn-default" type="submit" name="ms2_action" value="cart/remove">
                                    <i class="fa fa-close"></i>
                                </button>
                            </form>
                        </td>
                    </tr>
                {/foreach}
            </table>
            <table>
                <tr class="footer">
                    <th class="total" colspan="2">{'ms2_cart_total' | lexicon}:</th>
                    <th class="total_count">
                        Количество: 
                        <strong>
                            <span class="ms2_total_count">{$total.count}</span>
                            {'ms2_frontend_count_unit' | lexicon}
                        </strong>
                    </th>
                    <th class="total_cost">
                        Стоимость:
                        <span class="ms2_total_cost">{$total.cost}</span>
                        {'ms2_frontend_currency' | lexicon} 
                    </th>
                    {if $total_weight>0}
                    <th class="total_weight">
                         Суммарный вес: 
                         <strong>
                        <span class="ms2_total_weight">{$total.weight}</span>
                        {'ms2_frontend_weight_unit' | lexicon}
                        </strong>
                    </th>
                    {/if}
                    <th>&nbsp;</th>
                </tr>
            </table>
        </div>
    {/if}
</div>