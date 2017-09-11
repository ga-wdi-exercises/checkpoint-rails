class CreatePosts < ActiveRecord::Migration[5.1]
  has_many :comments
  def change
    create_table :posts do |t|
      t.string :content
      t.boolean :is_published

      t.timestamps
    end
  end
end
