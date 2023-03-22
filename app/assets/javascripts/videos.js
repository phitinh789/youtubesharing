// $(document).ready(function() {
//   $(".share-video").click(function (event) {
//     event.preventDefault();
//     alert("Hello!");
//   });
// });

$(document).ready(function() {
  $('.share-video').click(function(e) {
      e.preventDefault();
      url = $("#video_url").val()
      $.ajax({
        type: "POST",
        url: "/videos",
        data: $("form").serialize(),
      }).done(function(response) {
          alert(response.message)
      });
  });
});
