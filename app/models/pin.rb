class Pin < ApplicationRecord
  belongs_to :user
  validates :title, :description, :picture, presence: true

  mount_uploader :picture, PinPictureUploader
end
