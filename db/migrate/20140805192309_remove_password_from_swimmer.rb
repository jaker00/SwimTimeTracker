class RemovePasswordFromSwimmer < ActiveRecord::Migration
  def change
    remove_column :swimmers, :password, :string
  end
end
