class Travelresort < ApplicationRecord
  validates_presence_of :name,:address

  mount_uploader :image, ImageUploader

end
