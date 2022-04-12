{$galleryData=[
    "/img/gallery/gallery_02@2x.jpg",
    "/img/gallery/gallery_01@2x.jpg",
    "/img/gallery/gallery_03@2x.jpg",
    "/img/gallery/gallery_02@2x.jpg",
    "/img/gallery/gallery_01@2x.jpg",
    "/img/gallery/gallery_03@2x.jpg",
    "/img/gallery/gallery_02@2x.jpg",
    "/img/gallery/gallery_01@2x.jpg",
    "/img/gallery/gallery_03@2x.jpg"
]}
<section class="section gallery">
    <div class="container">
        <h2 class="title title__section gallery-title__section anim-item anim-title-hide-up">Фото и визуализации комплекса</h2>
        <div class="gallery-slider unselectable anim-item anim-section-hide">
            <div class="swiper gallery__swiper">
                <div class="swiper-wrapper gallery__swiper-wrapper">
                    {foreach $galleryData as $item}
                        <div class="swiper-slide gallery__swiper-slide">
                            <div class="gallery__swiper-slide-wrap">
                                <div class="image gallery__image">
                                    <div class="image__wrapper">
                                        <picture>
                                            {$pathImage = mb_substr($item, 0, -7)}
                                            <source srcset="{$pathImage}@1x.webp" media="(max-width: 420px)" type="image/webp" />
                                            <source srcset="{$pathImage}@1x.jpg" media="(max-width: 420px)" />
                                            <source srcset="{$pathImage}@2x.webp" media="(max-width: 1024px)" type="image/webp" />
                                            <source srcset="{$pathImage}@2x.jpg" media="(max-width: 1024px)" />
                                            <source srcset="{$pathImage}@3x.webp" type="image/webp" />
                                            <img class="image__fit image__fit_cover"
                                                src="{$pathImage}@3x.jpg"
                                                alt="{$object}"
                                                width="380"
                                                height="269">
                                        </picture>
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
                <div class="slider-pagination pagination-blue"></div>
                <button class="btn slider-nav__btn slider-btn__next" type="button">
                    {include "common/components/icon.tpl" icon=["class" => "slider-nav__btn-icon", "name" => "arrow-next"]}
                </button>
            </div>
        </div>
        <div class="gallery__circle anim-item anim-section-hide">
            {include "common/components/icon.tpl" icon=["class" => "gallery__circle-icon", "name" => "circle3005"]}
        </div>
    </div>
</section>
