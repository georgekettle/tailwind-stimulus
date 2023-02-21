class CreatePins < ActiveRecord::Migration[7.0]
  def change
    create_table :pins do |t|
      t.references :board, null: false, foreign_key: true
      t.references :photo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
