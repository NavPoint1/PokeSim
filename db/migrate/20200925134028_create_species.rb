class CreateSpecies < ActiveRecord::Migration[6.0]
  def change
    create_table :species do |t|
      t.string :name
      t.integer :area_id
      t.integer :element_id
      t.integer :capture_rate
      t.integer :flee_rate
      t.integer :rarity
      t.string :image_url

      t.timestamps
    end
  end
end
