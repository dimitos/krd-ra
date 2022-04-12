// ---------- переключение табов в блоке Selection  ----------
$(".tab").on("click", function() {
    $(this).siblings().removeClass("selected");
    $(this).addClass("selected");
    $(this).parent().parent().find(".input__fields-item").removeClass("no-active").addClass("no-active").find(".input").removeClass("input-error");
    $(this).parent().parent().find(".input__fields-item").eq($(this).index()).removeClass("no-active");
});

var tabItems = [];
var tabItemsCondition = "full";
$(".tab-item").each(function() {
    tabItems.push($(this).text());
});

if($(window).width() < 768) {
    getItemShortTabs();
};
$(window).resize(() =>  {
    if($(window).width() < 768 && tabItemsCondition == "full") getItemShortTabs()
    else if($(window).width() >= 768 && tabItemsCondition == "short") getItemFullTabs();
});

function getItemShortTabs() {
    $(".tab-item").each(function(i) {
        if($(this).attr("id") != "plans-tab-all") {
            $(this).text(tabItems[i][0]);
        }
    });
    tabItemsCondition = "short";
}
function getItemFullTabs() {
    $(".tab-item").each(function(i) {
        $(this).text(tabItems[i]);
    });
    tabItemsCondition = "full";
}

// ---------- Слайдер payment ----------
var paymentSwiper = null;
if ($(".payment-slider").length > 0) {
    paymentSwiper = new Swiper(".payment__swiper", {
        roundLengths: true,
        watchOverflow: true,
        loop: false,
        slidesPerView: 1,
        slidesPerGroup: 1,
        speed: 800,
        spaceBetween: 16,
        pagination: {
            el: ".payment-slider .slider-pagination",
            clickable: true,
        },
        breakpoints: {
            568: {
                slidesPerView: 2,
                spaceBetween: 18
            },
            768: {
                slidesPerView: 3,
                spaceBetween: 21
            },
            1024: {
                slidesPerView: 4,
                spaceBetween: 24
            }
        }
    });
}
$(".payment-slider .swiper-pagination-bullet").each(function() {
    $(this).empty().append($('<span class="swiper-pagination-bullet-circle"></span>'));
})
$(window).resize(() =>  {
    setTimeout(()=>{
        $(".payment-slider .swiper-pagination-bullet").each(function() {
            if ($(this).children().length == 0) $(this).append($('<span class="swiper-pagination-bullet-circle"></span>'));
        })
    }, 100);
});
// ---------- Слайдер hero-description ----------
var heroDescriptionSwiper = null;
if($(window).width() < 1024 && !heroDescriptionSwiper) heroDescriptionSwiperInit();

$(window).resize(() =>  {
    if($(window).width() < 1024 && !heroDescriptionSwiper) heroDescriptionSwiperInit()
    else if($(window).width() >= 1024 && heroDescriptionSwiper) heroDescriptionSwiperInit();
});

/**
 * The function hero Description slider initialization
 */
function heroDescriptionSwiperInit() {
    if (heroDescriptionSwiper) {
        heroDescriptionSwiper.destroy();
        heroDescriptionSwiper = null;
        return;
    }

    heroDescriptionSwiper = new Swiper(".hero-description__swiper", {
        roundLengths: true,
        watchOverflow: true,
        loop: false,
        slidesPerView: 1,
        slidesPerGroup: 1,
        speed: 800,
        spaceBetween: 16,
        breakpoints: {
            568: {
                slidesPerView: 2,
                spaceBetween: 12
            },
            768: {
                slidesPerView: 1,
                spaceBetween: 25
            }
        }
    });
}

// ---------- Слайдер Hero ----------
var heroSwiper = new Swiper(".hero__swiper", {
    roundLengths: true,
    watchOverflow: true,
    autoplay: { delay: 4000 },
    loop: true,
    slidesPerView: 1,
    slidesPerGroup: 1,
    speed: 800,
    spaceBetween: 16,
    pagination: {
        el: ".hero-slider .slider-pagination",
        clickable: true,
    }
});
$(".hero-slider .swiper-pagination-bullet").each(function() {
    if ($(this).children().length == 0) $(this).append($('<span class="swiper-pagination-bullet-circle"></span>'));
})

// ======================= Блок plans =======================================

var planSlides = $(".plans__swiper-slide");
var plansTabsSwiper = null;
var plansSwiper = null;
plansSwiperInit();

