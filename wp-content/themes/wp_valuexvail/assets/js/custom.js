(function($){

    $(document).ready(function(){

        function rd_navbar_init(){

            var rdNavbar = $(".rd-navbar");
            if (rdNavbar.length) {
              rdNavbar.RDNavbar({
                stickUpClone: (rdNavbar.attr("data-stick-up-clone")) ? rdNavbar.attr("data-stick-up-clone") === 'true' : false
                //stickUpClone: true
              });
              if (rdNavbar.attr("data-body-class")) {
                document.body.className += ' ' + rdNavbar.attr("data-body-class");
              }
            }

            var rdSearchToggle = $('.rd-navbar-search-toggle');
            if ( rdSearchToggle.length ) {

                rdSearchToggle.on('click', function () {
                    if( $(this).hasClass('active') )
                        document.getElementById('rd-navbar-search-form-input').focus();
                });
            }
        }
        rd_navbar_init();
        
    });
  
})(jQuery);
