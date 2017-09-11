# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all
Comment.destroy_all


post_001 = Post.create({
  content: "Hello, I am the first post.",
  is_published: true
  })



post_002 = Post.create({
    content: "Good morning, I am the second post.",
    is_published: true
  })
