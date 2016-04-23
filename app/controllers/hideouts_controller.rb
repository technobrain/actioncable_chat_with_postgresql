class HideoutsController < ApplicationController
  def show
    @whispers = Whisper.all
  end
end
