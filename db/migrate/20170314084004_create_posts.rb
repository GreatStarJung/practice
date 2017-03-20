class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|

      t.string :model_id
      t.string :post_title
      t.string :post_content

      t.timestamps
    end
  end
end
