class Review < ActiveRecord::Base
  validates :title, presence: true
  validates :content, presence: true
  belongs_to :user
  belongs_to :jiro
  has_many :comments, dependent: :destroy
  mount_uploader :image, ImageUploader
end
