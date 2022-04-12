{$aboutData=[
    [
        "title" => "Количество комнат",
        "text" => "Студии, 1, 2, 3-комнатные квартиры"
    ],
    [
        "title" => "Срок сдачи",
        "text" => "1 кв. 2022 – 4 кв. 2031, есть сданные"
    ],
    [
        "title" => "Масштаб застройки",
        "text" => "30 корпусов, от 9 до 24 этажей"
    ],
    [
        "title" => "Возведение",
        "text" => "Монолит-кирпич, потолки 2,7 м"
    ],
    [
        "title" => "Парковка",
        "text" => "Более 2000 мест открытого<br>+ подземный паркинги"
    ],
    [
        "title" => "Окна",
        "text" => "Мультифункциональные<br>стеклопакеты Pilkington"
    ]
]}

<section class="section about">
    <div class="container">
        <h2 class="title title__section about-title__section anim-item anim-title-hide-up">О комплексе</h2>
        <div class="about__wrap">
            {foreach $aboutData as $item}
                <div class="about__item anim-item anim-about">
                    <div class="about__item-line"></div>
                    <div class="about__item-wrap">
                        <h4 class="about__item-title">{$item.title}</h4>
                        <p class="about__item-text">{$item.text}</p>
                    </div>
                </div>
            {/foreach}
        </div>
    </div>
</section>
