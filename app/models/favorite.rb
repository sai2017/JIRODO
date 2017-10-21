class Favorite < ActiveRecord::Base
  validates :user_id, :uniqueness => {:scope => :jiro_id} #同じユーザーが同じイベントをブックマークできないようにする。
  belongs_to :user
  belongs_to :jiro, counter_cache: :favorites_count
end
