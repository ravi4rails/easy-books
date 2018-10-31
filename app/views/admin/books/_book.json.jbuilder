json.extract! book, :id, :name, :price, :detail, :front_cover_image, :back_cover_image, :book_category_id, :created_at, :updated_at
json.url book_url(book, format: :json)
