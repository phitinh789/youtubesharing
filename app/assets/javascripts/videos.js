$(document).ready(function() {
  $('.share-video').click(function(e) {
      e.preventDefault();
      $.ajax({
        type: "POST",
        url: "/videos.js",
        data: $("form").serialize(),
      }).success(function(response) {
        // $('.error').text(response.message)
      });
  });
});
