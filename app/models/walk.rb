class Walk < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :points_of_interest
  has_many :reviews
  has_many :likes
  has_many :user_walks
  has_many :users, through: :user_walks

  # validates :name, presence: true
  # validates :category, presence: true
  # validates :location, presence: true
  # validates :duration, presence: true
  # validates :description, presence: true
  # validates :photo, presence: true

  scope :seaside, -> { joins(:category).where(categories: {name: "Seaside Walks"})}
  scope :green_walks, -> { joins(:category).where(categories: {name: "green_walks"}) }


end
