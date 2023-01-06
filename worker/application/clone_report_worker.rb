# frozen_string_literal: true

require_relative '../../init'
require 'aws-sdk-sqs'

module SteamBuddy
  # Scheduled worker to report on recent cloning operations
  class CloneReportWorker
    def initialize
      @config = CloneReportWorker.config
      @queue = SteamBuddy::Messaging::Queue.new(
        @config.CLONE_QUEUE_URL, @config
      )
    end

    def call
      remote_id = '76561198012078200'
      @queue.send(remote_id.to_json)
      puts 'Bamboo mouse already updated!'
    end
  end
end
