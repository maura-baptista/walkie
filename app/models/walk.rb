class Walk < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_many :points, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :user_walks
  has_many :users, through: :user_walks
  has_many :walk_attachments
  accepts_nested_attributes_for :walk_attachments
  # has_many :photos, through: :walk_attachmens


  def participants
    users
  end

  def photos
    WalkAttachment.where(walk: self)
  end

  def find_like_by_user(user)
    likes.find { |like| like.user == user }
  end

  # validates :name, presence: true
  # validates :category, presence: true
  # validates :location, presence: true
  # validates :duration, presence: true
  # validates :description, presence: true
  # validates :photo, presence: true

  scope :seaside, -> { joins(:category).where(categories: {name: "Seaside Walks"})}
  scope :green_walks, -> { joins(:category).where(categories: {name: "green_walks"}) }

end
