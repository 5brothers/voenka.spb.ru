<div class="row msearch2" id="mse2_mfilter">
    <div class="span3 col-md-3" id="column-left">
        <form action="{$_modx->resource.id|url}" method="post" id="mse2_filters">
            {$filters}
            <br/>
            {if $filters}
                <button type="reset" class="btn btn-default hidden">{$_modx->lexicon('mse2_reset')}</button>
                <button type="submit">{$_modx->lexicon('mse2_submit')}</button>
                <div class="clearfix"></div>
            {/if}
        </form>

        <br/><br/>
        <div>{$_modx->lexicon('mse2_limit')}
            <select name="mse_limit" id="mse2_limit">
                <option value="10" [[+limit:is=`10`:then=`selected`]]>10</option>
                <option value="25" [[+limit:is=`25`:then=`selected`]]>25</option>
                <option value="50" [[+limit:is=`50`:then=`selected`]]>50</option>
                <option value="100" [[+limit:is=`100`:then=`selected`]]>100</option>
            </select>
        </div>
    </div>

    <div class="span9 col-md-9" id="content">
        {if $_modx->resource.longtitle}
            <h1>{$_modx->resource.longtitle}</h1>
            {else}
             <h1>{$_modx->resource.pagetitle}</h1>   
        {/if}
        <h3>{$_modx->lexicon('mse2_filter_total')} 
            <span id="mse2_total">[[+total:default=`0`]]</span>
        </h3>
        <div class="row">
            {if $tpls}
                <div id="mse2_tpl" class="span4 col-md-4">
                    <a href="#" data-tpl="0" class="[[+tpl0]]">[[%mse2_chunk_default]]</a> /
                    <a href="#" data-tpl="1" class="[[+tpl1]]">[[%mse2_chunk_alternate]]</a>
                </div>
            {/if}
        </div>
        <div id="mse2_selected_wrapper">
            <div id="mse2_selected">{$_modx->lexicon('mse2_selected')}:
                <span></span>
            </div>
        </div>

        <div id="mse2_results">
            {$results}
        </div>

        <div class="mse2_pagination">
            [[!+page.nav]]
        </div>
        {if $_modx->resource.id!=509}
        <div class="pageContent">
                {$_modx->resource.content}
        </div>
        {/if}
    </div>
</div>