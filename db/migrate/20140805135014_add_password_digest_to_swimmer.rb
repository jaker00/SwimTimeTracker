class AddPasswordDigestToSwimmer < ActiveRecord::Migration
  def change
    add_column :swimmers, :password_digest, :string
  end
end
