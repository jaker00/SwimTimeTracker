class ChangeIdsToIntegers < ActiveRecord::Migration
  def change
    remove_column :swim_times, :swimmer_id, :integer
    add_column :swim_times, :attendance_id, :integer
  end
end
