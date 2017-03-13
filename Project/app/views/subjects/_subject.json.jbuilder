json.extract! subject, :id, :category_id, :subject_name, :created_at, :updated_at
json.url subject_url(subject, format: :json)