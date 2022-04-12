{extends "./modal.tpl"}

{block modal}
    <div class="callback-modal">
        <div class="callback-modal__wrap">
            <h3 class="title title__section callback-modal__title">Перезвонить вам?</h3>
            <form class="form request-modal__form">
                <div class="input__fields">
                    <div class="input__fields-item">
                        <div class="input__fields-item-text">Ваш телефон *</div>
                        <label class="input__field input__field-phone">
                            <input class="input input-default input__white-white-black input-phone" type="tel" name="phone" placeholder="+7(___) --- -- --">
                        </label>
                    </div>
                    <div class="input__fields-item">
                        <div class="input__fields-item-text">Ваше имя</div>
                        <label class="input__field input__field-name">
                            <input class="input input-default input__white-white-black input-name" type="text" placeholder="Введите Ваше имя">
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
    </div>
{/block}
