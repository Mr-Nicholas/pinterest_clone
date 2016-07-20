class PinPictureUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  process :convert => 'jpg'
  process :tags => ['pin_picture']

  version :standard do
    process :eager => true
    process :resize_to_fill => [300, 300, :north]
  end

  version :small do
    eager
    resize_to_fit(150, 150)
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

  def content_type_blacklist
    ['application/text', 'application/json']
  end

  # def public_id
  #   return model.short_name
  # end

end
