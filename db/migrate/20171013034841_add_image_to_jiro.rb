class AddImageToJiro < ActiveRecord::Migration
  def change
    add_column :jiros, :image, :string
  end
end