class AvatarUploader < CarrierWave::Uploader::Base
  storage :file

  include CarrierWave::MiniMagick

  if Rails.env.production?
    storage :fog
  else
    storage :file
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def default_url
    "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  end

  # version :thumb do
  #   process :resize_to_fit => [300, 300]
  # end
end
