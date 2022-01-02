(function($) {

  /* =============================================
    Nav Collaps
  =================================================*/
 

  $('li.parent>a').click(function(){
    $(this).parent().find('.dropdown-nav').toggleClass('active');
  })
 
  /* =============================================
    Product Zome
  =================================================*/
/*  $("#pzoom").elevateZoom({gallery:'pgallery', cursor: 'pointer', galleryActiveClass: 'active', imageCrossfade: true,}); 

  $("#pzoom").bind("click", function(e) {  
    var ez =   $('#pzoom').data('elevateZoom'); 
    $.fancybox(ez.getGalleryList());
    return false;
  }); 

  $("#pgallery a").bind("click", function(e) {  
    var ez =  $('#pzoom').data('elevateZoom'); 
    $.fancybox(ez.getGalleryList());
    return false;
  }); 
*/
  /* =============================================
    Product Carousel
  ================================================*/

	$('.product-carousel').owlCarousel({
    loop:true,
    margin:30,
    nav:true,
    autoplay:true,
    autoplayTimeout:5000,
    responsiveClass:true,
    navText : ["<i class='fa fa-chevron-left'></i>","<i class='fa fa-chevron-right'></i>"],
    responsive:{
    	0:{
    		items:1,
      },
      600:{
        items:3,
      },
      1000:{
      	items:5,
      }
    }
	});


  /* =============================================
    Fancy Box
  =================================================*/
    $('.fancybox').fancybox();

  /* =============================================
    Banner Slider
  =================================================*/
  $('#bannerMain').carousel({
    interval: 2000
  })

})(jQuery);

 
$(function(){
  $('#inc').on('click',add);
  $('#dec').on('click',remove);
});

function add(){
  var input = $('#qtyval'),
      value = input.val();      
  input.val(++value);  
  if(value > 1){
    $('#dec').removeAttr('disabled');
  }
}
function remove(){
  var input = $('#qtyval'),
      value = input.val();      
  if(value > 1){
    input.val(--value);
  }else{
    $('#dec').attr('disabled','disabled');
  }
}

//add for dynamicaly
(function($) {
    var $winWidth = $(window).width();
    if ($winWidth < 767) {
        $(document).click(function(e) {
            if (!$(e.target).is('.romansnav *, .action-area *')) {
                $('#mainWap').removeClass('clpse');
                $('.romansnav, .nav-btn').removeClass('clpse');
            }
        });
    }

    $('.nav-btn').click(function() {
        $(this).toggleClass('clpse');
        $('#mainWap').toggleClass('clpse');
        $('.romansnav').toggleClass('clpse');
    })


    $('.close-pop').click(function(e) {
        e.preventDefault();
        $('.area-pop').fadeOut();
    })



    /* Load positions into postion <selec> */
    $("#city").change(function() {
        $cityid = $(this).val() != '' ? $(this).val() : 0;

        $.getJSON("/city/" + $cityid + "/area", function(jsonData) {
            select = '<option value="">Select Area</option>';
            $.each(jsonData, function(i, data) {
                select += '<option value="' + data.id + '">' + data.title + '</option>';
            });
            $("#area").html(select);
        });
    });

    //open popup for change city
    $(".open-pop").click(function(e) {
        e.preventDefault();
        $('.area-pop').css({
            'display': 'block'
        });
    });

    // Shoping Cart    
    $('#scOpen').click(function(e) {
        e.preventDefault();
        $('.shoppingCartWrapper').removeClass('colups');
        $(this).addClass('hide');
    });
    $('.shoppingCartClose, .cart-close').click(function(e) {
        e.preventDefault();
        $('.shoppingCartWrapper').addClass('colups');
        $('#scOpen').removeClass('hide');
    });

    //Load Input Increment and Decrement
    inputChange('.cartItemQuty');

})(jQuery);

//'.cartItemQuty'
function inputChange($class) {
    jQuery('<div class="quantity-nav"><div class="quantity-button quantity-up">+</div><div class="quantity-button quantity-down">-</div></div>').insertAfter($class + ' input');
    jQuery($class).each(function() {
        var spinner = jQuery(this),
            input = spinner.find('input[type="number"]'),
            btnUp = spinner.find('.quantity-up'),
            btnDown = spinner.find('.quantity-down'),
            min = input.attr('min'),
            max = input.attr('max');

        btnUp.click(function() {
            var oldValue = parseFloat(input.val());
            if (oldValue >= max) {
                var newVal = oldValue;
            } else {
                var newVal = oldValue + 1;
            }
            spinner.find("input").val(newVal);
            spinner.find("input").trigger("change");
        });

        btnDown.click(function() {
            var oldValue = parseFloat(input.val());

            if (oldValue <= min) {
                var newVal = oldValue;
            } else {
                var newVal = oldValue - 1;
            }

            spinner.find("input").val(newVal);
            spinner.find("input").trigger("change");
        });
    });
}

//register  
function openRegister(e) {
    e.preventDefault();
    $('#loginPop').removeClass('active').fadeOut();
    $('#registerPop').addClass('active').fadeIn();
}

function closeRegister(e) {
    e.preventDefault();
    $('#registerPop').removeClass('active').fadeOut();
}


//login
function openLogin(e) {
    e.preventDefault();
    $('#registerPop').removeClass('active').fadeOut();
    $('#loginPop').addClass('active').fadeIn();
}

function closeLogin(e) {
    e.preventDefault();
    $('#loginPop').removeClass('active').fadeOut();
}

$(document).ready(function() {
    $('.romansnav li.active').removeClass('closed');
    $('.romansnav li.active > ul').css('display', 'block');
});