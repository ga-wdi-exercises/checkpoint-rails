# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Post.destroy_all
Comment.destroy_all
post1 = Post.create({
  content: "rails",
  is_published: true

})

post2 = Post.create({
  content: "java",
  is_published: true

})

post1.comments.create({
  body: "companies using rails"

})

post2.comments.create({
  body: "Easy to use"
  })
