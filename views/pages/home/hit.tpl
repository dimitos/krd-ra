{$hitData = [
    "image" => "/img/images/hit_01@3x.jpg",
    "alt" => "Хит продаж. {$object}",
    "info" => "Осталось 7 квартир",
    "data" => [
        "1-комнатная квартира",
        "Общая площадь: 45,29 м2"
    ],
    "description" => "Эту квартиру с просторной кухней 14,08 м2 выбирают любители уютных посиделок за ужином в кругу семьи или с друзьями. Интересна она и тем, кто работает дома - лоджия 3,44 м2 может стать отличным местом для делового пространства"
]}
<section class="section hit section-dark">
    <div class="container">
        <div class="hit__inner">
            <div class="hit__circle1">
                {include "common/components/icon.tpl" icon=["class" => "hit__circle1-icon", "name" => "groupCircle196x147-2"]}
            </div>
            <div class="hit__circle2">
                {include "common/components/icon.tpl" icon=["class" => "hit__circle2-icon", "name" => "groupCircle212x147"]}
            </div>
            <div class="hit__left">
                <h2 class="title title__section hit-title__section anim-item anim-title-hide-up">Хит продаж</h2>
                <div class="hit__list anim-item anim-block-left">
                    {foreach $hitData.data as $item}
                        <p class="hit__data">{$item}</p>
                    {/foreach}
                </div>
                <p class="hit__text anim-item anim-block-left">{$hitData.description}</p>
                <form class="form hit__form anim-item anim-block-left">
                    <div class="input__fields">
                        <div class="input__fields-item">
                            <div class="input__fields-item-text">Забронируйте квартиру, оставив заявку</div>
                            <label class="input__field input__field-phone">
                                <input class="input input-default input__blue-blue-white input-phone" type="tel" name="phone" placeholder="+7(___) --- -- --">
                            </label>
                        </div>
                    </div>
                    <button class="btn btn-default btn__white-blue-white form-btn" type="button">Забронировать квартиру</button>
                </form>
            </div>
            <div class="hit__right">
                <div class="hit__right-wrap anim-item anim-foto-hide-right">
                    <div class="hit__right-info">{$hitData.info}</div>
                    <div class="image hit__image">
                        <div class="image__wrapper">
                            <picture>
                                {$pathImage = mb_substr($hitData.image, 0, -7)}
                                <source srcset="{$pathImage}@1x.webp" media="(max-width: 420px)" type="image/webp" />
                                <source srcset="{$pathImage}@1x.jpg" media="(max-width: 420px)" />
                                <source srcset="{$pathImage}@2x.webp" media="(max-width: 1024px)" type="image/webp" />
                                <source srcset="{$pathImage}@2x.jpg" media="(max-width: 1024px)" />
                                <source srcset="{$pathImage}@3x.webp" type="image/webp" />
                                <img class="image__fit image__fit_contain"
                                    src="{$pathImage}@3x.jpg"
                                    alt="{$hitData.alt}"
                                    width="360"
                                    height="350">
                            </picture>
                        </div>
                    </div>
                </div>
                <div class="hit__right-net anim-item anim-net-shift-right">
                    {include "common/components/icon.tpl" icon=["class" => "hit__right-net-icon", "name" => "net-small"]}
                </div>
            </div>
        </div>
    </div>
</section>
