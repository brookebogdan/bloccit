require 'random_data'

5.times do
  User.create!(
# #3
  name:     RandomData.random_name,
  email:    RandomData.random_email,
  password: RandomData.random_sentence
  )
end
users = User.all

15.times do
  Topic.create!(
    name:         RandomData.random_sentence,
    description:  RandomData.random_paragraph
  )
end
topics = Topic.all

# Create Posts
50.times do
# #1
Post.create!(
  user:   users.sample,
  topic:  Topic.all.sample, 
  title:  RandomData.random_sentence,
  body:   RandomData.random_paragraph
)
end
posts = Post.all

# Create Comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

50.times do
  SponsoredPost.create!(
    topic: topics.sample,
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph,
    price: RandomData.random_integer
  )
end
sponsored_posts = SponsoredPost.all


# 50.times do
#   Advertisement.create!(
#     title: RandomData.random_sentence,
#     copy: RandomData.random_paragraph,
#     price: RandomData.random_integer
#   )
# end

user = User.first
user.update_attributes!(
  email: 'brkabogdan@gmail.com',
  password: 'helloworld'
)

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{SponsoredPost.count} sponsored posts created"
# puts "#{Advertisement.count} advertisements created"
