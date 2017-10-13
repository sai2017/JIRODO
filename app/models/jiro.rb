class Jiro < ActiveRecord::Base
  belongs_to :user
  has_many :reviews, dependent: :destroy
  mount_uploader :image, ImageUploader
end
