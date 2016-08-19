json.extract! job, :id, :title, :location, :blurb, :pay, :time, :description, :created_at, :updated_at
json.url job_url(job, format: :json)