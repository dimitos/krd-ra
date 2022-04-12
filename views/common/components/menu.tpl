<div class="menu lock-padding">
    <div class="container">
        <div class="menu__inner">
            <div class="logo">
                <a href="#" class="logo__link">
                    {include "common/components/icon.tpl" icon=["class" => "logo__icon", "name" => "logo"]}
                </a>
                <div class="logo__line"></div>
                <div class="logo__text">официальный<br>партнер</div>
            </div>
            <div class="menu-mobile__btn">
                <div class="menu-mobile__closer">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </div>
            <div class="menu-mobile">
                <div class="menu-mobile__wrap">
                    <nav class="menu__nav">
                        <ul class="menu__list">
                            <li class="menu__item del-hash"><a class="link menu__item-link" href="#about">О комплексе</a></li>
                            <li class="menu__item del-hash"><a class="link menu__item-link" href="#benefit">Преимущества</a></li>
                            <li class="menu__item del-hash"><a class="link menu__item-link" href="#plans">Планировки</a></li>
                            <li class="menu__item del-hash"><a class="link menu__item-link" href="#nearby">Рядом</a></li>
                            <li class="menu__item del-hash"><a class="link menu__item-link" href="#payment">Оплата</a></li>
                            <li class="menu__item del-hash"><a class="link menu__item-link" href="#gallery">Фото ЖК</a></li>
                        </ul>
                    </nav>
                    <div class="menu-mobile__inner">
                        <p class="menu-mobile__text">Тел. отдела продаж:</p>
                        <a class="menu-mobile__phone" href="#" data-modal="callback">{$phone->title}</a>
                        <p class="menu-mobile__text">Адрес:</p>
                        <p class="menu-mobile__text">{$address}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
