class Pin < ApplicationRecord
  belongs_to :user

  mount_uploader :picture, PinPictureUploader
end
