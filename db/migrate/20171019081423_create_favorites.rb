class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.references :user, null:false #外部キー
      t.references :jiro, null:false #外部キー
      t.timestamps null: false
    end

    add_index :favorites, :user_id #インデックス
    add_index :favorites, :jiro_id #インデックス
  end
end
