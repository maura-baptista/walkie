class WalkAttachment < ApplicationRecord
  belongs_to :walk
  validates :photo, presence: true

  mount_uploader :photo, PhotoUploader
end
