class Jiro < ActiveRecord::Base
  belongs_to :user
  has_many :reviews, dependent: :destroy
  mount_uploader :image, ImageUploader
  has_many :users, through: :favorites
  has_many :favorites, dependent: :destroy

  def favorite_user(user_id)
   favorites.find_by(user_id: user_id)
  end
  has_many :favorite_users, through: :favorites, source: :user

  geocoded_by :shop_address
  after_validation :geocode, if: :shop_address_changed?
end
