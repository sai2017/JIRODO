class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :jiro
  has_many :comments, dependent: :destroy
end
