class CreatePhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :photos do |t|
      t.string :url
      t.string :caption
      t.string :location

      t.timestamps
    end
  end
end
