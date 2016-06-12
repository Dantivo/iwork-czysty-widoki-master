class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :tytul
      t.text :tresc
      t.datetime :data

      t.timestamps null: false
    end
  end
end
