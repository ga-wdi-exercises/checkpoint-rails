Post.destroy_all
Comment.destroy_all

post_one = Post.create(
  content: "Hello world this is my first blog post.",
  is_published: true
)

post_two = Post.create(
  content: "Second blog post lsdkflksad",
  is_published: true
)

Comment.create(
  body: "lol",
  post_id: post_one.id
)

Comment.create(
  body: "hahahahaha",
  post_id: post_two.id
)
