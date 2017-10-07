class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :user
      t.references :jiro
      t.text :content

      t.timestamps null: false
    end
  end
end
