class Whisper < ApplicationRecord
  # after_create_commit { WhisperBroadcastJob.perform_later self }
end
