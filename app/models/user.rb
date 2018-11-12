class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  mount_uploader :profile_pic, ImageUploader

  def name
    "#{self.first_name} #{self.last_name}"
  end       


end
