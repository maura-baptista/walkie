class User < ApplicationRecord
  has_many :likes
  has_many :user_walks
  has_many :walks, through: :user_walks
  has_many :completed_walks



  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true

  def participated
    UserWalk.where(user: self)
  end

  def walks_created
    Walk.where(user: self)
  end

  def walks_liked
    Like.where(user: self)
  end
end
