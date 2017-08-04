# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.destroy_all
Comment.destroy_all

posts = Post.create([
  {is_published:true, content: "is simply dummy text of
     the printing and typesetting industry. Lorem Ipsum has been the industry's
     standard dummy text ever since the , when an unknown printer took a galley
     of type and scrambled it to make a type specimen book. It has survived not only five
      centuries, but also the leap into electronic typesetting, remaining essentially unchanged"},
  {is_published:true, content:"It is a long established fact that a reader  of
    a page when looking at its layout. The point of using orem psum is that it has a more or less normal distribution
    of letters, as opposed to using Content here content here making it look like readable English"}])

     comments = Comment.create([
  {body:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", post: posts[0]},
  {body:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", post: posts[1]}
])
