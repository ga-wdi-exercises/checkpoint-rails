class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :content
      t.boolean :is_published, :default => true
    end
  end
end
