class UserWalk < ApplicationRecord
  belongs_to :user
  belongs_to :walk
  validates :user_id, uniqueness: { scope: :walk_id }
end
