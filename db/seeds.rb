# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require_relative '../app/models/post'


Post.create(content: "Here's me venting to the world", is_published: true)
Post.create(content: "What is the meaning of life, my second post", is_published: true)
