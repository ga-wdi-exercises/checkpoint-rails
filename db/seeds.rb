Post.destroy_all
Comment.destroy_all

posts = Post.create(
  content: "Hello world this is my first blog post.",
  is_published: true
)

Comment.create(
  body: "lol",
  post_id: posts.id
)
