require "sidekiq"

class SampleWorker
  include Sidekiq::Job

  def perform(name, timestamp)
    puts "Processing job: #{name} at #{timestamp}"
  end
end
