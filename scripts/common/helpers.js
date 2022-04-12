export function scrollToBlock(selector, speed = 600) {
    let offsetTop = 0;

    if (selector === "#top") {
        selector = "html";
    } else {
        selector = selector.replace("#", ".");
        offsetTop = $(".header").innerHeight() + 100;
    }

    $(window).queue([]).scrollTo(selector, speed, {
        offset: {
            top: -offsetTop
        }
    });
}
