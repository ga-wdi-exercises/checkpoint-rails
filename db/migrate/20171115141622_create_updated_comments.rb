class CreateUpdatedComments < ActiveRecord::Migration[5.1]
  def change
    create_table :updated_comments do |t|
      t.string :body
      t.references :post, index: true, foreign_key: true 
    end
  end
end
