require "sinatra/base"
require "sidekiq"
require_relative "workers/sample_worker"

Sidekiq.configure_client do |config|
  config.redis = { url: ENV.fetch("REDIS_URL", "redis://localhost:6379/0") }
end

class App < Sinatra::Base
  get "/" do
    content_type :json
    { status: "ok", message: "Sidekiq job processor running" }.to_json
  end

  get "/job" do
    SampleWorker.perform_async("hello", Time.now.to_i)
    content_type :json
    { status: "queued" }.to_json
  end
end
