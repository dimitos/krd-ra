<section class="section request section-light anim-item anim-section-hide">
    <div class="container">
        <h2 class="title title__section request-title__section anim-item anim-title-hide-up">Остались вопросы?</h2>
        <div class="request__inner anim-item anim-section-hide">
            <p class="request-text">Закажите консультацию менеджера.<br>Обычно мы перезваниваем в течении 15 минут</p>
            <form class="form request__form">
                <div class="input__fields">
                <div class="input__fields-item">
                        <div class="input__fields-item-text">Ваше имя</div>
                        <label class="input__field input__field-name">
                            <input class="input input-default input__white-white-black input-name" type="text" placeholder="Введите Ваше имя">
                        </label>
                    </div>
                    <div class="input__fields-item">
                        <div class="input__fields-item-text">Ваш телефон * </div>
                        <label class="input__field input__field-phone">
                            <input class="input input-default input__white-white-black input-phone" type="tel" name="phone" placeholder="+7(___) --- -- --">
                        </label>
                    </div>
                    <div class="input__fields-item">
                        <div class="input__fields-item-text">Вопрос *</div>
                        <label class="input__field input__field-name">
                            <input class="input input-default input__white-white-black input-question" type="text" placeholder="Напишите вопрос">
                        </label>
                    </div>
                </div>
                <button class="btn btn-default btn__blue-white-blue form-btn" type="button">Отправить заявку</button>
                <div class="input__check">
                    <label class="input__privacy">
                        <input class="input__checkbox input__checkbox-privacy" type="checkbox">
                        <span class="input__agreement"></span>
                    </label>
                    <p class="input__check-text">
                        <span data-modal="privacy">
                            С политикой конфиденциальности
                        </span>
                            ознакомлен, даю
                        <span>
                            согласие на обработку персональных данных
                        </span>
                    </p>
                </div>
            </form>
        </div>
        <div class="request__circle1">
            {include "common/components/icon.tpl" icon=["class" => "request__circle1-icon", "name" => "circle343"]}
        </div>
        <div class="request__circle2">
            {include "common/components/icon.tpl" icon=["class" => "request__circle2-icon", "name" => "circle74"]}
        </div>
        <div class="btn-pageUp__circles">
            <div class="btn-pageUp__circle1">
                {include "common/components/icon.tpl" icon=["class" => "btn-pageUp__circle1-icon", "name" => "circle268"]}
            </div>
            <div class="btn-pageUp__circle2">
                {include "common/components/icon.tpl" icon=["class" => "btn-pageUp__circle2-icon", "name" => "circle81"]}
            </div>
            <div class="btn-pageUp__circle3">
                {include "common/components/icon.tpl" icon=["class" => "btn-pageUp__circle3-icon", "name" => "circle147"]}
            </div>
        </div>
    </div>
</section>
