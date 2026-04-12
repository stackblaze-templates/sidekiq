# Sidekiq

Ruby background job processor with Redis and Sinatra API.

## Local Development

```bash
docker compose up
```

- API: `http://localhost:9292`
- Trigger a job: `GET /job`

## Adding Workers

Define workers in `workers/`. See `workers/sample_worker.rb` for an example.

## Deploy on StackBlaze

This template includes a `stackblaze.yaml` for deployment.
