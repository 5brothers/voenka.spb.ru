<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="{$_modx->config.assets_url}templates/js/bx/jquery.bxslider.min.js"></script>
<script src="{$_modx->config.assets_url}templates/js/jquery.magnify.js"></script>
<script src="{$_modx->config.assets_url}templates/js/fancybox/source/jquery.fancybox.pack.js"></script>
<script src="{$_modx->config.assets_url}templates/js/jquery.easy-autocomplete.min.js"></script>

{ignore}
<script>
    function GetIEVersion() {
  var sAgent = window.navigator.userAgent;
  var Idx = sAgent.indexOf("MSIE");

  // If IE, return version number.
  if (Idx > 0) 
    return parseInt(sAgent.substring(Idx+ 5, sAgent.indexOf(".", Idx)));

  // If IE 11 then look for Updated user agent string.
  else if (!!navigator.userAgent.match(/Trident\/7\./)) 
    return 11;

  else
    return 0; //It is not IE
}
    $(document).ready(function () {
        $('.filter_title').on('click', function () {
            $(this).siblings('.filter-row').toggle('fast');
            $(this).find('.fa-chevron-right').toggleClass('chevronOpened');
        });
        $('#mainImage').on('click', function(){
        $.fancybox.open([
            {href: $(this).attr('href')}
        ]);
    });
    $('#city').on('keydown', function(){ 
        var id = $(this).data('id'),
            words = $(this).val();
            action = 'getCity';
             $.post('ajax.php', { action: action,words:words }, function(data) { 
                //var data = JSON.parse(data);
                console.log(data);
	});
    });
    if (GetIEVersion() === 0){
        var $zoom = $('.zoom').magnify();
    }
    $('.thumbnail').on('click',function(){
        var thumb = $(this).data('image'),
            zoom = $(this).data('zoom-image');
        $("#mainImage").attr('href',zoom);
        $("#mainImage img").attr('src',thumb);
        $zoom.destroy();
        $zoom.magnify();
        return false;
        });

    });
</script>
<!-- Yandex.Metrika counter -->
<script type="text/javascript">
    (function (d, w, c) {
        (w[c] = w[c] || []).push(function () {
            try {
                w.yaCounter23248333 = new Ya.Metrika({id:23248333,
                    webvisor:true,
                    clickmap:true,
                    trackLinks:true,
                    accurateTrackBounce:true});
            } catch (e) {
            }
        });

        var n = d.getElementsByTagName("script")[0],
                s = d.createElement("script"),
                f = function () {
                    n.parentNode.insertBefore(s, n);
                };
        s.type = "text/javascript";
        s.async = true;
        s.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//mc.yandex.ru/metrika/watch.js";

        if (w.opera == "[object Opera]") {
            d.addEventListener("DOMContentLoaded", f, false);
        } else {
            f();
        }
    })(document, window, "yandex_metrika_callbacks");
</script>
<noscript>
<div>
    <img src="//mc.yandex.ru/watch/23248333" style="position:absolute; left:-9999px;" alt="" />
</div>
</noscript>
<noindex>
    <!--LiveInternet counter--><script type="text/javascript"><!--
    document.write("<a href='http://www.liveinternet.ru/click' " +
                "target=_blank><img class='liveinternet' src='//counter.yadro.ru/hit?t14.16;r" +
                escape(document.referrer) + ((typeof (screen) == "undefined") ? "" :
                ";s" + screen.width + "*" + screen.height + "*" + (screen.colorDepth ?
                        screen.colorDepth : screen.pixelDepth)) + ";u" + escape(document.URL) +
                ";" + Math.random() +
                "' alt='' title='LiveInternet: показано число просмотров за 24" +
                " часа, посетителей за 24 часа и за сегодня' " +
                "border='0' width='88' height='31'><\/a>")
                //--></script><!--/LiveInternet-->
</noindex>
<script>
                    (function(i, s, o, g, r, a, m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)}, i[r].l = 1 * new Date();
                    a = s.createElement(o),
                            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
                    }
                    )(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

            ga('create', 'UA-58848961-1', 'auto');
            ga('send', 'pageview');

</script>
{/ignore}