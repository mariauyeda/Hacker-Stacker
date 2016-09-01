$(document).ready(function() {
  $('form').on("click", "#up-vote", function( event ){
    event.preventDefault();
    // console.log("Eventlistener is working");

    // create an ajax request

    var voteURL = $(this).parent().attr("action");

    // console.log(voteURL);

    $.ajax ({
      method: "POST",
      url: voteURL
    })
      .done(function(response) {
        console.log(response);

        $('#vote-value').html('Votes: ' + response);
        // $('#' + response. + ' .points').text(response.votes);

      });
  });
});

