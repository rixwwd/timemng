json.extract! activity_log, :id, :activity, :started_at, :ended_at, :created_at, :updated_at
json.url activity_log_url(activity_log, format: :json)
