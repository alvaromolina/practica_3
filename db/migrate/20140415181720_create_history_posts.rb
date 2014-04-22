class CreateHistoryPosts < ActiveRecord::Migration
  def change
    create_table :history_posts do |t|
      t.references :post, index: true
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
