class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.references :photographer, null: false, foreign_key: true
      t.integer :width
      t.integer :height
      t.string :url
      t.string :download_url

      t.timestamps
    end
  end
end
