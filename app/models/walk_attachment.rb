class WalkAttachment < ApplicationRecord
  belongs_to :walk
   mount_uploader :photo, PhotoUploader

end
