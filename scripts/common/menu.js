// элементы с позицией fixed
const lockPadding = document.querySelectorAll(".lock-padding");

// устанавливаем высоту menu__mobile для скролла меню, если маленький размер окна браузера
setHeightMenu();

// открываем/закрываем меню от кликов
$(document).on("click", (e) => {
    console.log(e.target);
    if ($(".menu-mobile__btn").is(e.target) && !$(".menu-mobile__btn").hasClass("active")) openMenu()
    else if ($(".menu-mobile__btn").is(e.target) && $(".menu-mobile__btn").hasClass("active")) closeMenu()
    else if (!$(".menu-mobile").is(e.target) && $(".menu-mobile").has(e.target).length === 0 && $(".menu-mobile__btn").hasClass("active")) closeMenu();
    else if ($(".menu__item-link").is(e.target) && $(".menu-mobile__btn").hasClass("active")) closeMenu();
});

$(window).resize(() =>  {
    if($(window).width() > 1024 && $(".menu-mobile__btn").hasClass("active"))  closeMenu();
    setHeightMenu();
});

/* ------------------------------ Функции -----------------------------------*/

/**
 * Функция открывает меню
 */
function openMenu() {
    // получить ширину скролла
    const lockPaddingValue = window.innerWidth - document.querySelector('body').offsetWidth + "px";
    // добавить фиксированным элементам ширину скролла паддингом справа
    lockPadding.forEach((el) => el.style.paddingRight = lockPaddingValue);
    // добавить body ширину скролла паддингом справа
    $(".page__body").css({ "padding-right": lockPaddingValue });

    $(".menu-mobile__btn").addClass("active");
    $(".menu-mobile").fadeIn(150);
    $(".page").css({ "overflow": "hidden" });

    setHeightMenu();
}

/**
 * Функция закрывает меню
 */
function closeMenu() {
    $(".menu-mobile__btn").removeClass("active");
    $(".menu-mobile").fadeOut(150);
    $(".page").css({ "overflow": "initial" });

    // удалить паддинг справа у фиксированных элементов
    lockPadding.forEach((el) => el.style.paddingRight = 0);
    // удалить паддинг справа у body
    $(".page__body").css({ "padding-right": 0 });
}

/**
 * Функция устанавливает высоту menu-mobile для скролла меню для маленьких размеров окна браузера
 */
function setHeightMenu() {
    // получаем высоту окна
    var heightWindow = window.innerHeight;
    // получаем высоту .header, если он не display: none
    var heightHeader = $(".header").is(":visible") ? $(".header").height() : 0;
    // получаем высоту .menu
    var heightMenu = $(".menu").height();
    // получаем высоту .menu-mobile__wrap
    var heightMenuWrap = $(".menu-mobile__wrap").height();

    if (heightMenu + heightHeader + heightMenuWrap > heightWindow) {
        // высота блока menu-mobile равная высоте окна за вычетом шапки (хедера и меню)
        var heightMenuMobile = heightWindow - heightMenu - heightHeader;
        $(".menu-mobile").css({"height": heightMenuMobile});
    } else {
        $(".menu-mobile").css({"height": "auto"});
    }
}
