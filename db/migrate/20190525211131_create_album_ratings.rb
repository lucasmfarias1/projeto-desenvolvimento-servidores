class CreateAlbumRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :album_ratings do |t|
      t.integer :nota
      t.references :user, foreign_key: true
      t.references :album, foreign_key: true

      t.timestamps
    end
  end
end
