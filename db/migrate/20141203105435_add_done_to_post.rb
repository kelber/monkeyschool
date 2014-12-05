class AddDoneToPost < ActiveRecord::Migration
  def change
    add_column :posts, :done, :boolean
  end
end
