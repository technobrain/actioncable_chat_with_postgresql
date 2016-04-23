App.hideouts = App.cable.subscriptions.create "HideoutsChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    alert data['whisper']
    $('#whispers').append data['whisper']

  chat: (whisper) ->
    @perform 'chat', whisper: whisper

$(document).on 'keypress', '[data-behavior=hideout_chatter]', (event) ->
  if event.keyCode == 13 # enter key
    App.hideouts.chat event.target.value
    event.target.value = ''
    event.preventDefault()
