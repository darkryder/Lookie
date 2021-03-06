class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :commenter
      t.text :body
      t.references :image, index: true

      t.timestamps
    end
  end
end
