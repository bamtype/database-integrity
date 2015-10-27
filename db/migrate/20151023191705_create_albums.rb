class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.string :description
      t.string :tracks
      t.string :rating

      t.timestamps null: false
    end
  end
end
