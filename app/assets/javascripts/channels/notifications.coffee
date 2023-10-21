App.notifications = App.cable.subscriptions.create "NotificationsChannel",
  connected: ->
    console.log('connected')

  disconnected: ->
    console.log('disconnected')

  received: (data) ->
    $('#notificationModal .modal-body #title-video').html(data.info.video_title);
    $('#notificationModal .modal-body #email-who-share').html(data.info.email);
    $('#notificationModal .btn-check-it-out a').attr('href', data.info.video_detail_path);
    $('#notificationModal').addClass('popup-show');
    setTimeout ->
      $('#notificationModal').removeClass('popup-show')
    , 20000
