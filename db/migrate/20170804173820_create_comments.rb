class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
    t.string :body
    t.references :post, index: true, foreign_key: true
    end
  end
end
