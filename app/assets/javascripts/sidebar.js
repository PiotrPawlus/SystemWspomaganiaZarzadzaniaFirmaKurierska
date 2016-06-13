$(document).ready(function() {
    $('#open-sidebar').click(function(event) {
        $('#background-black').removeClass('background-black-disactive').addClass('background-black-active');
        $('#sidebar').removeClass('sidebar-close').addClass('sidebar-open');
        $('body').css('overflow', 'hidden');
    });
    $('#close-sidebar').click(function(event) {
        $('#background-black').removeClass('background-black-active').addClass('background-black-disactive');
        $('#sidebar').removeClass('sidebar-open').addClass('sidebar-close');
        $('body').css('overflow', 'visible');
    });
});