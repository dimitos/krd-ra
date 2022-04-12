{$paymentData=[
    [
        "title" => "Ипотека",
        "text" => "Возможность купить квартиру на выгодных условиях от банков-партнеров",
        "image" => "/img/payment/payment_01@1x.jpg",
        "alt" => "Возможности оплаты"
    ],
    [
        "title" => "Мат. капитал",
        "text" => "Вкладывайте в будущее семьи и своего ребенка с надежным застройщиком",
        "image" => "/img/payment/payment_02@1x.jpg",
        "alt" => "Возможности оплаты"
    ],
    [
        "title" => "Акции и скидки",
        "text" => "Покупайте квартиру на особых условиях - получите выгодное предложение ",
        "image" => "/img/payment/payment_03@1x.jpg",
        "alt" => "Возможности оплаты"
    ],
    [
        "title" => "Особые условия",
        "text" => "Индивидуальной подход к каждому покупателю и его возможностям бюджета",
        "image" => "/img/payment/payment_04@1x.jpg",
        "alt" => "Возможности оплаты"
    ]
]}
<section class="section payment">
    <div class="container">
        <h2 class="title title__section payment-title__section anim-item anim-title-hide-up">Возможности оплаты</h2>
        <div class="payment-slider unselectable anim-item anim-section-hide">
            <div class="swiper payment__swiper">
                <div class="swiper-wrapper payment__swiper-wrapper">
                    {foreach $paymentData as $item}
                        <div class="swiper-slide payment__swiper-slide">
                            <div class="image payment__image">
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
                                            height="378">
                                    </picture>
                                </div>
                            </div>
                            <div class="payment__swiper-slide-wrapper">
                                <h3 class="title payment__item-title">{$item.title}</h3>
                                <p class="payment__item-text">{$item.text}</p>
                                <button class="btn btn-link btn-link__blue">Узнать подробнее</button>
                            </div>
                        </div>
                    {/foreach}
                </div>
            </div>
            <div class="slider-nav">
                <div class="slider-pagination pagination-blue"></div>
            </div>
        </div>
        <div class="payment__circle1">
            {include "common/components/icon.tpl" icon=["class" => "payment__circle1-icon", "name" => "circle159"]}
        </div>
        <div class="payment__circle2">
            {include "common/components/icon.tpl" icon=["class" => "payment__circle2-icon", "name" => "circle343"]}
        </div>
    </div>
</section>
