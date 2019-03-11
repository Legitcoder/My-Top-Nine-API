class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.string :name
      t.string :image_url
      t.integer :position
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
