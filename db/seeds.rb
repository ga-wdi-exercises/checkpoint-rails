# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comment.destroy_all
Post.destroy_all

posts = Post.create([
  {content: "Test post one", is_published: true},
  {content: "Test post two", is_published: true}
  ])

comments = Comment.create([
  {body: "Test comment one"}
  ])
