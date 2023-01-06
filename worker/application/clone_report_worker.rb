# frozen_string_literal: true

require_relative '../../init'
require 'aws-sdk-sqs'

module SteamBuddy
  # Scheduled worker to report on recent cloning operations
  class CloneReportWorker
    def initialize
      @config = CloneReportWorker.config
      # @queue = SteamBuddy::Messaging::Queue.new(
      #  @config.REPORT_QUEUE_URL, @config
      # )
    end

    def call
      puts 'abc'
    end
  end
end
