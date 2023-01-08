# frozen_string_literal: true

require_relative '../../init'
require 'aws-sdk-sqs'

module SteamBuddy
  # Scheduled worker to report on recent cloning operations
  class FetchPlayerWorker
    def initialize
      @config = FetchPlayerWorker.config
      @queue = SteamBuddy::Messaging::Queue.new(
        @config.UPDATE_QUEUE_URL, @config
      )
    end

    def call
      # remote_id = '76561198012078200'
      message = 'update db'
      @queue.send(message)
      puts 'Database already updated!'
    end
  end
end
