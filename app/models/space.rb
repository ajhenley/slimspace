class Space < ActiveRecord::Base
  
  mount_uploader :image, ImageUploader
  
  has_many :users, through: :bookings
  has_many :bookings
end
