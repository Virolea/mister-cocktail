# encoding: utf-8

class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  process eager: true

  version :cocktail do
    resize_to_fit 300, 100
  end
end
