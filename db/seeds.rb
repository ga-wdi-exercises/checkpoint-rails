# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.destroy_all
Comment.destroy_all

# song_data = get_song_data()
# artist_data = get_artist_data()


post1 = Post.create(content: "blah blha", is_published: "true", comment_id: 1)
post2 = Post.create(content: "blah blsfdjgsdfgiha", is_published: "true", comment_id: 1)
comment0 = Comment.create(body: "this is no good", post_id: 1)
