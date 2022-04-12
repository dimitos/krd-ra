import { scrollToBlock } from "./helpers";
import { arcticmodal_settings } from "./modal";

/**
 * Smooth scroll to anchor
 */
$("a[href^='#']:not([data-modal])").click(function (event) {
    event.preventDefault();
    if($(this).attr("href") !=="#") scrollToBlock($(this).attr("href"));
});

/**
 * Delete anchor hash
 */
const hash = document.querySelectorAll(".del-hash");
if (document.querySelectorAll(".del-hash")) {
    hash.forEach((el) => el.addEventListener("click", () => setTimeout(() => history.replaceState(null, null, " "), 1), { passive: true }));
}

// Состояние header при скролле
var lightHeder = $(".header").hasClass("header__light");
var bgHeader = $(".header").hasClass("header__bg");

if ($(document).scrollTop() > 50) {
    $(".header").addClass("header__bg");
    bgHeader = true;
    if (lightHeder) $(".header").removeClass("header__light").addClass("header__dark");
}

$(document).scroll(function (e) {
    e.preventDefault();

    if (lightHeder) {
        if ($(this).scrollTop() > 50 && !bgHeader) {
            $(".header").removeClass("header__light").addClass("header__bg header__dark");
            bgHeader = true;
        } else if ($(this).scrollTop() < 50 && bgHeader) {
            $(".header").removeClass("header__bg").removeClass("header__dark").addClass("header__light");
            bgHeader = false;
        }
    } else {
        if ($(this).scrollTop() > 50 && !bgHeader) {
            $(".header").addClass("header__bg");
            bgHeader = true;
        } else if ($(this).scrollTop() < 50 && bgHeader) {
            $(".header").removeClass("header__bg");
            bgHeader = false;
        }
    }
});

// ------------ Валидация форм -----------------------------------------------------------------------

// при фокусе поля убираем вывод ошибки
removePrintErrorFocus(".input-question");
removePrintErrorFocus(".input-phone");
removePrintErrorFocus(".input-email");
$(".input__checkbox").change(function(){
    $(this).removeClass("input-error");
});

// нажатие на кнопку ОТПРАВИТЬ
$(".form-btn").on("click", function () {
    var inputQuestion = $(this).parent().find(".input__fields-item:not(.no-active) .input-question");
    var inputPhone = $(this).parent().find(".input__fields-item:not(.no-active) .input-phone");
    var inputEmail = $(this).parent().find(".input__fields-item:not(.no-active) .input-email");
    var inputCheckbox = $(this).parent().find(".input__checkbox");

    // если поле валидно ...
    if(getValidForm(inputQuestion, inputPhone, inputEmail, inputCheckbox)) {
        // отправляем ajax ...
        console.log("Валидация успешно пройдена");
        // обнуляем форму
        $(this).parent().parent().find("form")[0].reset();
        // открываем попап СПАСИБО
        openModalThanks();
    };
})

/**
 * Функция убирает вывод ошибки при фокусе поля
 * @param {node} el элемент
 */
function removePrintErrorFocus(el) {
    $(el).focus(function () {
        $(this).removeClass("input-error");
    });
}

/**
 * Функция выводит ошибку заполнения поля
 * @param {node} el элемент
 */
function printError(el) {
    $(el).addClass("input-error");
}

/**
 * Функция проверяет валидно ли поле телефона
 * @param {node} el элемент
 * @returns {boolean} да нет
 */
function inputChekPhone(el) {
    if ($(el).length == 0) return true;
    if ($(el).val().length < 10) {
        printError(el);
        return false;
    } else return true;
}

/**
 * Функция проверяет валидно ли поле имени
 * @param {node} el элемент
 * @returns {boolean} да нет
 */
function inputChekQuestion(el) {
    if ($(el).length == 0) return true;
    if (!$(el).val()) {
        printError(el);
        return false;
    } else return true;
}

/**
 * Функция проверяет валидно ли поле Email
 * @param {node} el элемент
 * @returns {boolean} да нет
 */
function inputChekEmail(el) {
    if ($(el).length == 0) return true;
    if ($(el).val().length == 0 || ($(el).val().length > 0 && ($(el).val().match(/.+?\@.+/g) || []).length !== 1)) {
        printError(el);
        return false;
    } else return true;
}

/**
 * Функция проверяет валидно ли поле privacy
 * @param {node} el элемент
 * @returns {boolean} да нет
 */
function inputChekPrivacy(el) {
    if ($(el).length == 0) return true;
    if (!$(el).prop("checked")) {
        printError(el);
        return false;
    } else return true;
}

/**
 * Функция проверяет валидна ли вся форма
 * @param {node} question поле вопроса
 * @param {node} phone поле телефона
 * @param {node} checkbox поле privacy
 * @returns {boolean} да нет
 */
function getValidForm(question, phone, email, checkbox) {
    // проверяем поля формы
    const userQuestion = inputChekQuestion(question);
    const userPhone = inputChekPhone(phone);
    const userEmail = inputChekEmail(email);
    const userPrivacy = inputChekPrivacy(checkbox);
    return userQuestion && userPhone && userEmail && userPrivacy;
}

/**
 * Функция открывает попап СПАСИБО
 */
function openModalThanks() {
    let $modal = $(".intopModal-thanks");
    if ($modal.length > 0) {
        if($(".page__body").hasClass("arcticmodal-wrap-active")) {
            $((".arcticmodal-container .intopModal")).arcticmodal('close');
            setTimeout(() => {
                $modal.arcticmodal(arcticmodal_settings);
            }, 100);
        } else {
            $modal.arcticmodal(arcticmodal_settings);
        }
    }
};

// ------------ scroll animation -----------------------------------------------------------------------

let animItems = document.querySelectorAll(".anim-item");

if (animItems.length > 0) {
    window.addEventListener("scroll", animOnScroll);

    function animOnScroll() {
        for (let i = 0; i < animItems.length; i++){
            const animItem = animItems[i];
            const animItemHeight = animItem.offsetHeight;
            const animItemOffset = offset(animItem).top + 30;
            const animStart = 3;
            let animItemPoint = window.innerHeight - animItemHeight / animStart;
            animItemHeight > window.innerHeight ? animItemPoint = window.innerHeight - window.innerHeight /animStart : false;

            if (scrollY > (animItemOffset - animItemPoint) && scrollY < (animItemOffset + animItemHeight) && !animItem.classList.contains("active")) {
                animItem.classList.add("active");
            }
        }
    }

    /**
     * Функция возвращает корректные координаты положения элемента.
     * @param el элемент.
     * @returns {{top: number, left: number}} объект с координатами элемента.
     */
    function offset(el){
        const rect = el.getBoundingClientRect(),
            scrollLeft = window.pageXOffset || document.documentElement.scrollLeft,
            scrollTop = window.pageYOffset || document.documentElement.scrollTop;
        return {top: rect.top + scrollTop, left: rect.left + scrollLeft};
    }

    setTimeout(function(){
        animOnScroll();
    },300);
}
