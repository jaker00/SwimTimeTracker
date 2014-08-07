class MakeLengthToInteger < ActiveRecord::Migration
  def change
    remove_column :meet_events, :length, :string
    add_column :meet_events, :length, :integer
  end
end
