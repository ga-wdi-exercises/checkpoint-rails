class CreateComments < ActiveRecord::Migration[5.1]
  belongs_to :posts
  def change
    create_table :comments do |t|
      t.string :body

      t.timestamps
    end
  end
end
