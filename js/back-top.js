jQuery(document).ready(function($) {
    if ($("#back-top").length > 0) {
        $(window).scroll(function() {
            var e = $(window).scrollTop();
            if (e > 400) {
                $("#back-top").show()
            } else {
                $("#back-top").hide()
            }
        });
        $("#back-top").click(function() {
            $('body,html').animate({
                scrollTop: 0
            })
        })
    }
});