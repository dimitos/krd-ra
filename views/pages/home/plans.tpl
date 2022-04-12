{$plansData=[
    "slides" => [
        [
            "image" => "/img/plans/plan_01@1x.jpg",
            "name" => "1-комнатная квартира 1",
            "rooms" => "1",
            "description" => "с просторной кухней"
        ],
        [
            "image" => "/img/plans/plan_02@1x.jpg",
            "name" => "1-комнатная квартира 2",
            "rooms" => "1",
            "description" => "с просторной кухней"
        ],
        [
            "image" => "/img/plans/plan_03@1x.jpg",
            "name" => "1-комнатная квартира 3",
            "rooms" => "1",
            "description" => "с просторной кухней"
        ],
        [
            "image" => "/img/plans/plan_03@1x.jpg",
            "name" => "1-комнатная квартира 4",
            "rooms" => "1",
            "description" => "с просторной кухней"
        ],
        [
            "image" => "/img/plans/plan_02@1x.jpg",
            "name" => "2-комнатная квартира 1",
            "rooms" => "2",
            "description" => "с просторной кухней"
        ],
        [
            "image" => "/img/plans/plan_03@1x.jpg",
            "name" => "2-комнатная квартира 2",
            "rooms" => "2",
            "description" => "с просторной кухней"
        ],
        [
            "image" => "/img/plans/plan_02@1x.jpg",
            "name" => "2-комнатная квартира 3",
            "rooms" => "2",
            "description" => "с просторной кухней"
        ],
        [
            "image" => "/img/plans/plan_01@1x.jpg",
            "name" => "Студия 1",
            "rooms" => "Студия",
            "description" => "с просторной кухней"
        ],
        [
            "image" => "/img/plans/plan_02@1x.jpg",
            "name" => "Студия 2",
            "rooms" => "Студия",
            "description" => "с просторной кухней"
        ],
        [
            "image" => "/img/plans/plan_03@1x.jpg",
            "name" => "3-комнатная квартира 1",
            "rooms" => "3",
            "description" => "с просторной кухней"
        ],
        [
            "image" => "/img/plans/plan_03@1x.jpg",
            "name" => "3-комнатная квартира 2",
            "rooms" => "3",
            "description" => "с просторной кухней"
        ],
        [
            "image" => "/img/plans/plan_03@1x.jpg",
            "name" => "3-комнатная квартира 3",
            "rooms" => "3",
            "description" => "с просторной кухней"
        ]
    ],
    "tabs" => [
        [
            "name" => "Студия",
            "id" => "plans-studio"
        ],
        [
            "name" => "1",
            "id" => "plans-1"
        ],
        [
            "name" => "2",
            "id" => "plans-2"
        ],
        [
            "name" => "3",
            "id" => "plans-3"
        ]
    ]
]}
<section class="section plans">
    <div class="container">
        <h2 class="title title__section plans-title__section anim-item anim-title-hide-up">Выбор планировок</h2>
        <div class="plans-tabs-slider unselectable anim-item anim-section-hide">
            <div class="swiper plans-tabs__swiper">
                <div class="swiper-wrapper plans-tabs__swiper-wrapper">
                    <div class="swiper-slide plans-tabs__swiper-slide">
                        <div class="tab-plan tab-item plans__tab selected" id="plans-tab-all" data-name="Все">Все</div>
                    </div>
                    {foreach $plansData.tabs as $item}
                        <div class="swiper-slide plans-tabs__swiper-slide">
                            <div class="tab-plan tab-item plans__tab" id="{$item.id}" data-name="{$item.name}">{$item.name}</div>
                        </div>
                    {/foreach}
                </div>
            </div>
        </div>
        <div class="plans-slider unselectable anim-item anim-section-hide">
            <div class="swiper plans__swiper">
                <div class="swiper-wrapper plans__swiper-wrapper">
                    {foreach $plansData.slides as $item}
                        <div class="swiper-slide plans__swiper-slide" data-name="{$item.rooms}">
                            <div class="plans__swiper-slide-content">
                                <div class="plans__swiper-slide-wrap">
                                    <div class="image plans__image">
                                        <div class="image__wrapper">
                                            <picture>
                                                {$pathImage = mb_substr($item.image, 0, -7)}
                                                <source srcset="{$pathImage}@1x.webp" media="(max-width: 420px)" type="image/webp" />
                                                <source srcset="{$pathImage}@1x.jpg" media="(max-width: 420px)" />
                                                <source srcset="{$pathImage}@2x.webp" media="(max-width: 1024px)" type="image/webp" />
                                                <source srcset="{$pathImage}@2x.jpg" media="(max-width: 1024px)" />
                                                <source srcset="{$pathImage}@3x.webp" type="image/webp" />
                                                <img class="image__fit image__fit_contain"
                                                    src="{$pathImage}@3x.jpg"
                                                    alt="{$object} {$item.name} {$item.description}"
                                                    width="341"
                                                    height="339">
                                            </picture>
                                        </div>
                                    </div>
                                </div>
                                <div class="plans__slide-footer">
                                    <div class="plans__slide-footer-wrap">
                                        <div class="plans__swiper-slide-title">{$item.name}</div>
                                        <div class="plans__swiper-slide-text">{$item.description}</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    {/foreach}
                </div>
            </div>
            <div class="slider-nav">
                <button class="btn slider-nav__btn slider-btn__prev" type="button">
                    {include "common/components/icon.tpl" icon=["class" => "slider-nav__btn-icon", "name" => "arrow-prev"]}
                </button>
                <button class="btn slider-nav__btn slider-btn__next" type="button">
                    {include "common/components/icon.tpl" icon=["class" => "slider-nav__btn-icon", "name" => "arrow-next"]}
                </button>
            </div>
        </div>
        <div class="plans__footer anim-item anim-foto-hide-right">
            <button class="btn btn-default btn__blue-white-blue plans__btn" data-modal="request" type="button">Узнать цену</button>
        </div>
        <div class="plans__circle anim-item anim-net-hide">
            {include "common/components/icon.tpl" icon=["class" => "plans__circle-icon", "name" => "circle3005"]}
        </div>
    </div>
</section>
