$(document).ready(function(){
    $("h3").click(function(){
        $("#roster").slideDown("slow");
    });

    $("h4").click (function(){
    	$(".moveset").slideDown("slow");
    });


    $("h1").mouseenter(function(){
        $(this).animate({left: '250px'});
    });
});
