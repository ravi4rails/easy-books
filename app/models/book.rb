class Book < ApplicationRecord
  belongs_to :book_category, optional: true
  mount_uploader :front_cover_image, ImageUploader
  mount_uploader :back_cover_image, ImageUploader
  validates :name, presence: true, uniqueness: true
  validates :price, :detail, :front_cover_image, :back_cover_image, :book_category_id, presence: true 
end