// получаем длину ряда табов
var plansTabsLength = ($(".plans-tabs__swiper-slide").length - 1) * 16;
$(".plans-tabs__swiper-slide").each(function() { plansTabsLength += $(this).width() })

if($(".plans-tabs__swiper").width() < plansTabsLength && !plansTabsSwiper) plansTabsSwiperInit();

$(window).resize(() =>  {
    if($(".plans-tabs__swiper").width() < plansTabsLength && !plansTabsSwiper) plansTabsSwiperInit()
    else if($(".plans-tabs__swiper").width() >= plansTabsLength && plansTabsSwiper) plansTabsSwiperInit();
});

// вешаем слушатель на табы plans
$(".tab-plan").on("click", function() {
    $(this).parent().parent().find(".tab-plan").removeClass("selected");
    $(this).addClass("selected");

    plansSwiper.destroy();
    plansSwiper = null;
    // запускаем функцию перерисовки слайдера
    var typePlan = $(this).attr("data-name");
    insertPlansSlides(typePlan);
    plansSwiperInit();
});

/**
 * Функция записывает выбранные слайды в слайдер Plans
 * @param {string} select selection key
 */
function insertPlansSlides(typePlan) {
    // удаляем старые слайды
    $(".plans__swiper-wrapper").empty();
    for (let i = 0; i < planSlides.length; i++) {
        if($(planSlides[i]).attr("data-name") == typePlan || typePlan == "Все") {
            $(".plans__swiper-wrapper").append(planSlides[i]);
        }
    }
}

/**
 * Функция инициализации слайдера PlansTabs
 */
function plansTabsSwiperInit() {
    if (plansTabsSwiper) {
        plansTabsSwiper.destroy();
        plansTabsSwiper = null;
        return;
    }

    plansTabsSwiper = new Swiper(".plans-tabs__swiper", {
        roundLengths: true,
        watchOverflow: true,
        loop: false,
        slidesPerView: 4,
        slidesPerGroup: 1,
        speed: 800
    });
}

/**
 * Функция инициализации слайдера Plans
 */
function plansSwiperInit() {
    if (plansSwiper) {
        plansSwiper.destroy();
        plansSwiper = null;
        return;
    }

    plansSwiper = new Swiper(".plans__swiper", {
        roundLengths: true,
        watchOverflow: true,
        loop: true,
        slidesPerView: 1,
        slidesPerGroup: 1,
        spaceBetween: 20,
        speed: 800,
        navigation: {
            nextEl: ".plans-slider .slider-btn__next",
            prevEl: ".plans-slider .slider-btn__prev",
        },
        breakpoints: {
            420: {
                slidesPerView: 2,
            },
            568: {
                slidesPerView: 3,
            },
            768: {
                slidesPerView: 3,
                centeredSlides: true
            }
        }
    });
};

// ======================= Блок Gallery ======================================

var gallerySwiper = new Swiper(".gallery__swiper", {
    roundLengths: true,
    watchOverflow: true,
    loop: false,
    slidesPerView: 1,
    slidesPerGroup: 1,
    spaceBetween: 21,
    speed: 800,
    navigation: {
        nextEl: ".gallery-slider .slider-btn__next",
        prevEl: ".gallery-slider .slider-btn__prev",
    },
    pagination: {
        el: ".gallery-slider .slider-pagination",
        clickable: true,
    },
    breakpoints: {
        568: {
            slidesPerView: 2,
            spaceBetween: 21,
            centeredSlides: false
        },
        768: {
            slidesPerView: 3,
            centeredSlides: true,
            initialSlide: 1,
            spaceBetween: 100
        },
        1024: {
            slidesPerView: 3,
            centeredSlides: true,
            initialSlide: 1,
            spaceBetween: 140
        },
        1264: {
            slidesPerView: 3,
            centeredSlides: true,
            initialSlide: 1,
            spaceBetween: 179
        }

    }
});
$(".gallery-slider .swiper-pagination-bullet").each(function() {
    if ($(this).children().length == 0) $(this).append($('<span class="swiper-pagination-bullet-circle"></span>'));
})
$(window).resize(() =>  {
    setTimeout(()=>{
        $(".gallery-slider .swiper-pagination-bullet").each(function() {
            if ($(this).children().length == 0) $(this).append($('<span class="swiper-pagination-bullet-circle"></span>'));
        })
    }, 100);
});
