class CreateWideos < ActiveRecord::Migration
  def change
    create_table :wideos do |t|
      t.string :link
      t.string :title
      t.string :author
      t.string :duration
      t.integer :likes
      t.integer :dislikes

      t.timestamps
    end
  end
end
