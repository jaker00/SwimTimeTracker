class CreateMeetEvents < ActiveRecord::Migration
  def change
    create_table :meet_events do |t|
      t.string :length
      t.string :stroke
      t.string :meet_id

      t.timestamps
    end
  end
end
