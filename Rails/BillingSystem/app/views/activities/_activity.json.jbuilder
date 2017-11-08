json.extract! activity, :id, :description, :date, :start_time, :end_time, :note, :created_at, :updated_at
json.url activity_url(activity, format: :json)
