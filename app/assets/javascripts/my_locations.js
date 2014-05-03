$(document).ready(function(event) {

    $(".list-item").click(function(event) {
        var planetId = $(event.currentTarget).attr('planet-id')
        $.get('systems/show/'+ planetId, planetId, function(response) {
          console.log(response)
        });
    });

});
