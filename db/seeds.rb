# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'active_record'
require 'pg'

require_relative '../models/post'

Post.create(content: "I haven't had breakfast today!", is_published: true)
Post.create(content: "I am on time!", is_published: true)
