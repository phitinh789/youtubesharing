App.notifications = App.cable.subscriptions.create "NotificationsChannel",
  connected: ->
    console.log('connected')

  disconnected: ->
    console.log('disconnected')

  received: (data) ->
    $('#notificationModal .modal-body').html(data);
    $('#notificationModal').addClass('popup-show');
    setTimeout ->
      $('#notificationModal').removeClass('popup-show')
    , 20000
