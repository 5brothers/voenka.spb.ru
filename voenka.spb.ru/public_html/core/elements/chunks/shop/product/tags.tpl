{foreach $options as $name => $values}
    {foreach $values as $value}
        <a class="tag" href="/search?query={$value}">{$value},</a>
    {/foreach}
{/foreach}