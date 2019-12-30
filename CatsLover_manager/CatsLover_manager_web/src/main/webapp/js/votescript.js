$(document).ready(function () {
    $('.artist_l li').each(function (m) {
        $(this).find('a').css('top', -150);
        $(this).hover(function () {
            $(this).find('a').animate({
                'top': '0'
            },
            200)
        },
        function () {
            $(this).find('a').animate({
                'top': 150
            },
            {
                duration: 200,
                complete: function () {
                    $(this).css('top', -150)
                }
            })
        })
    });

   
});