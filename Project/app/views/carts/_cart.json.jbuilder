json.extract! cart, :id, :note_id, :book_id, :created_at, :updated_at
json.url cart_url(cart, format: :json)