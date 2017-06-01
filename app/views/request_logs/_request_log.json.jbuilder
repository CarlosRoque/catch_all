json.extract! request_log, :id, :raw, :source, :created_at, :updated_at
json.url request_log_url(request_log, format: :json)
