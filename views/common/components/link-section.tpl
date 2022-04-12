{* <div class="link-section {$link.class}">
    {if ($link.icon == "true")}
        {include "common/components/icon.tpl" icon=["class" => "link-section__icon", "name" => "arrow-right"]}
    {/if}
    <a href="{$link.href}" class="link-section__link no-wrap" dir="auto">
        {include "views/common/components/textLanguage.tpl" textLang=$link.textLang}
    </a>
</div> *}
