class PhotoUploader < CarrierWave::Uploader::Base
    include Cloudinary::CarrierWave

    def cache_dir
      "#{Rails.root}/tmp/uploads"
    end
  # Remove everything else
end
