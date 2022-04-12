{$nearbyData=[
    [
        "title" => "Детям",
        "text" => "3 детских сада на 880 мест,  школа на 1550 мест, детские секции, парк со скейт-площадкой",
        "image" => "/img/nearby/nearby_01@1x.jpg",
        "alt" => "Рядом с домом"
    ],
    [
        "title" => "Покупки",
        "text" => "Комплекс строится с учетом размещения всей нужной коммерческой структурой: магазины, кафе, пекарни, сфера услуг",
        "image" => "/img/nearby/nearby_02@1x.jpg",
        "alt" => "Рядом с домом"
    ],
    [
        "title" => "Отдых ",
        "text" => "Парк «Родные просторы» площадью 6 га. Прогулочные аллеи, озеленение на всей территории (более 500 деревьев)",
        "image" => "/img/nearby/nearby_03@1x.jpg",
        "alt" => "Рядом с домом"
    ],
    [
        "title" => "Для спорта",
        "text" => "Проектируется физкультурно-оздоровительный комплекс с открытым бассейном для всех жителей. Велодорожки",
        "image" => "/img/nearby/nearby_04@1x.jpg",
        "alt" => "Рядом с домом"
    ]
]}

<section class="section nearby">
    <div class="container">
        <div class="nearby__container">
            <div class="nearby__net anim-item anim-net-hide">
                {include "common/components/icon.tpl" icon=["class" => "nearby__net-icon", "name" => "net-big"]}
            </div>
            <h2 class="title title__section nearby-title__section anim-item anim-title-hide-up">Рядом с домом</h2>
            <div class="nearby__inner">
                {foreach $nearbyData as $item name=foo}
                    <div class="nearby__item">
                        <div class="nearby__wrap">
                            <h3 class="title nearby__item-title anim-item {if ($smarty.foreach.foo.iteration%2 == 0)}anim-text-hide-right{else}anim-text-hide-left{/if}">{$item.title}</h3>
                            <div class="image nearby__item-image anim-item anim-foto-hide">
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
                                            width="380"
                                            height="235">
                                    </picture>
                                </div>
                            </div>
                            <p class="nearby__item-text anim-item {if ($smarty.foreach.foo.iteration%2 == 0)}anim-text-hide-right{else}anim-text-hide-left{/if}">{$item.text}</p>
                        </div>
                    </div>
                {/foreach}
            </div>
        </div>
    </div>
</section>
