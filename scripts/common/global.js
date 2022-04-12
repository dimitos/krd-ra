$.ajaxSetup({cache: false});

$.fn.padding = function (direction) {
    return parseFloat(this.css("padding-" + direction));
};

export function windowHeight() {
    return parseFloat(window.innerHeight) || parseFloat($(window).height());
}

export function windowWidth() {
    return parseFloat(window.innerWidth) || parseFloat($(window).width());
}

$("input[name='phone']").mask("+7(999)999-99-99", {placeholder:"+7(___) --- -- --"});
