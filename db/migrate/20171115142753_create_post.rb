class CreatePost < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
    t.string :content
    t.string :is_published :true
    end
  end
end
