{$listData = [
    "image" => "/img/images/list_01@1x.jpg",
    "alt" => "Подборка лучших жилых комплексов Краснодара!"
]}
<section class="section list">
    <div class="container">
        <div class="list__inner">
            <div class="list__left anim-item anim-block-left">
                <h2 class="title title__section list-title__section">Получите бесплатно подборку лучших жилых комплексов Краснодара</h2>
                <p class="list__text">Заполните форму и мы отправим вам подробную презентацию на:</p>
                <form class="form list__form">
                    <div class="list-tabs">
                        <div class="tab list-tabs__item selected">WhatsApp</div>
                        <div class="tab list-tabs__item">E-mail</div>
                    </div>
                    <div class="input__fields">
                        <div class="input__fields-item">
                            <label class="input__field input__field-phone">
                                <input class="input input-default input__white-white-black input-phone" type="tel" name="phone" placeholder="+7(___) --- -- --">
                            </label>
                        </div>
                        <div class="input__fields-item no-active">
                            <label class="input__field input__field-email">
                                <input class="input input-default input__white-white-black input-email" type="text" name="email" placeholder="Введите Ваш Email">
                            </label>
                        </div>
                    </div>
                    <button class="btn btn-default btn__blue-white-blue form-btn" type="button">Получить презентацию</button>
                </form>
            </div>
            <div class="list__right">
                <div class="image list__image anim-item anim-foto-list-hide-right">
                    <div class="image__wrapper">
                        <picture>
                            {$pathImage = mb_substr($listData.image, 0, -7)}
                            <source srcset="{$pathImage}@1x.webp" media="(max-width: 420px)" type="image/webp" />
                            <source srcset="{$pathImage}@1x.jpg" media="(max-width: 420px)" />
                            <source srcset="{$pathImage}@2x.webp" type="image/webp" />
                            <img class="image__fit image__fit_cover"
                                src="{$pathImage}@2x.jpg"
                                alt="{$listData.alt}"
                                width="420"
                                height="218">
                        </picture>
                    </div>
                </div>
                <ul class="list__right-list anim-item anim-die-list-up">
                    <li class="list__right-list-item">Цены для всех типов квартир</li>
                    <li class="list__right-list-item">Описание жилых комплексов</li>
                    <li class="list__right-list-item">Сроки сдачи</li>
                    <li class="list__right-list-item">Визуализации</li>
                </ul>
                <div class="list__right-net anim-item anim-net-shift-right">
                    {include "common/components/icon.tpl" icon=["class" => "list__right-net-icon", "name" => "net-small"]}
                </div>
            </div>
        </div>
    </div>
</section>
