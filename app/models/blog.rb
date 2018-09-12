class Blog < ApplicationRecord
  validates :content, length:{ in: 1..140}
  validates :image, presence: true
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
  belongs_to :user, optional: true
  mount_uploader :image, ImageUploader
  #そのユーザーが既にツイートにいいねしているかどうか
  def favorite_user(user_id)
    favorites.find_by(user_id: user_id)
  end
end
