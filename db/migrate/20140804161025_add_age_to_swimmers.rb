class AddAgeToSwimmers < ActiveRecord::Migration
  def change
    add_column :swimmers, :age, :integer
  end
end
