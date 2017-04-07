<div id="topmenu" class="wrapper clearafter">
    <div id="menu" class="clearafter">
        <a id="mainmenu-toggle" href="#">Меню</a>
        <ul class="menuclear">
            {$_modx->runSnippet('pdoMenu',[
                'parents' => 2,
                'resources' => '-1',
                'level' => 2,
                'tplOuter' => '@INLINE {$wrapper}',
                'tplInner' => '@FILE:chunks/common/topmenuInnerOuter.tpl',
                'tpl' => '@FILE:chunks/common/topmenuTpl.tpl',
                'where' => '{"template:!=":"3"}'
            ])}
            {$_modx->runSnippet('pdoMenu',[
                'parents' => 0,
                'resources' => '537,9,8,535,536,534,538,590',
                'level' => 2,
                'tplOuter' => '@INLINE {$wrapper}',
                'tplInner' => '@FILE:chunks/common/topmenuInnerOuter.tpl',
                'tpl' => '@FILE:chunks/common/topmenuTpl.tpl',
                'where' => '{"template:!=":"3"}'
            ])}
        </ul>
    </div>
</div>