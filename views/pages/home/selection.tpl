{$selectionData = [
    "image" => "/img/images/selection@3x.jpg",
    "alt" => "Подберем вам квартиру в {$object}",
    "tabs" => [ "Студия", "1", "2", "3"]
]}
<section class="section selection section-light">
    <div class="container">
        <div class="selection__inner">
            <div class="selection__circle">
                {include "common/components/icon.tpl" icon=["class" => "selection__circle-icon", "name" => "groupCircle196x147"]}
            </div>
            <div class="selection__left anim-item anim-block-left">
                <h2 class="title title__section selection-title__section">Подберем вам квартиру в {$object}</h2>
                <p class="selection__text">Сколько комнат вас интересует?</p>
                <div class="selection-tabs">
                    {foreach $selectionData.tabs as $item name=selectionTabs}
                        <div class="tab tab-item selection__tab {if $smarty.foreach.selectionTabs.first}selected{/if}">{$item}</div>
                    {/foreach}
                </div>
                <p class="selection__text">Напишите о ваших пожеланиях</p>
                <label>
                    <textarea class="selection__textarea" name="text" placeholder="Например, нужный этаж, вид из окна или раздельный санузел"></textarea>
                </label>
                <button class="btn btn-default btn__blue-white-blue selection__btn" data-modal="request" type="button">Подобрать квартиру</button>
            </div>
            <div class="selection__right">
                <div class="image selection__image anim-item anim-foto-hide-right">
                    <div class="image__wrapper">
                        <picture>
                            {$pathImage = mb_substr($selectionData.image, 0, -7)}
                            <source srcset="{$pathImage}@1x.webp" media="(max-width: 420px)" type="image/webp" />
                            <source srcset="{$pathImage}@1x.jpg" media="(max-width: 420px)" />
                            <source srcset="{$pathImage}@3x.webp" media="(max-width: 1024px)" type="image/webp" />
                            <source srcset="{$pathImage}@3x.jpg" media="(max-width: 1024px)" />
                            <source srcset="{$pathImage}@3x.webp" type="image/webp" />
                            <img class="image__fit image__fit_contain"
                                src="{$pathImage}@3x.jpg"
                                alt="{$selectionData.alt}"
                                width="196"
                                height="246">
                        </picture>
                    </div>
                </div>
                <div class="selection__right-net anim-item anim-net-shift-right">
                    {include "common/components/icon.tpl" icon=["class" => "selection__right-net-icon", "name" => "net-small"]}
                </div>
            </div>
        </div>
    </div>
</section>
