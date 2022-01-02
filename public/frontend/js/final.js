(function ($) {

$('.xzoom4, .xzoom-gallery4').xzoom({tint: '#fafafa', Xoffset: 15});

$('.imgallery a').click(function(e) {
    e.preventDefault;
    var zoomImg = $(this).attr('href');
    $('.zomeImg').attr('href', zoomImg); 
    $('.przome').attr('href', zoomImg); 
})


//Integration with hammer.js
/*var isTouchSupported = 'ontouchstart' in window; 
if (isTouchSupported) {
    //If touch device
    $('.xzoom4').each(function(){
        var xzoom = $(this).data('xzoom');
        xzoom.eventunbind();
    }); 
   
    $('.xzoom4').each(function() {
        var xzoom = $(this).data('xzoom');
        $(this).hammer().on("tap", function(event) {
            event.pageX = event.gesture.center.pageX;
            event.pageY = event.gesture.center.pageY;
            var s = 1, ls;

            xzoom.eventmove = function(element) {
                element.hammer().on('drag', function(event) {
                    event.pageX = event.gesture.center.pageX;
                    event.pageY = event.gesture.center.pageY;
                    xzoom.movezoom(event);
                    event.gesture.preventDefault();
                });
            }

            var counter = 0;
            xzoom.eventclick = function(element) {
                element.hammer().on('tap', function() {
                    counter++;
                    if (counter == 1) setTimeout(openfancy,300);
                    event.gesture.preventDefault();
                });
            }

            function openfancy() {
                if (counter == 2) {
                    xzoom.closezoom();
                    $.fancybox.open(xzoom.gallery().cgallery);
                } else {
                    xzoom.closezoom();
                }
                counter = 0;
            }
        xzoom.openzoom(event);
        });
    });
    
} else {  
    //Integration with fancybox plugin
    $('#xzoom-fancy').bind('click', function(event) {
        var xzoom = $(this).data('xzoom');
        xzoom.closezoom();
        $.fancybox.open( $('.imgallery a'), {
            touch: false,
            infobar: false
        });

        //$.fancybox.open(xzoom.gallery().cgallery, {padding: 0, helpers: {overlay: {locked: false}}});
        event.preventDefault();
    }); 
}*/
})(jQuery);