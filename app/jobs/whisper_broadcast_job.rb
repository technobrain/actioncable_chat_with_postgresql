class WhisperBroadcastJob < ApplicationJob
  queue_as :default

  def perform(whisper)
    ActionCable.server.broadcast 'tb_channel', whisper: render_whisper(whisper)
  end

  private

  def render_whisper(whisper)
    ApplicationController.renderer.render(partial: 'whispers/whisper', locals: { whisper: whisper })
  end
end
