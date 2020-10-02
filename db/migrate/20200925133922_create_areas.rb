class CreateAreas < ActiveRecord::Migration[6.0]
  def change
    create_table :areas do |t|
      t.string :name
      t.string :image_url
      t.integer :encounter_rate

      t.timestamps
    end
  end
end
