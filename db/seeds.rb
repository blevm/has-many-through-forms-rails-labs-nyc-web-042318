# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

post1 = Post.create(title: "Feeling Groovy", content: "I'm feeling so groovy")
cool = post1.categories.build(name: "Cool")
post1.save

category1 = Category.create(name: "Cool")
post2 = Post.create(title: "So Awesome", content: "Man am I a great blogger OR WHAT!")
user1 = User.create(username: 'RealBigFish')

post3 = Post.create(title: 'Feeling Awesome', content: 'This is going to be an awesome post!')

user2 = User.create(username: 'CoolGuy5')
comment1 = post3.comments.build(content: "Great Post!", user: user2)
post3.save

post2.categories << category1
comment2 = Comment.create(content: "This was great!", user: user1, post: post1)
