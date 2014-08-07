class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.string :meet_id
      t.string :swimmer_id

      t.timestamps
    end
  end
end
