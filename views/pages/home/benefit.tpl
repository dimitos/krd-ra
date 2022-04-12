{$benefitData=[
    [
        "title" => "Микрорайон <br>с собственной инфраструктурой",
        "text" => "Обширная территория комплекса осваивается комплексно, а это 41 гектар, где помимо жилых домов строятся детские сады, школы, поликлиники, магазины, кафе, спортивные комплексы - всё необходимое в пределах микрорайона!",
        "image" => "/img/benefit/benefit_01@1x.jpg",
        "alt" => "Преимущества ЖК"
    ],
    [
        "title" => "Большой парк <br>для жителей комплекса <br>и их питомцев",
        "text" => "Вам понравится обширная зеленая зона с аллеями для пеших прогулок, удобными лавочками, где есть свой скейт-парк, велодорожки и даже сухой фонтан. Для ваших питомцев уже работает огороженная площадка для выгула с инвентарем для занятий. Гуляйте, дышите свежим воздухом, занимайтесь спортом рядом с домом!",
        "image" => "/img/benefit/benefit_02@1x.jpg",
        "alt" => "Преимущества ЖК"
    ],
    [
        "title" => "Социальное благоустройство",
        "text" => "Уже построен детский сад на 250 мест. Во дворах детские зоны разделятся на площадки для малышей, для детей постарше и для подростков и взрослых. Строится муниципальная школа на 1550 мест, фитнес-клуб, площадки воркаут, спортивные секции, поликлиника.",
        "image" => "/img/benefit/benefit_03@1x.jpg",
        "alt" => "Преимущества ЖК"
    ],
    [
        "title" => "Комфортные планировки",
        "text" => "Студии с большой прихожей, где выделено место под вместительный шкаф. Однокомнатные квартиры с просторной кухней и лоджией. У двушек есть раздельные санузлы и 2 лоджии. А трешки предусматривают кухню-гостиную.",
        "image" => "/img/benefit/benefit_04@1x.jpg",
        "alt" => "Преимущества ЖК"
    ]
]}

<section class="section benefit">
    <div class="container">
        {foreach $benefitData as $item name=foo}
            <div class="benefit__item">
                <div class="benefit__part">
                    <div class="image benefit__image anim-item {if ($smarty.foreach.foo.iteration%2 == 0)}anim-foto-hide-right{else}anim-foto-hide-left{/if}">
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
                                    height="219">
                            </picture>
                        </div>
                    </div>
                </div>
                <div class="benefit__part">
                    <h3 class="title title__section benefit-title__section anim-item anim-title-hide-up">{$item.title}</h3>
                    <p class="benefit__text anim-item {if ($smarty.foreach.foo.iteration%2 == 0)}anim-text-hide-left{else}anim-text-hide-right{/if}">{$item.text}</p>
                </div>
            </div>
        {/foreach}
        <div class="benefit__circle1">
            {include "common/components/icon.tpl" icon=["class" => "benefit__circle1-icon", "name" => "circle74"]}
        </div>
        <div class="benefit__circle2">
            {include "common/components/icon.tpl" icon=["class" => "benefit__circle2-icon", "name" => "circle343"]}
        </div>
        <div class="benefit__circle3">
            {include "common/components/icon.tpl" icon=["class" => "benefit__circle3-icon", "name" => "circle300"]}
        </div>
        <div class="benefit__circle4">
            {include "common/components/icon.tpl" icon=["class" => "benefit__circle4-icon", "name" => "circle135"]}
        </div>
    </div>
</section>
