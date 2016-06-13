// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require 'bootstrap'
//= require 'material'
//= require 'ripples'
//= require_tree .

$(document).ready(function() {
    $('.open').click(function(event) {
        $('.sidebar').css({
            width: '320px'
        });
        $('.sidebar-hide').addClass('sidebar-open');
        $('.sidebar-hide').removeClass('sidebar-hide');
        $('.content-main').css({
            'padding-left': '320px'
        });
    });

    $('.hidesidebar').click(function(event) {
        $('.sidebar').css({
            width: '65px'
        });
        $('.sidebar-open').addClass('sidebar-hide');
        $('.sidebar-open').removeClass('sidebar-open');
        $('.content-main').css({
            'padding-left': '65px'
        });
    });
    $.material.init();

    if (navigator.userAgent.toLowerCase().indexOf("chrome") >= 0) {
        $(window).load(function(){
            $('input:-webkit-autofill').each(function(){
                var text = $(this).val();
                var name = $(this).attr('name');
                $(this).after(this.outerHTML).remove();
                $('input[name=' + name + ']').val(text);
            });
        });
    }

});