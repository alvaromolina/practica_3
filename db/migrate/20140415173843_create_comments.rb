class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :post
      t.text :text
      t.string :cualquier_cosa

      t.timestamps
    end
  end
end
