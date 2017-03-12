json.extract! note, :id, :user_id, :name, :category_id, :subject_id, :created_at, :updated_at
json.url note_url(note, format: :json)