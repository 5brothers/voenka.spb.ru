{$_modx->runSnippet('pdoCrumbs',[
    'showAtHome' => 0,
    'showHome' => '1',
    'outputSeparator' => ' / ',
    'tpl' => '@INLINE <span itemscope="" itemprop="itemListElement" itemtype="http://schema.org/ListItem"><a rel="nofollow" itemprop="item" title="{$menutitle}" href="{$link}"><span itemprop="name">{$menutitle}</span><meta itemprop="position" content="{$idx}"></a></span>',
    'tplWrapper' => '@INLINE <div itemscope="" itemtype="http://schema.org/BreadcrumbList" class="breadcrumbs">{$output}</div>',
    'tplCurrent' => '@INLINE <span itemscope="" itemprop="itemListElement" itemtype="http://schema.org/ListItem"><span itemprop="name">{$pagetitle}</span><meta itemprop="position" content="{$idx}"></span>'
    ])}