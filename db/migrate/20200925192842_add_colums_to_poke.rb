class AddColumsToPoke < ActiveRecord::Migration[6.0]
  def change
    add_column :pokes, :species_id, :integer
    add_column :pokes, :trainer_id, :integer
    add_column :pokes, :in_party, :boolean
  end
end
