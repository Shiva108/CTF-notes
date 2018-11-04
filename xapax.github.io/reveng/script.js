$( document ).ready(function(){
    $('.solution').hide();
    $('.insert_random').hide();
    $(".button").click(function() {
        var nameParameter = this.name;
        console.log(nameParameter);
        $('.solution[name= ' + nameParameter + ']').toggle();
    });

    $(".random").click(function() {
        $(".insert_random").empty();
        $('.insert_random').fadeOut();
        $('.insert_random').fadeIn();

        var number = $(".exercise_section").length
        var randomNumber = Math.floor(Math.random() * number) + 1;
        randomExercise = ".example" + randomNumber;
        $(randomExercise).clone(true, true).appendTo(".insert_random");

        // Remove header
        $(".insert_random").children(".exercise_section").children("h2").remove();

        // Add header text
        $('.insert_random').children(".exercise_section").prepend("<h2>Random code-snippet</h2>");

        // Change the attributes for the button and solution so that the button works as expected.
        $(".insert_random").children(".exercise_section").children(".solution").attr("name", "randomCode");
        $(".insert_random").children(".exercise_section").children(".button").attr("name", "randomCode");
    });
});
