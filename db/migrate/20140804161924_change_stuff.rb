class ChangeStuff < ActiveRecord::Migration
  def change
    remove_column :swimmers, :name, :string
    add_column :swimmers, :first_name, :string
    add_column :swimmers, :last_name, :string
  end
end
