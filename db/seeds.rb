# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require_relative './create_posts.rb'
# require_relative './create_comments.rb'

Post.destroy_all

post1 = Post.create(content:"lorem", is_published: true)
post2 = Post.create(content:"lorem", is_published: true)
