function GetIEVersion() {
    var sAgent = window.navigator.userAgent;
    var Idx = sAgent.indexOf("MSIE");

    // If IE, return version number.
    if (Idx > 0)
        return parseInt(sAgent.substring(Idx + 5, sAgent.indexOf(".", Idx)));

    // If IE 11 then look for Updated user agent string.
    else if (!!navigator.userAgent.match(/Trident\/7\./))
        return 11;

    else
        return 0; //It is not IE
}
$(document).ready(function () {
    
    $('#mainmenu-toggle').on('click', function(e){
        e.preventDefault();
       $('#menu > ul').toggle('slow');
    });
    
    $('body').on('click','.getOrder',function(){
        $('#orderModal input[name="product"],#orderModal input[name="productHidden"]').val('Выбранный товар: '+$(this).data('product'));
    });
    
    $('.bxslider').bxSlider({controls:false});
    $('.filter_title').on('click', function () {
        $(this).siblings('.filter-row').toggle('fast');
        $(this).find('.fa-chevron-right').toggleClass('chevronOpened');
    });
    var options = {
        url: function (phrase) {
            return "ajax.php?words=" + phrase + "&action=getCity";
        },
        getValue: "full"
    };

    $("#city").easyAutocomplete(options);

});

$(document).on('af_complete', function(event, response) {
    // Если у формы определённый id
    console.log('должна закрыться');
    var inst = $('[data-remodal-id="orderModal"]').remodal();
    // Скрываем её!
    inst.close();
    // Иначе печатаем в консоль весь ответ
});