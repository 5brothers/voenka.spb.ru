{foreach $options as $name => $values}
    <div class="form-group">
        <label class="col-md-2 optionsLabel" for="option_{$name}">{('ms2_product_' ~ $name) | lexicon}:</label>
            <select name="options[{$name}]" class="input-sm form-control" id="option_{$name}">
                {foreach $values as $value}
                    <option value="{$value}">{$value}</option>
                {/foreach}
            </select>
    </div>
{/foreach}