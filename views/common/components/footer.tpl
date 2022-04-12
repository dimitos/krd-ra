<footer class="footer">
    <div class="container">
        <div class="btn-pageUp">
            <a href="#hero" class="btn btn-circle btn-circle__up del-hash">
                {include "common/components/icon.tpl" icon=["class" => "btn-circle__icon-text", "name" => "text-up"]}
                {include "common/components/icon.tpl" icon=["class" => "btn-circle__icon", "name" => "arrow-up"]}
            </a>
        </div>
        <div class="footer__wrap">
            <div class="footer__object">{$object}</div>
            <a class="footer__phone" href="#" data-modal="callback">Тел. отдела продаж: <span>{$phone->title}</span></a>
            <div class="footer__address">Адрес: <span>{$address}</span></div>
        </div>
    </div>
</footer>
