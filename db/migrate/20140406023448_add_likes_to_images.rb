class AddLikesToImages < ActiveRecord::Migration
  def change
    add_column :images, :likes, :integer
    add_column :images, :likedby, :string
  end
end
