class Like < ApplicationRecord
  belongs_to :walk
  belongs_to :user
  validates :walk_id, uniqueness: {scope: :user_id}
end
