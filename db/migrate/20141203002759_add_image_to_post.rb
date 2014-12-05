class AddImageToPost < ActiveRecord::Migration
  def change
  	add_column :posts, :image_uid,  :string
    add_column :posts, :image_name, :string
  end
end
