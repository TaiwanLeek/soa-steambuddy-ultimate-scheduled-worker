# frozen_string_literal: true

require 'figaro'

module SteamBuddy
  # Setup config environment
  class FetchPlayerWorker
    # Environment variables setup
    Figaro.application = Figaro::Application.new(
      environment: ENV['WORKER_ENV'] || 'development',
      path: File.expand_path('config/secrets.yml')
    )
    Figaro.load
    def self.config = Figaro.env
  end
end
