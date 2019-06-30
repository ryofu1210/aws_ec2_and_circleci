class CreatePost < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :name, null: false
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
