class Shop < ApplicationRecord
 belongs_to :seller, optional: true
 validates :name, :email, :fax, presence: {strict: true}, uniqueness: true, on: :create
 validates :contact1, :name, :address, presence: true 
end
