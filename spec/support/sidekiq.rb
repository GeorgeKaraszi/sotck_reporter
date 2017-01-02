# frozen_string_literal: true
require 'sidekiq/testing'

RSpec.configure do |config|
  Sidekiq::Testing.inline!

  config.around(:each, sidekiq: :inline) do |example|
    Sidekiq::Testing.inline! do
      example.run
    end
  end

  config.around(:each, sidekiq: :queue) do |example|
    Sidekiq::Testing.fake! do
      example.run
    end
  end

  config.around(:each, sidekiq: :process) do |example|
    Sidekiq::Testing.disable! do
      example.run
    end
  end
end
