json.extract! book, :id, :name, :author, :publisher, :category_id, :subject_id, :price, :user_id, :description, :created_at, :updated_at
json.url book_url(book, format: :json)