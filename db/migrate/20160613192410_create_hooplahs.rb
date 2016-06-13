class CreateHooplahs < ActiveRecord::Migration[5.0]
  def change
    create_table :hooplahs do |t|
      t.integer :vacation_spot_id
      t.string :description

      t.timestamps
    end
  end
end
