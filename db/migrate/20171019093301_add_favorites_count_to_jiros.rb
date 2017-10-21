class AddFavoritesCountToJiros < ActiveRecord::Migration
  def change
    add_column :jiros, :favorites_count, :integer
  end
end
