RSpec.configure do |config|
  config.around(:each, :active_job) do |example|
    default = ActiveJob::Base.queue_adapter
    ActiveJob::Base.queue_adapter = example.metadata[:active_job]
    begin
      example.run
    ensure
      ActiveJob::Base.queue_adapter = default
    end
  end
end
