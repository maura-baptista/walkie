class WalkAttachment < ApplicationRecord
  belongs_to :walk
  validates :photo, presence: true
end
