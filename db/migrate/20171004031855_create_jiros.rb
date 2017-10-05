class CreateJiros < ActiveRecord::Migration
  def change
    create_table :jiros do |t|
      t.string   "shop_name"
      t.text     "content"
      t.string   "shop_address"
      t.string   "telephone_number"
      t.text     "nearest_station"
      t.text     "hours"
      t.string   "holiday"
      t.text     "menu"
      t.text     "note"

      t.timestamps null: false
    end
  end
end
