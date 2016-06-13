class CreateVacationSpots < ActiveRecord::Migration[5.0]
  def change
    create_table :vacation_spots do |t|
      t.string :name

      t.timestamps
    end
  end
end
