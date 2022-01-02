(function ($) { 
    $('.imgallery a').click(function(e) {
        e.preventDefault;
        var zoomImg = $(this).attr('href');
        $('.zomeImg').attr('href', zoomImg); 
        $('.przome').attr('href', zoomImg); 
    })

    $('.xzoom4, .xzoom-gallery4').xzoom({tint: '#fafafa', Xoffset: 15});  
})(jQuery);