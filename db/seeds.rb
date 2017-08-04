# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Comment.destroy_all
Post.destroy_all



x1=Post.create!(content: "hi there", is_published: true)
x2=Post.create!(content: "hello world", is_published: true)


y2 = Comment.create!(body: "how are you ", post: x1)
y2 = Comment.create!(body: "how are you ", post: x2)
