class CreatePins < ActiveRecord::Migration[7.0]
  def change
    create_table :pins do |t|
      t.integer    :order_of_pins, null: false
      t.integer    :latitude,      null: false
      t.integer    :longitude,     null: false
      t.text       :comment
      t.references :toko_log,      null: false, foreign_key: true
      t.timestamps
    end
  end
end