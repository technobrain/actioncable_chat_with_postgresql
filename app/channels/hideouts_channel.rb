# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class HideoutsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "tb_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def chat(data)
    # ActionCable.server.broadcast "tb_channel", whisper: data['whisper']
    # Whisper.create content: data['whisper']
    WhisperBroadcastJob.perform_later data['whisper']
  end
end
