// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function () {
    
    $(".show-more a").each(function () {
        var $link = $(this);
        var $content = $link.parent().prev("div.content-text");

        console.log($link);

        var visibleHeight = $content[0].clientHeight;
        var actualHide = $content[0].scrollHeight - 1;

        console.log(actualHide);
        console.log(visibleHeight);

        if (actualHide > visibleHeight) {
            $link.show();
        } else {
            $link.hide();
        }
    });

    $(".show-more a").on("click", function () {
        var $this = $(this);
        var $content = $this.parent().prev("div.content-text");
        var linkText = $this.text().toUpperCase();

        if (linkText === "POKAŻ WIĘCEJ") {
            linkText = "Pokaż mniej";
            $content.switchClass("hideContent", "showContent", 400);
        } else {
            linkText = "Pokaż więcej";
            $content.switchClass("showContent", "hideContent", 400);
        };

        $this.text(linkText);
    });

});