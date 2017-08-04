# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.destroy_all
Comment.destroy_all

post1 = Post.create(content: "A LOVE-TALE OF EAST INDIA

HERE was once a prince,-
' Nala by name, brave, hand-
Bome , and endowed with
all the good qaalities
that a prince oaght to
have. He could manage
horses with sach skill, that for no one
else in all the world woald they go so
switlly; and those who heralded his
praises said that Nala stood at the head
of princes, as Indra, at the head of the
gods, and that he was like the Sun-god
in his splendor. Good, too, as he was
handsome, he honored the gods and
ever spoke the truth. Fond of study,
he knew all the songs and hymns of the
Vedas, which the Aryans, his ancestors,
for ages had composed and sung to
their gods. All men and women loved", is_published: true)

post2 = Post.create(content: "Post 2", is_published: true)
