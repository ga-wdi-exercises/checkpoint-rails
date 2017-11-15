class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :content, :is_published, {presence: true}
end
