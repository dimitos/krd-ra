{$heroData=[
    "title" => "Квартиры от застройщика в Краснодаре",
    "text" => "Своя инфраструктура по проекту «Город в городе»",
    "images" => [
        [
        "image" => "/img/images/hero_01@3x.jpg",
        "alt" => "Квартиры от застройщика в Краснодаре. ЖК Родные просторы"
        ],
        [
            "image" => "/img/images/hero_01@3x.jpg",
            "alt" => "Квартиры от застройщика в Краснодаре. ЖК Родные просторы"
        ],
        [
            "image" => "/img/images/hero_01@3x.jpg",
            "alt" => "Квартиры от застройщика в Краснодаре. ЖК Родные просторы"
        ],
        [
            "image" => "/img/images/hero_01@3x.jpg",
            "alt" => "Квартиры от застройщика в Краснодаре. ЖК Родные просторы"
        ]
    ],
    "description" => [
        "Уже сдан в эксплуатацию детский сад на 250 мест ",
        "Школа, ещё 2 детсада, храм и поликлиника строятся",
        "Большой парк: зелёная зона, сухой фонтан, велодорожки"
    ]
]}
<section class="section hero anim-item anim-section-hide">
    <div class="container">
        <div class="hero__inner">
            <div class="hero__part">
                <div class="hero-slider unselectable">
                    <div class="swiper hero__swiper">
                        <div class="swiper-wrapper hero__swiper-wrapper">
                            {foreach $heroData.images as $item}
                                <div class="swiper-slide hero__swiper-slide">
                                    <div class="image hero__image">
                                        <div class="image__wrapper">
                                            <picture>
                                                {$pathImage = mb_substr($item.image, 0, -7)}
                                                <source srcset="{$pathImage}@1x.webp" media="(max-width: 420px)" type="image/webp" />
                                                <source srcset="{$pathImage}@1x.jpg" media="(max-width: 420px)" />
                                                <source srcset="{$pathImage}@2x.webp" media="(max-width: 1024px)" type="image/webp" />
                                                <source srcset="{$pathImage}@2x.jpg" media="(max-width: 1024px)" />
                                                <source srcset="{$pathImage}@3x.webp" type="image/webp" />
                                                <img class="image__fit image__fit_cover"
                                                    src="{$pathImage}@3x.jpg"
                                                    alt="{$item.alt}"
                                                    width="420"
                                                    height="263">
                                            </picture>
                                        </div>
                                    </div>
                                </div>
                            {/foreach}
                        </div>
                    </div>
                    <div class="slider-nav">
                        <div class="slider-pagination pagination-white"></div>
                    </div>
                </div>
                <div class="hero-description-slider unselectable">
                    <div class="swiper hero-description__swiper">
                        <div class="swiper-wrapper hero-description__swiper-wrapper">
                            {foreach $heroData.description as $item}
                                <div class="swiper-slide hero-description__swiper-slide">
                                    <div class="hero-description__swiper-slide-text">{$item}</div>
                                </div>
                            {/foreach}
                        </div>
                    </div>
                </div>
                <div class="hero__net">
                    {include "common/components/icon.tpl" icon=["class" => "hero__net-icon", "name" => "net-small"]}
                </div>
            </div>
            <div class="hero__part">
                <div class="hero__wrapper">
                    <h2 class="title title__section hero-title__section">{$heroData.title}</h2>
                    <p class="hero__text">{$heroData.text}</p>
                    <button class="btn btn-default btn__blue-white-blue hero__btn" data-modal="request" type="button">Оставить заявку</button>
                </div>
                <a href="#about" class="btn btn-circle btn-circle__down del-hash">
                    {include "common/components/icon.tpl" icon=["class" => "btn-circle__icon-text", "name" => "text-down"]}
                    {include "common/components/icon.tpl" icon=["class" => "btn-circle__icon", "name" => "arrow-up"]}
                </a>
            </div>
        </div>
    </div>
</section>
