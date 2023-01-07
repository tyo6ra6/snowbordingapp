class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string  :ski_resort_name,    null: false
      t.integer :area_id,            null: false
      t.integer :prefecture_id,      null: false
      t.integer :weather_id,         null: false
      t.text    :thoughts
      t.references :user,              null: false, foreign_key: true


      t.timestamps
    end
  end
end
