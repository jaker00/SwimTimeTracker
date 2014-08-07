class CreateSwimTimes < ActiveRecord::Migration
  def change
    create_table :swim_times do |t|
      t.string :time
      t.string :meet_event_id
      t.string :swimmer_id

      t.timestamps
    end
  end
end
