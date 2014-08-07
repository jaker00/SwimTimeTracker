class AddMetersToEvents < ActiveRecord::Migration
  def change
    add_column :meet_events, :lengthtype, :string
  end
end
