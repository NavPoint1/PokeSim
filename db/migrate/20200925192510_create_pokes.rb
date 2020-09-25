class CreatePokes < ActiveRecord::Migration[6.0]
  def change
    create_table :pokes do |t|

      t.timestamps
    end
  end
end
