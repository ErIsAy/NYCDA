class CreatePostsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
  		t.string :image
  		t.string :title
      t.string :body
      t.belongs_to :user, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
