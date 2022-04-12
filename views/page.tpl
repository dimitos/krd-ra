<!DOCTYPE html>
<html class="page page_{$page->name}" lang="ru">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="viewport-fit=cover, width=device-width, initial-scale=1">

        {* Title, description, etc *}
        {include "common/page/head/seo.tpl"}

        {* Загрузка шрифтов *}
        {include "common/page/head/loadfonts.tpl"}

        {* Фавиконки *}
        {include "common/page/head/favicons.tpl"}

        {* Микроразметка Open Graph *}
        {include "common/page/head/open-graph.tpl"}

        {* Микроразметка Schema.org *}
        {include "common/page/head/schema.tpl"}

        {* Стили, общие для всех страниц *}
        {$common_styles}

        {* Стили текущей страницы *}
        {if !empty($page->styles)}
            {$page->styles}
        {/if}

        {* Критические скрипты *}
        {$inline_scripts}

        {if $smarty.env.MODE === "prod"}
            {* {include "blocks/counters.tpl"} *}
        {/if}
    </head>

    <body class="page__body page__body_{$page->name}">
        <script>checkWebpSupport();</script>

        {* Основной заголовок страницы *}
        <h1 class="page__h1 visually-hidden">{$meta->h1}</h1>

        {* Шапка страницы *}
        {include "common/components/header.tpl" header=[
            "class" => "page__header page__header_{$page->name}"
        ]}

        {* Меню страницы *}
        {include "common/components/menu.tpl"}

        {* Основной контент страницы *}
        <main class="{$page->name} page__main page__main_{$page->name}">
            {block main}{/block}
        </main>

        {* Футер страницы *}
        {include "common/components/footer.tpl" footer=[
            "class" => "page__footer page__footer_{$page->name}"
        ]}

        {* Модалки *}
        <div class="intopModal__wrap">
            {include "common/page/modals/callback.tpl" eng="callback"}
            {include "common/page/modals/request.tpl" eng="request"}
            {include "common/page/modals/thanks.tpl" eng="thanks"}
        </div>

        {* Вендорные скрипты *}
        {$vendor_scripts}

        {* Скрипты, общие для всех страниц *}
        {$common_scripts}

        {* Скрипты текущей страницы *}
        {if !empty($page->scripts)}
            {$page->scripts}
        {/if}
    </body>
</html>
