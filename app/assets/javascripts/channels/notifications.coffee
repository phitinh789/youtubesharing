App.notifications = App.cable.subscriptions.create "NotificationsChannel",
  connected: ->
    console.log('connected')

  disconnected: ->
    console.log('disconnected')

  received: (data) ->
    alert(data)
