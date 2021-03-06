import {arcticmodal_settings} from "./modal";

$(document).ready(function () {
    $body.on("click", ".js-request", function (event) {
        event.preventDefault();

        let $modal = $(".intopModal-request"),
            imgHTML = '<picture><source srcset="/img/modal/request.webp" type="image/webp" /><img class="image cover" src="/img/modal/request.jpg" alt="Оставить заявку" width="274" height="516" loading="lazy" decoding="async" /></picture>';
        $modal.find(".modal-title").html($(this).data("h")?.trim() || "Оставить заявку");
        $modal.find(".request__from").val($(this).data("from")?.trim() || `Кнопка: ${$(this).text()?.trim()}`);
        $modal.find(".request__submit .btn__text").html($(this).data("btn")?.trim() || "Оставить заявку");

        if ($(this).data("img")) {
            let imgClassic = $(this).data("img"),
                imgWebp = imgClassic.replace(/\.jpg|\.png|\.jpeg|\.gif/g, ".webp");

            imgHTML = imgHTML.replace("/img/modal/request.jpg", imgClassic).replace("/img/modal/request.webp", imgWebp);
        }
        $modal.find(".mod-request__img").html(imgHTML);
        $modal.arcticmodal(arcticmodal_settings);
    });

    $body.on("click", ".intopModal-question .question-btn", function () {
        try {
            $(".intopModal-question").arcticmodal("close");
        } catch (e) {
        }
    });

    $body.on("click", ".request__submit, .question__submit", function (event) {
        event.preventDefault();
        let $parent = $(this).parents(".intopModal__whiteContent, .question__container");

        let data = {
            name: $parent.find(".request__input-name, .question__input-name").val().trim(),
            phone: $parent.find(".request__input-phone, .question__input-phone").val().trim(),
            comment: $parent.find(".request__input-comment, .question__input-comment").val()?.trim(),
            from: $parent.find(".request__from, .question__from").val().trim()
        }

        if (!$(".request__checkbox-privacy").length || $(".request__checkbox-privacy").prop("checked")) {
            if (data.phone) {
                $.ajax({
                    type: "POST",
                    url: "/php/callme.php",
                    data
                }).fail(() => {
                    alert("Ошибка!. Пожалуйста, повторите отправку.");
                });

                //ym(13145092,"reachGoal","REQUEST_SENT")
                //ga("send", "event", "REQUEST", "SENT");
                try {
                    $(".intopModal-request").arcticmodal("close");
                } catch (e) {
                }
                try {
                    $(".intopModal-request-advice").arcticmodal("close");
                } catch (e) {
                }
                try {
                    $(".intopModal-request-repair").arcticmodal("close");
                } catch (e) {
                }
                try {
                    $(".intopModal-question").arcticmodal("close");
                } catch (e) {
                }

                $(".intopModal-thanks").arcticmodal(arcticmodal_settings);
                //alert(`Спасибо, заявка отправлена.<br><br>Наш менеджер свяжется с Вами очень скоро.<br><br>Пожалуйста, убедитесь, что указали верный номер ${data.phone}`);
            } else {
                alert("Пожалуйста, укажите Ваш номер телефона, чтобы мы смогли позвонить Вам!");
            }
        } else {
            alert("Пожалуйста, дайте согласие на обработку ваших персональных данных.");
        }
    });

    $(".request__link-privacy").click(function (event) {
        event.preventDefault();
    });
});

