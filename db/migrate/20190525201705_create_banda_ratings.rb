class CreateBandaRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :banda_ratings do |t|
      t.integer :nota
      t.references :banda, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
