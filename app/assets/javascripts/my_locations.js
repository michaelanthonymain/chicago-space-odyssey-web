$(document).ready(function(event) {

    $(".list-item").click(function(event) {
        $(event.currentTarget).siblings().removeClass('highlighter')
        $(event.currentTarget).siblings().addClass('background')
        $(event.currentTarget).removeClass('background')
        $(event.currentTarget).addClass('highlighter')
        var planetId = $(event.currentTarget).attr('planet-id')
        $.get('systems/show/'+ planetId, planetId, function(response) {
          console.log(response)
        });
    });

});
