class CreatePostComents < ActiveRecord::Migration[6.1]
  def change
    create_table :post_coments do |t|
      t.text :comment
      t.integer :user_id
      t.string :post_image_integer

      t.timestamps
    end
  end
end
